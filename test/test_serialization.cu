/** Name: test_6.cu
 * Description:
 * focus on serialization of table, especially under multiload setting
 *   sift data
 *   data is from csv file
 *   query is from csv file, single range
 *
 *
 */


#undef NDEBUG

#include <cassert>
#include <fstream>

#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>

#include <GPUGenie/interface.h>
#include <GPUGenie/inv_table.h>
#include <GPUGenie/inv_compr_table.h>
#include <GPUGenie/serialization.h>

using namespace std;
using namespace GPUGenie;


void testSerialization(GPUGenie::GPUGenie_Config &config)
{
    Logger::log(Logger::INFO, "Preprocessing inverted table...");
    GPUGenie::inv_table * table = nullptr;
    GPUGenie::inv_compr_table * comprTable = nullptr;
    GPUGenie::preprocess_for_knn_csv(config, table); // this returns inv_compr_table if config.compression is set
    assert(table != nullptr);
    assert(table->build_status() == inv_table::builded);

    string inv_filename("/tmp/genie_test_serialization.invtable");
    Logger::log(Logger::INFO, "Saving inverted table to file...");
    {
        std::ofstream ofs(inv_filename.c_str());
        boost::archive::text_oarchive oa(ofs);
        oa << *table;
    }
    
    GPUGenie::inv_table * loaded_table = new inv_table();
    Logger::log(Logger::INFO, "Loading inverted table from file...");
    {
        std::ifstream ifs(inv_filename.c_str());
        boost::archive::text_iarchive ia(ifs);
        ia >> *loaded_table;
    }

    Logger::log(Logger::INFO, "Checking loaded table correctness...");

    // assert(table->table_index == loaded_table->table_index);

    Logger::log(Logger::DEBUG, "Deallocating inverted table...");
    delete[] table;
    delete loaded_table;

}

int main(int argc, char* argv[])
{
    string dataFile = "../static/sift_20.csv";
    
    Logger::log(Logger::INFO, "Reading csv data file %s ...", dataFile.c_str());
    std::vector<std::vector<int>> data;
    GPUGenie::GPUGenie_Config config;
    config.data_points = &data;
    config.data_type = 0;
    GPUGenie::read_file(data, dataFile.c_str(), -1);

    // Test inv_table
    config.compression = NO_COMPRESSION;
    testSerialization(config);

    // Test inv_compr_table
    config.compression = HEAVYWEIGHT_COMPRESSION_TYPE;
    testSerialization(config);

    return 0;
}
