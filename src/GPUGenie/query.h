#ifndef GPUGenie_query_h
#define GPUGenie_query_h

#include "inv_table.h"
#include "inv_list.h"

#include <vector>

using namespace std;

namespace GPUGenie
{

typedef unsigned int u32;
typedef unsigned long long u64;



class query
{
public:
	struct range
	{
		int query;
		int dim;
		int low;
		int up;
		float weight;
		int low_offset;
		int up_offset;
		float selectivity;
	};
    struct dim
    {
         int query;
         int start_pos;// with respect to inv[], containing data points
         int end_pos;
         float weight;
    };
private:
	/**
	 * @brief The refrenced table.
	 * @details The refrenced table. The query can only be
	 *        used to query the refrenced table.
	 */
	inv_table* _ref_table;

	/**
	 * @brief The saved ranges.
	 * @details The saved ranges. Since different table requires
	 *          different ranges setting, the attribute saves the
	 *          raw range settings.
	 */
	std::map<int, vector<range>*> _attr_map;

	/**
	 * @brief The queried ranges.
	 * @details The queried ranges. In matching steps, this vector will
	 *          be transferred to device.
	 */
	std::map<int, vector<dim>*> _dim_map;

	/**
	 * @brief The top k matches required.
	 * @details The top k matches required.
	 */
	int _topk;

	float _selectivity;

	int _index;

	int _count;

	inline u64 pack_dim_and_count(u32 dim, u64 count);

	inline u32 unpack_dim(u64 packed_data);

	inline u64 unpack_count(u64 packed_data);
public:

	bool is_load_balanced;
	bool use_load_balance;
	vector<dim> _dims;

	/**
	 * @brief Create a query based on an inv_table.
	 * @details Create a query based on an inv_table.
	 *
	 * @param ref The refrence to the inv_table.
	 */
	query(inv_table* ref, int index);

	/**
	 * @brief Create a query based on an inv_table.
	 * @details Create a query based on an inv_table.
	 *
	 * @param ref The pointer to the inv_table.
	 */
	query(inv_table& ref, int index);

	query();

	/**
	 * @brief The refrenced table's pointer.
	 * @details The refrenced table's pointer.
	 * @return The pointer points to the refrenced table.
	 */
	inv_table*
	ref_table();

	/**
	 * @brief Modify the matching range and weight of an attribute.
	 * @details Modify the matching range and weight of an attribute.
	 *
	 * @param index Attribute index
	 * @param low Lower bound (included)
	 * @param up Upper bound (included)
	 * @param weight The weight
	 */

	void
	attr(int index, int low, int up, float weight);
	void
	attr(int index, int value, float weight, float selectivity);
	void
	attr(int index, int low, int up, float weight, float selectivity);

	void
	split_hot_dims(query& hot_dims_query, int num);

	void
	clear_dim(int index);

	void
	selectivity(float s);

	float
	selectivity();

	void
	apply_adaptive_query_range();

	void
	build_and_apply_load_balance(int max_load);

	/**
	 * @brief Set top k matches.
	 * @details Set top k matches.
	 *
	 * @param k The top k matches.
	 */
	void
	topk(int k);

	/**
	 * @brief Get top k matches.
	 * @details Get top k matches.
	 *
	 * @return The top k matches.
	 */
	int
	topk();

	/**
	 * @brief Construct the query based on a normal table.
	 * @details Construct the query based on a normal table.
	 */
	void
	build();

	/**
	 * @brief Construct the query based on a compressed table.
	 * @details Construct the query based on a compressed table.
	 */
	void
	build_compressed();

	/**
	 * @brief Transfer the matching information(the queried ranges) to vector vout.
	 * @details Transfer matching information(the queried ranges) to vector vout.
	 *          vout will not be cleared, the push_back method will be invoked instead.
	 *
	 * @param vout The target vector.
	 */
	int
	dump(vector<dim>& vout);

	void
	print(int limit);

	void
	print();

	int
	index();

	int
	count_ranges();
};
}

#endif
