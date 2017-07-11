/**
 * Name: test_15.cu
 * Description:
 *  Simple test for inverted compressed table interface and compression capabilities
 */

#undef NDEBUG
 
#include <genie/GPUGenie.h>
#include <genie/compression/DeviceCodecFactory.h>
#include <genie/interface/io.h>

#include <algorithm>
#include <cassert>
#include <cstdio>
#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

using namespace genie::original;
using namespace genie::compression;
using namespace genie::table;
using namespace genie::query;
using namespace genie::utility;

const std::string      DEFAULT_TEST_DATASET = "../static/sift_20.csv";
const std::string      DEFAULT_QUERY_DATASET = "../static/sift_20.csv";
const int              DEFAULT_DIMENSIONS = 5;
const int              DEFAULT_NUM_QUERIES = 3;
const COMPRESSION_TYPE DEFAULT_COMPRESSION = COPY;


/**
 *  Sorts GENIE top-k results for each query independently. The top-k results returned from GENIE are in random order,
 *  and if (top-k > number of resutls with match count greater than 0), then remaining docIds in the result vector are
 *  set to 0, thus the result and count vectors cannot be soreted conventionally. 
 */
void sortGenieResults(GPUGenie_Config &config, std::vector<int> &gpuResultIdxs,
                            std::vector<int> &gpuResultCounts)
{
    std::vector<int> gpuResultHelper(config.num_of_topk),
                     gpuResultHelperTmp(config.num_of_topk);
    for (int queryIndex = 0; queryIndex < config.num_of_queries; queryIndex++)
    {
        int offsetBegin = queryIndex*config.num_of_topk;
        int offsetEnd = (queryIndex+1)*config.num_of_topk;
        // Fint first zero element
        auto firstZeroIt = std::find(gpuResultCounts.begin()+offsetBegin, gpuResultCounts.begin()+offsetEnd, 0);
        // Only sort elements that have non-zero count. This is because GENIE does not return indexed of elements with
        // zero count
        offsetEnd = std::min(offsetEnd,static_cast<int>(
                                    std::distance(gpuResultCounts.begin(),firstZeroIt)));
        
        // Create helper index from 0 to offsetEnd-offsetBegin
        gpuResultHelper.resize(offsetEnd-offsetBegin);
        gpuResultHelperTmp.resize(offsetEnd-offsetBegin);
        std::iota(gpuResultHelper.begin(), gpuResultHelper.end(),0);

        // Sort the helper index according to gpuResultCounts[...+offsetBegin]
        std::sort(gpuResultHelper.begin(),
                  gpuResultHelper.end(),
                  [&gpuResultCounts,offsetBegin](int lhs, int rhs){
                        return (gpuResultCounts[lhs+offsetBegin] > gpuResultCounts[rhs+offsetBegin]);
                    });

        // Shuffle the gpuResultIdxs according to gpuResultHelper
        for (size_t i = 0; i < gpuResultHelper.size(); i++)
            gpuResultHelperTmp[i] = gpuResultIdxs[gpuResultHelper[i]+offsetBegin];
        // Copy back into gpuResultIndex
        std::copy(gpuResultHelperTmp.begin(), gpuResultHelperTmp.end(), gpuResultIdxs.begin()+offsetBegin);

        // Shuffle the gpuResultCounts according to gpuResultHelper
        for (size_t i = 0; i < gpuResultHelper.size(); i++)
            gpuResultHelperTmp[i] = gpuResultCounts[gpuResultHelper[i]+offsetBegin];
        // Copy back into gpuResultIndex
        std::copy(gpuResultHelperTmp.begin(), gpuResultHelperTmp.end(), gpuResultCounts.begin()+offsetBegin); 
    }
}

