/*! \file match.h
 *  \brief This file includes interfaces of match functions.
 *
 */
#ifndef GPUGenie_match_h
#define GPUGenie_match_h

#include <stdint.h>
#include <thrust/device_vector.h>

#include "query.h"
#include "inv_table.h"
#include "match_common.h"

using namespace std;
using namespace thrust;
using namespace genie::core;

namespace GPUGenie
{

/*! \fn int cal_max_topk(vector<query>& queries)
 *  \brief Find the maximum topk in query set.
 *
 *  \param queries Query set
 *
 *  The function would get the maximum topk of queries in the query set.
 *  And would use this topk as the global topk for all search process.
 *
 *  \return Maximum topk.
 *
 */
int
cal_max_topk(vector<query>& queries);

/*! \fn void match(inv_table& table, vector<query>& queries, device_vector<data_t>& d_data, device_vector<u32>& d_bitmap,int hash_table_size,
 *          int max_load, int bitmap_bits, device_vector<u32>& d_noiih, device_vector<u32> d_threshold, device_vector<u32>& d_passCount)
 *  \brief Search the inv_table and save the match
 *        result into d_count and d_aggregation.
 *
 *  \param table The inv_table which will be searched.
 *  \param queries The queries.
 *  \param d_data The output data consisting of count and the index of the data in table.
 *  \param hash_table_size The hash table size.
 *  \param max_load The maximum number of posting list items that can be processed by one gpu block
 *  \param bitmap_bits The threshold for the count heap
 *  \param d_noiih The number of items in hash table
 *  \param d_threshold The container for heap-count thresholds of each query.
 *  \param d_passCount The container for heap-count counts in each buckets of each query.
 */
void
match(  inv_table& table,
        vector<query>& queries,
        device_vector<data_t>& d_data,
        device_vector<u32>& d_bitmap,
        int hash_table_size,
        int max_load,
        int bitmap_bits,
        device_vector<u32>& d_noiih,
        device_vector<u32>& d_threshold,
        device_vector<u32>& d_passCount);

void
match_MT(vector<inv_table*>& table, vector<vector<query> >& queries, vector<device_vector<data_t> >& d_data,
		vector<device_vector<u32> >& d_bitmap, vector<int>& hash_table_size, vector<int>& max_load,
		int bitmap_bits, vector<device_vector<u32> >& d_noiih,
		vector<device_vector<u32> >& d_threshold, vector<device_vector<u32> >& d_passCount, size_t start,
		size_t finish);


/*! \fn int build_queries(vector<query>& queries, inv_table& table, vector<query::dim>& dims, int max_load)
 *  \brief Collect all the dims in all queries.
 *
 *  \param queries The query set
 *  \param table The inverted table.
 *  \param dims The container for the resulting query details.
 *  \param max_load The maximum number of posting list items that can be processed by one gpu block
 *
 *  \return The max value of counts of queries in the query set.
 */
int
build_queries(vector<query>& queries, inv_table& table,
		vector<query::dim>& dims, int max_load);

}
#endif
