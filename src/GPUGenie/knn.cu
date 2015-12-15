#include "knn.h"
#include <math.h>
#include <assert.h>
#include <thrust/copy.h>

bool GPUGENIE_ERROR = false;
unsigned long long GPUGENIE_TIME = 0ull;

#ifndef GPUGenie_knn_THREADS_PER_BLOCK
#define GPUGenie_knn_THREADS_PER_BLOCK 1024
#endif

#ifndef GPUGenie_knn_DEFAULT_HASH_TABLE_SIZE
#define GPUGenie_knn_DEFAULT_HASH_TABLE_SIZE 1
#endif

#ifndef GPUGenie_knn_DEFAULT_BITMAP_BITS
#define GPUGenie_knn_DEFAULT_BITMAP_BITS 2
#endif

#ifndef GPUGenie_knn_DEFAULT_DATA_PER_THREAD
#define GPUGenie_knn_DEFAULT_DATA_PER_THREAD 256
#endif

__global__
void
extract_index_and_count(int * id, int * count, data_t * od, int size)
{
	int tId = threadIdx.x + blockIdx.x * blockDim.x;
	if(tId >= size) return;
	int topk_id = id[tId];
	id[tId] = od[topk_id].id;
	count[tId] = (int) od[topk_id].aggregation;
}

void
GPUGenie::knn_bijectMap(GPUGenie::inv_table& table,
		   vector<GPUGenie::query>& queries,
		   device_vector<int>& d_top_indexes,
		   device_vector<int>& d_top_count,
		   int hash_table_size,
		   int max_load,
		   int bitmap_bits,
		   int dim,
		   int num_of_hot_dims,
		   int hot_dim_threshold)
{
  int qmax = 0;

  for(int i = 0; i < queries.size(); ++i)
  {
	 int count = queries[i].count_ranges();
	  if(count > qmax)
		  qmax = count;
  }
#ifdef GPUGENIE_DEBUG
  u64 start = getTime();
#endif
  knn(table, queries, d_top_indexes,d_top_count, hash_table_size,max_load, bitmap_bits,
		  	  float(qmax+1), num_of_hot_dims, hot_dim_threshold);
#ifdef GPUGENIE_DEBUG
  u64 end = getTime();
  double elapsed = getInterval(start, end);
  printf(">>>>>>> knn takes %fms <<<<<< \n", elapsed);
#endif
}
void
GPUGenie::knn(GPUGenie::inv_table& table,
		   vector<GPUGenie::query>& queries,
		   device_vector<int>& d_top_indexes,
		   device_vector<int>& d_top_count,
		   int hash_table_size,
		   int max_load,
		   int bitmap_bits,
		   int dim,
		   int num_of_hot_dims,
		   int hot_dim_threshold)
{
#ifdef GPUGENIE_DEBUG
  printf("Parameters: %d,%d,%d,%d,%d\n", hash_table_size, bitmap_bits, dim, num_of_hot_dims, hot_dim_threshold);
#endif
  //for improve
//  int qmax = 0;
//  for(int i = 0; i < queries.size(); ++i)
//  {
//	 int count = queries[i].count_ranges();
//	  if(count > qmax)
//		  qmax = count;
//  }
  //end for improve
  dim = 2;
#ifdef GPUGENIE_DEBUG  //for improve
  u64 startKnn = getTime();
#endif

#ifdef GPUGENIE_DEBUG  //for improve
  u64 end3Knn = getTime();
  printf(">>>>> knn() before match() %f ms <<<<<\n", getInterval(startKnn, end3Knn));
#endif

  device_vector<data_t> d_data;
  device_vector<u32> d_bitmap;

#ifdef GPUGENIE_DEBUG  //for improve
  u64 end2Knn = getTime();
  printf(">>>>> knn() before match() %f ms <<<<<\n", getInterval(startKnn, end2Knn));
#endif
  device_vector<u32> d_num_of_items_in_hashtable(queries.size());
  printf("[knn] max_load is %d.\n", max_load);
  match(table, queries, d_data, d_bitmap, hash_table_size,max_load, bitmap_bits, num_of_hot_dims, hot_dim_threshold, d_num_of_items_in_hashtable);
#ifdef GPUGENIE_DEBUG  //for improve
  u64 end1Knn = getTime();
  printf(">>>>> knn() after match() %f ms <<<<<\n", getInterval(startKnn, end1Knn));
#endif

#ifdef GPUGENIE_DEBUG  //for improve
  u64 endKnn = getTime();
  printf(">>>>> knn() before topk and extractIndex %f ms <<<<<\n", getInterval(startKnn, endKnn));
#endif

#ifdef GPUGENIE_DEBUG
  printf("Start topk....\n");
  u64 start = getTime();
#endif

  topk(d_data, queries, d_top_indexes, float(dim));

#ifdef GPUGENIE_DEBUG
  u64 end = getTime();
  printf("Topk Finished! \n");
  printf(">>>>> main topk takes %fms <<<<<\n", getInterval(start, end));
  start=getTime();
#endif
  d_top_count.resize(d_top_indexes.size());
  extract_index_and_count<<<d_top_indexes.size() / GPUGenie_knn_THREADS_PER_BLOCK + 1, GPUGenie_knn_THREADS_PER_BLOCK>>>
			   (thrust::raw_pointer_cast(d_top_indexes.data()),
			    thrust::raw_pointer_cast(d_top_count.data()),
			    thrust::raw_pointer_cast(d_data.data()),
			    d_top_indexes.size());

#ifdef GPUGENIE_DEBUG
  end=getTime();
  printf("Finish topk search!\n");
  printf(">>>>> extract index and copy selected topk results takes %fms <<<<<\n", getInterval(start, end));
#endif
}
