
#include <algorithm>
#include <iostream>
#include <stdlib.h>
#include <string>
#include <sstream>
#include <math.h>

#include <thrust/copy.h>
#include <thrust/device_vector.h>

#include "match.h"
#include "Logger.h"
#include "Timing.h"
#include "genie_errors.h"
#include "DeviceCompositeCodec.h"
#include "DeviceBitPackingCodec.h"
#include "DeviceVarintCodec.h"

#include "match_integrated.h"

const size_t MATCH_THREADS_PER_BLOCK = 256;

const size_t DECOMPR_BLOCKS = 1;
const size_t DECOMPR_THREADS_PER_BLOCK = 256;
const size_t DECOMPR_BATCH = DECOMPR_BLOCKS * DECOMPR_THREADS_PER_BLOCK;

#define OFFSETS_TABLE_16 {0u,       3949349u, 8984219u, 9805709u,\
                          7732727u, 1046459u, 9883879u, 4889399u,\
                          2914183u, 3503623u, 1734349u, 8860463u,\
                          1326319u, 1613597u, 8604269u, 9647369u}

#define DEBUG_KERNELS

typedef u64 T_HASHTABLE;
typedef u32 T_KEY;
typedef u32 T_AGE;


namespace GPUGenie
{

std::map<std::string, IntegratedKernelPtr> initIntegratedKernels()
{

    std::map<std::string, IntegratedKernelPtr> kernels;

    kernels["copy"] = match_integrated<DeviceJustCopyCodec>;
    kernels["d1"] = match_integrated<DeviceDeltaCodec>;
    kernels["bp32"] = match_integrated<DeviceBitPackingCodec>;
    kernels["varint"] = match_integrated<DeviceVarintCodec>;
    kernels["bp32-copy"] = match_integrated<DeviceCompositeCodec<DeviceBitPackingCodec,DeviceJustCopyCodec>>;
    kernels["bp32-varint"] = match_integrated<DeviceCompositeCodec<DeviceBitPackingCodec,DeviceVarintCodec>>;

    return kernels;
}

std::map<std::string, IntegratedKernelPtr> integratedKernels = initIntegratedKernels();

template <class Codec> __global__ void
match_adaptiveThreshold_integrated(
        int m_size, // number of dimensions, i.e. inv_table::m_size()
        int i_size, // number of instances, i.e. inv_table::m_size() * (1u<<shift_bits_subsequence)
        int hash_table_size, // hash table size
        int* d_compr_inv, // d_uncompr_inv_p points to the start location of uncompr posting list array in GPU memory
        query::dim* d_dims, // compiled queries (dim structure) with locations into d_uncompr_inv
        size_t decomprDimsOffset, // offset for d_dims to be used
        T_HASHTABLE* hash_table_list, // data_t struct (id, aggregation) array of size queries.size() * hash_table_size
        u32 * bitmap_list, // of bitmap_size
        int bitmap_bits,
        u32* d_topks, // d_topks set to max_topk for all queries
        u32* d_threshold, //initialized as 1, and increase gradually
        u32* d_passCount, //initialized as 0, count the number of items passing one d_threshold
        u32 num_of_max_count, //number of maximum count per query
        u32 * noiih, // number of integers in a hash table; set to 0 for all queries
        bool * overflow,
        unsigned int shift_bits_subsequence)
{
    if (m_size == 0 || i_size == 0)
        return;
    query::dim& myb_query = d_dims[blockIdx.x + decomprDimsOffset];
    int query_index = myb_query.query;
    u32* my_noiih = &noiih[query_index];
    u32* my_threshold = &d_threshold[query_index];
    u32* my_passCount = &d_passCount[query_index * num_of_max_count];         //
    u32 my_topk = d_topks[query_index];                //for AT

    T_HASHTABLE* hash_table = &hash_table_list[query_index * hash_table_size];
    u32 * bitmap;
    if (bitmap_bits)
        bitmap = &bitmap_list[query_index * (i_size / (32 / bitmap_bits) + 1)];
    u32 access_id;
    int min, max, order;
    if(myb_query.start_pos >= myb_query.end_pos)
        return;

    min = myb_query.start_pos;
    max = myb_query.end_pos;
    order = myb_query.order;
    bool key_eligible;                //
    bool pass_threshold;    //to determine whether pass the check of my_theshold

    // Iterate the posting lists array between q.start_pos and q.end_pos in blocks of MATCH_THREADS_PER_BLOCK
    // docsIDs, where each thread reads one docID at a time
    for (int i = 0; i < (max - min - 1) / MATCH_THREADS_PER_BLOCK + 1; ++i)
    {
        // index to read from the posting posts array
        int tmp_id = threadIdx.x + i * MATCH_THREADS_PER_BLOCK + min;
        if (tmp_id < max)
        {
            u32 count = 0;                //for AT
            access_id = d_uncompr_inv[tmp_id]; // retrieved docID from posting lists array

            if(shift_bits_subsequence != 0)
            {
                int __offset = access_id & (((unsigned int)1<<shift_bits_subsequence) - 1);
                int __new_offset = __offset - order;
                if(__new_offset >= 0)
                {
                    access_id = access_id - __offset + __new_offset;
                }
                else
                    continue;
            }

            u32 thread_threshold = *my_threshold;
            if (bitmap_bits)
            {

                key_eligible = false;
                //all count are store in the bitmap, and access the count
                count = bitmap_kernel_AT(access_id, bitmap, bitmap_bits,
                        thread_threshold, &key_eligible);

                if (!key_eligible)
                    continue;                //i.e. count< thread_threshold
            }

            key_eligible = false;
            if (count < *my_threshold)
            {
                continue;      //threshold has been increased, no need to insert
            }

            //Try to find the entry in hash tables
            access_kernel_AT(
                    access_id,               
                    hash_table, hash_table_size, myb_query, count, &key_eligible,
                    my_threshold, &pass_threshold);

            if (key_eligible)
            {
                if (pass_threshold)
                {
                    updateThreshold(my_passCount, my_threshold, my_topk, count);
                }

                continue;
            }

            if (!key_eligible)
            {
                //Insert the key into hash table
                //access_id and its location are packed into a packed key

                if (count < *my_threshold)
                {
                    continue;//threshold has been increased, no need to insert
                }

                hash_kernel_AT(access_id, hash_table, hash_table_size, myb_query, count,
                        my_threshold, my_noiih, overflow, &pass_threshold);
                if (*overflow)
                {

                    return;
                }
                if (pass_threshold)
                {
                    updateThreshold(my_passCount, my_threshold, my_topk, count);
                }
            }

        }
    }
}

template <class Codec> void
match_integrated(
            inv_compr_table& table,
            vector<query>& queries,
            device_vector<data_t>& d_data,
            device_vector<u32>& d_bitmap,
            int hash_table_size,
            int bitmap_bits, //or for AT: for adaptiveThreshold, if bitmap_bits<0, use adaptive threshold, the absolute value of bitmap_bits is count value stored in the bitmap
            device_vector<u32>& d_noiih,
            device_vector<u32>& d_threshold,
            device_vector<u32>& d_passCount)
{
    try{
        Logger::log(Logger::DEBUG, "Started match()");
        Logger::log(Logger::DEBUG, "hash table size: %d.", hash_table_size);

        u32 shift_bits_subsequence = table._shift_bits_subsequence();

        if (table.build_status() == inv_table::not_builded)
            throw GPUGenie::cpu_runtime_error("table not built!");
        
        // Time measuring events
        cudaEvent_t kernel_start, kernel_stop;
        cudaEvent_t startMatching, stopMatching, startConvert, stopConvert;
        cudaEventCreate(&startMatching);
        cudaEventCreate(&stopMatching);
        cudaEventCreate(&startConvert);
        cudaEventCreate(&stopConvert);
        cudaEventCreate(&kernel_start);
        cudaEventCreate(&kernel_stop);
        float matchDecomprTime = 0.0, convertTime, kernelsTime = 0.0;
        u64 match_stop, match_start;
        match_start = getTime();

        Logger::log(Logger::INFO, "[  0%] Starting matching...");
        
        d_noiih.resize(queries.size(), 0);
        u32 * d_noiih_p = thrust::raw_pointer_cast(d_noiih.data());

        vector<query::dim> dims;        
        //number of maximum count per query
        u32 num_of_max_count = build_queries(queries, table, dims, table.getUncompressedPostingListMaxLength());

        Logger::log(Logger::DEBUG, "num_of_max_count: %d", num_of_max_count);
        

        //for AT: for adaptiveThreshold, enable adaptiveThreshold
        if (bitmap_bits < 0)
            bitmap_bits = -bitmap_bits; //for hash_table_size, still let it determine by users currently

        Logger::log(Logger::DEBUG, "[info] bitmap_bits:%d.", bitmap_bits);
        //end for AT

        int threshold = bitmap_bits - 1, bitmap_size = 0;
        if (bitmap_bits > 1)
        {
            float logresult = std::log2((float) bitmap_bits);
            bitmap_bits = (int) logresult;
            if (logresult - bitmap_bits > 0)
            {
                bitmap_bits += 1;
            }
            logresult = std::log2((float) bitmap_bits);
            bitmap_bits = (int) logresult;
            if (logresult - bitmap_bits > 0)
            {
                bitmap_bits += 1;
            }
            bitmap_bits = pow(2, bitmap_bits);
            bitmap_size = ((((unsigned int)1<<shift_bits_subsequence) * table.i_size()) / (32 / bitmap_bits) + 1)
                    * queries.size();
        }
        else
        {
            bitmap_bits = threshold = 0;
        }

        Logger::log(Logger::DEBUG, "Bitmap bits: %d, threshold:%d, shift_bits_subsequence: %d",
            bitmap_bits, threshold, shift_bits_subsequence);


        Logger::log(Logger::INFO, "[ 20%] Declaring device memory...");


        u64 query_start, query_end;
        query_start = getTime();
        thrust::device_vector<query::dim> d_dims(dims);
        query::dim* d_dims_p = thrust::raw_pointer_cast(d_dims.data());
        query_end  = getTime();
        Logger::log(Logger::DEBUG, "query_transfer time: %d",getInterval(query_start, query_end));
        
        if (table.get_total_num_of_table() > 1 || !table.is_stored_in_gpu)
            table.cpy_data_to_gpu();

        d_bitmap.resize(bitmap_size);
        if (bitmap_size)
            thrust::fill(d_bitmap.begin(), d_bitmap.end(), 0u);

        u32 * d_bitmap_p = raw_pointer_cast(d_bitmap.data());



        Logger::log(Logger::INFO, "[ 30%] Allocating device memory to tables...");

        data_t nulldata;
        nulldata.id = 0u;
        nulldata.aggregation = 0.0f;
        T_HASHTABLE* d_hash_table;
        data_t* d_data_table;
        d_data.clear();

        d_data.resize(queries.size() * hash_table_size, nulldata);
        d_data_table = thrust::raw_pointer_cast(d_data.data());
        d_hash_table = reinterpret_cast<T_HASHTABLE*>(d_data_table);


        Logger::log(Logger::INFO, "[ 32%] Allocating device memory for uncompressed posting lists...");

        size_t d_uncompr_inv_size = DECOMPR_BATCH * table.getUncompressedPostingListMaxLength();
        thrust::device_vector<int> d_uncompr_inv(d_uncompr_inv_size);
        int *d_uncompr_inv_p = thrust::raw_pointer_cast(d_uncompr_inv.data());


        Logger::log(Logger::INFO, "[ 33%] Copying memory to symbol...");

        u32 h_offsets[16] = OFFSETS_TABLE_16;
        cudaCheckErrors(cudaMemcpyToSymbol(GPUGenie::device::offsets, h_offsets, sizeof(u32)*16, 0, cudaMemcpyHostToDevice));


        Logger::log(Logger::INFO,"[ 40%] Starting decompression & match kernels...");

        cudaEventRecord(kernel_start);

        bool h_overflow[1] = {false};
        bool * d_overflow;
        cudaCheckErrors(cudaMalloc((void**) &d_overflow, sizeof(bool)));

        u32 loop_count = 1u;
        do
        {
            // Set overflow to false
            h_overflow[0] = false;
            cudaCheckErrors(cudaMemcpy(d_overflow, h_overflow, sizeof(bool), cudaMemcpyHostToDevice));

            // Set threshold to 1 for all queries
            d_threshold.resize(queries.size());
            thrust::fill(d_threshold.begin(), d_threshold.end(), 1);
            u32 * d_threshold_p = thrust::raw_pointer_cast(d_threshold.data());
            
            // Set d_passCount to 0 for all queries and all num_of_max_count
            d_passCount.resize(queries.size()*num_of_max_count);
            thrust::fill(d_passCount.begin(), d_passCount.end(), 0u);
            u32 * d_passCount_p = thrust::raw_pointer_cast(d_passCount.data());

            // Set d_topks to 0 for all queries
            u32 max_topk = cal_max_topk(queries);
            device_vector<u32> d_topks;
            d_topks.resize(queries.size());
            thrust::fill(d_topks.begin(), d_topks.end(), max_topk);
            u32 * d_topks_p = thrust::raw_pointer_cast(d_topks.data());

            
            // Call matching kernel, where each BLOCK does matching of one compiled query, only matching for the
            // next DECOMPR_BATCH compiled queries is done in one invocation of the kernel -- this corresponds to
            // the number of decompressed invereted lists
            cudaEventRecord(startMatching);

            throw std::logic_error("No integrated kernel available!");

            cudaEventRecord(startMatching);
            match_adaptiveThreshold_queryPerBlock_compressed<Codec><<<batch,MATCH_THREADS_PER_BLOCK>>>
                   (table.m_size(),
                    table.i_size() * ((unsigned int)1<<shift_bits_subsequence),
                    hash_table_size, // hash table size
                    // d_compr_inv points to the start location of compressed posting list array in GPU mem
                    d_compr_inv, 
                    // compiled queries (dim structure)
                    d_dims_p,
                    // offset into compiled queries
                    dimsOffset,
                    d_hash_table, // data_t struct (id, aggregation) array of size queries.size() * hash_table_size
                    d_bitmap_p, // of bitmap_size
                    bitmap_bits,
                    d_topks_p, // d_topks set to max_topk for all queries
                    d_threshold_p,//initialized as 1, and increase gradually
                    d_passCount_p,//initialized as 0, count the number of items passing one d_threshold
                    num_of_max_count,//number of maximum count per query
                    d_noiih_p, // number of integers in a hash table set to 0 for all queries
                    d_overflow, // bool
                    shift_bits_subsequence);
            cudaEventRecord(stopMatching);
            cudaEventSynchronize(stopMatching);
            cudaEventElapsedTime(&matchDecomprTime, startMatching, stopMatching);

            cudaCheckErrors(cudaDeviceSynchronize());
            

            // Increase hash table size in case there was an overflow
            cudaCheckErrors(cudaMemcpy(h_overflow, d_overflow, sizeof(bool), cudaMemcpyDeviceToHost));
            if(h_overflow[0])
            {
                hash_table_size += num_of_max_count*max_topk;
                if(hash_table_size > table.i_size())
                {
                    hash_table_size = table.i_size();
                }
                thrust::fill(d_noiih.begin(), d_noiih.end(), 0u);
                if(bitmap_size)
                {
                    thrust::fill(d_bitmap.begin(), d_bitmap.end(), 0u);
                }
                d_data.resize(queries.size()*hash_table_size);
                thrust::fill(d_data.begin(), d_data.end(), nulldata);
                d_data_table = thrust::raw_pointer_cast(d_data.data());
                d_hash_table = reinterpret_cast<T_HASHTABLE*>(d_data_table);
            }

            // Log failed matching attempt
            if (loop_count>1 || (loop_count == 1 && h_overflow[0]))
                Logger::log(Logger::INFO,"%d time trying to launch match kernel: %s!",
                    loop_count, h_overflow[0]?"failed":"succeeded");
            loop_count ++;

        }while(h_overflow[0]);

        cudaCheckErrors(cudaFree(d_overflow));

        cudaEventRecord(kernel_stop);
        Logger::log(Logger::INFO,"[ 90%] Starting data converting......");

        cudaEventRecord(startConvert);
        device::convert_to_data<<<hash_table_size*queries.size() / 1024 + 1,1024>>>(
            d_hash_table,(u32)hash_table_size*queries.size());
        cudaEventRecord(stopConvert);

        cudaEventSynchronize(stopConvert
            );
        Logger::log(Logger::INFO, "[100%] Matching is done!");

        match_stop = getTime();

        cudaEventElapsedTime(&kernelsTime, kernel_start, kernel_stop);
        cudaEventElapsedTime(&convertTime, startConvert, stopConvert);


        Logger::log(Logger::INFO,
                ">>>>[time profiling]: Decompresison kernels take %f ms. (GPU only) ",
                decomprTime);
        Logger::log(Logger::INFO,
                ">>>>[time profiling]: Match kernels take %f ms. (GPU only) ",
                matchTime);
        Logger::log(Logger::INFO,
                ">>>>[time profiling]: Decompression and match kernels take %f ms. (GPU only) ",
                kernelsTime);
        Logger::log(Logger::INFO,
                ">>>>[time profiling]: Conversion kernel takes %f ms. (GPU only) ",
                convertTime);
        Logger::log(Logger::INFO,
                ">>>>[time profiling]: Match function takes %f ms. (GPU+CPU)",
                getInterval(match_start, match_stop));
        Logger::log(Logger::VERBOSE, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

    } catch(std::bad_alloc &e){
        throw GPUGenie::gpu_bad_alloc(e.what());
    }
}

}