int main(int argc, char* argv[])
{
    std::string dataFile = DEFAULT_TEST_DATASET;
    COMPRESSION_TYPE compression = DEFAULT_COMPRESSION;
    std::string queryFile = DEFAULT_QUERY_DATASET;
    std::string binaryInvTableFile;
    std::string binaryComprInvTableFile;
    bool convertTableToBinary = false;

    int dimensions = DEFAULT_DIMENSIONS;
    int numberOfQueries = DEFAULT_NUM_QUERIES;
    if (argc >= 2)
        dataFile = std::string(argv[1]);
    if (argc >= 3)
        queryFile = std::string(argv[2]);
    if (argc >= 4)
        dimensions = std::atoi(argv[3]);
    if (argc >= 5)
        numberOfQueries = std::atoi(argv[4]);
    if (argc >= 6)
    {
        compression = DeviceCodecFactory::getCompressionType(std::string(argv[5]));
        if (compression == NO_COMPRESSION)
        {
            Logger::log(Logger::ALERT, "Unknown compression argument %s", argv[5]);
            return 5;
        }
    }

    Logger::log(Logger::INFO, "Checking test arguments...", dataFile.c_str());

    std::string invSuffix(".inv");
    std::string cinvSuffix(".cinv");

    // std::string invTableFileBase = dataFile.substr(dataFile.find_last_of("/") + 1);
    // invTableFileBase = invTableFileBase.substr(0, invTableFileBase.find_last_of('.'));
    std::string invTableFileBase = dataFile.substr(0, dataFile.find_last_of('.'));

    if (dataFile.size() >= invSuffix.size() + 1
            && std::equal(invSuffix.rbegin(), invSuffix.rend(), dataFile.rbegin())){
        Logger::log(Logger::ALERT, "dataFile %s is an inv_table binary file", dataFile.c_str());
        return 1;
    }
    if (dataFile.size() >= invSuffix.size() + 1
            && std::equal(cinvSuffix.rbegin(), cinvSuffix.rend(), dataFile.rbegin())){
        Logger::log(Logger::ALERT, "dataFile %s is an compr_inv_table binary file", dataFile.c_str());
        return 1;
    }

    binaryInvTableFile = invTableFileBase + invSuffix;
    binaryComprInvTableFile = invTableFileBase + cinvSuffix;

    std::ifstream invBinFileStream(binaryInvTableFile.c_str());
    bool invBinFileExists = invBinFileStream.good();
    std::ifstream cinvBinFileStream(binaryComprInvTableFile.c_str());
    bool cinvBinFileExists = cinvBinFileStream.good();

    if (invBinFileExists && !cinvBinFileExists || !invBinFileExists && cinvBinFileExists){
        Logger::log(Logger::ALERT, "Either inv_table or compr_inv_table binary file already exists, but not both");
        return 2;
    }

    if (invBinFileExists && cinvBinFileExists){
        Logger::log(Logger::ALERT, "Using existing binary tables. Remove files in order to regenerate them.");
        convertTableToBinary = false;
    }
    else
        convertTableToBinary = true;

    if (dataFile.empty() && convertTableToBinary){
        Logger::log(Logger::ALERT, "Either inv_table or compr_inv_table binary file already exists, but not both");
        return 3;
    }


    std::vector<std::vector<int>> queryPoints;
    std::vector<std::vector<int>> data;
    GPUGenie_Config config;

    config.dim = dimensions;
    config.count_threshold = 14;
    config.num_of_topk = 10;
    config.hashtable_size = 100*config.num_of_topk*1.5;
    config.query_radius = 0;
    config.use_device = 2;
    config.use_adaptive_range = false;
    config.selectivity = 0.0f;

    config.query_points = &queryPoints;
    config.data_points = &data;

    config.use_load_balance = true;
    config.posting_list_max_length = 1024;
    config.multiplier = 1.0f;
    config.use_multirange = false;

    config.data_type = 0;
    config.search_type = 0;
    config.max_data_size = 0;

    config.num_of_queries = numberOfQueries;

    init_genie(config);



    if (convertTableToBinary)
    {

        Logger::log(Logger::INFO, "Reading data file %s ...", dataFile.c_str());
        read_file(*config.data_points, dataFile.c_str(), -1);

        Logger::log(Logger::INFO, "Preprocessing as inv_table...");
        std::cout << "Preprocessing data (" << config.item_num << " items total)..." << std::endl;  
        
        inv_table * refTable = NULL;
        preprocess_for_knn_csv(config, refTable);
        assert(refTable != NULL);
        assert(refTable->get_total_num_of_table() == 1); // check how many tables we have
        assert(dynamic_cast<inv_compr_table*>(refTable) == NULL);

        
        Logger::log(Logger::INFO, "Writing inv_table to binary file %s ...", binaryInvTableFile.c_str());

        std::shared_ptr<const inv_table> sp_ref_table(refTable, [](inv_table* ptr){delete[] ptr;});
        genie::SaveTableToBinary(binaryInvTableFile, sp_ref_table);

        config.compression = compression;

        Logger::log(Logger::INFO, "Preprocessing compr_inv_table from %s ...", dataFile.c_str());

        std::cout << "Preprocessing data (" << config.item_num << " items total)..." << std::endl;

        inv_table * table = NULL;
        __attribute__((unused)) inv_compr_table * comprTable = NULL;
        preprocess_for_knn_csv(config, table); // this returns inv_compr_table if config.compression is set
        assert(table != NULL);
        assert(table->build_status() == inv_table::builded);
        assert(table->get_total_num_of_table() == 1); // check how many tables we have
        comprTable = dynamic_cast<inv_compr_table*>(table);
        assert((int)comprTable->getUncompressedPostingListMaxLength() <= config.posting_list_max_length);
        // check the compression was actually used in the table
        assert(config.compression == comprTable->getCompression());

        Logger::log(Logger::INFO, "Writing inv_compr_table to binary file %s ...", binaryComprInvTableFile.c_str());
        std::shared_ptr<const inv_table> sp_table(table, [](inv_table* ptr){delete[] ptr;});
        genie::SaveTableToBinary(binaryComprInvTableFile, sp_table);
    }

    std::cout << "--------------------------------------------------------" << std::endl;
    std::cout << "Establishing reference solution on uncompressed table..." << std::endl;

    Logger::log(Logger::INFO, "Opening binary inv_table from %s ...", binaryInvTableFile.c_str());
    std::shared_ptr<inv_table> refTable = genie::LoadTableFromBinary(binaryInvTableFile);


    std::cout << "Examining inverted lists...";
    std::vector<inv_list> *invLists = refTable->inv_lists();
    // check inverted index of the tables using inv_list class
    for (size_t attr_index = 0; attr_index < invLists->size(); attr_index++)
    {
        inv_list invertedList = (*invLists)[attr_index];
        int posting_list_length = invertedList.size();
        int posting_list_min = invertedList.min();
        int posting_list_max = invertedList.max();
        Logger::log(Logger::DEBUG, "  attr_index %d, posting_list_length: %d, min: %d, max: %d",
                        attr_index, posting_list_length, posting_list_min, posting_list_max);
        Logger::log(Logger::DEBUG, "    table->get_lowerbound_of_list(%d): %d, table->get_upperbound_of_list(%d): %d", attr_index, refTable->get_lowerbound_of_list(attr_index),
            attr_index, refTable->get_upperbound_of_list(attr_index));
    }

    Logger::logTable(Logger::DEBUG,refTable.get());

    std::cout << "Loading queries..." << std::endl;
    read_file(*config.query_points, queryFile.c_str(), config.num_of_queries);
    std::vector<Query> refQueries;
    load_query(*refTable, refQueries, config);

    std::cout << "Running KNN on GPU..." << std::endl;
    std::vector<int> refResultIdxs;
    std::vector<int> refResultCounts;
    knn_search(*refTable, refQueries, refResultIdxs, refResultCounts, config);
    // Top k results from GENIE don't have to be sorted. In order to compare with CPU implementation, we have to
    // sort the results manually from individual queries => sort subsequence relevant to each query independently
    sortGenieResults(config, refResultIdxs, refResultCounts);
    Logger::log(Logger::DEBUG, "Results from GENIE:");
    Logger::logResults(Logger::DEBUG, refQueries, refResultIdxs, refResultCounts);



    std::cout << "---------------------------" << std::endl;
    std::cout << "Testing compressed table..." << std::endl;

    Logger::log(Logger::INFO, "Opening binary inv_compr_table from %s ...", binaryComprInvTableFile.c_str());
    std::shared_ptr<inv_compr_table> comprTable =
            std::dynamic_pointer_cast<inv_compr_table>(genie::LoadTableFromBinary(binaryComprInvTableFile));

    std::cout << "Examining compressed index..." << std::endl;

    std::vector<int> *uncompressedInv = comprTable->uncompressedInv();
    std::vector<int> *uncompressedInvPos = comprTable->uncompressedInvPos();
    std::vector<uint32_t> *compressedInv = comprTable->compressedInv();
    std::vector<int> *compressedInvPos = comprTable->compressedInvPos();
    // the last elm in inv_pos should be the compressed size, which is <= to the original size
    assert(compressedInvPos->size() == uncompressedInvPos->size());
    assert(compressedInvPos->back() == (int)compressedInv->size()); 
    // assert(compressedInvPos->back() <= uncompressedInvPos->back()); // compression should not enlarge data
    assert(compressedInv == reinterpret_cast<std::vector<uint32_t>*>(comprTable->inv())); // test alias function
    assert(compressedInvPos == comprTable->inv_pos()); // test alias function

    double avg_inv_list_length = ((double)uncompressedInv->size()) / ((double)uncompressedInvPos->size());
    double avg_compr_inv_list_length = ((double)compressedInv->size()) / ((double)compressedInvPos->size());
    Logger::log(Logger::DEBUG,
            "Uncompressed inverted list length: %d, Inverted lists: %d, Average length of uncompressed inv list: %f",
            uncompressedInv->size(), uncompressedInvPos->size(), avg_inv_list_length);
    Logger::log(Logger::DEBUG, "Compressed size of posting lists array Z: %d bytes", compressedInv->size() * 4);
    Logger::log(Logger::DEBUG, "Uncompressed size of compressedInvPos index: %d bytes", compressedInvPos->size() * 4);
    Logger::log(Logger::DEBUG, "Average size of compressed posting list: %d", avg_compr_inv_list_length);

    Logger::logTable(Logger::DEBUG,comprTable.get());

 
    std::cout << "Loading queries..." << std::endl;
    std::vector<Query> queries;
    load_query(*comprTable, queries, config);

    std::vector<int> resultIdxs;
    std::vector<int> resultCounts;

    std::cout << "Running KNN on GPU (compression, naive counting)" << std::endl;
    std::cout << "KNN_SEARCH_CPU"
              << ", file: " << dataFile << " (" << config.row_num << " rows)" 
              << ", queryFile: " << queryFile << " (" << config.num_of_queries << " queries)"
              << ", topk: " << config.num_of_topk
              << ", compression: " << config.compression
              << ", ";

    knn_search(*comprTable, queries, resultIdxs, resultCounts, config);
    sortGenieResults(config, resultIdxs, resultCounts);

    Logger::log(Logger::DEBUG, "Results from GPU naive decompressed counting:");
    Logger::logResults(Logger::DEBUG, queries, resultIdxs, resultCounts);



    std::cout<< "---------------------------------------------" << std::endl;
    std::cout<< "Comparing reference and compressed results..." << std::endl;

    // Compare the first docId from the GPU and CPU results -- note since we use points from the data file
    // as queries, One of the resutls is a full-dim count match (self match), which is what we compare here.
    // Note that for large datasets, the self match may not be included if config.num_of_topk is not high enough,
    // which is due to all the config.num_of_topk having count equal to config.dims (match in all dimensions),
    // thereby this test may fail for large datasets.
    assert(refResultIdxs[0 * config.num_of_topk] == resultIdxs[0 * config.num_of_topk]
        && refResultCounts[0 * config.num_of_topk] == resultCounts[0 * config.num_of_topk]);
    assert(refResultIdxs[1 * config.num_of_topk] == resultIdxs[1 * config.num_of_topk]
        && refResultCounts[1 * config.num_of_topk] == resultCounts[1 * config.num_of_topk]);
    assert(refResultIdxs[2 * config.num_of_topk] == resultIdxs[2 * config.num_of_topk]
        && refResultCounts[2 * config.num_of_topk] == resultCounts[2 * config.num_of_topk]);

    return 0;
}

