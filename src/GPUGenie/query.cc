#include <algorithm>
#include <stdio.h>
#include <stdlib.h>
#include <stdexcept>
#include <cmath>

#include "query.h"

#include "Logger.h"

typedef unsigned int u32;
typedef unsigned long long u64;
GPUGenie::query::query()
{
	_ref_table = NULL;
	_attr_map.clear();
	_dim_map.clear();
	_topk = 1;
	_selectivity = -1.0f;
	_index = -1;
	_count = -1;
	is_load_balanced = false;
	use_load_balance = false;
}
GPUGenie::query::query(inv_table* ref, int index)
{
	_ref_table = ref;
	_attr_map.clear();
	_dim_map.clear();
	_topk = 1;
	_selectivity = -1.0f;
	_index = index;
	_count = -1;
	is_load_balanced = false;
	use_load_balance = false;
}

GPUGenie::query::query(inv_table& ref, int index)
{
	_ref_table = &ref;
	_attr_map.clear();
	_dim_map.clear();
	_topk = 1;
	_selectivity = -1.0f;
	_index = index;
	_count = 0;
	is_load_balanced = false;
	use_load_balance = false;
}

GPUGenie::inv_table*
GPUGenie::query::ref_table()
{
	return _ref_table;
}

void GPUGenie::query::attr(int index, int low, int up, float weight)
{
	attr(index, low, up, weight, -1);
}

void GPUGenie::query::attr(int index, int value, float weight,
		float selectivity)
{
	attr(index, value, value, weight, selectivity);
}

void GPUGenie::query::attr(int index, int low, int up, float weight,
		float selectivity)
{
	if (index < 0 || index >= _ref_table->m_size())
		return;

	range new_attr;
	new_attr.low = low;
	new_attr.up = up;
	new_attr.weight = weight;
	new_attr.dim = index;
	new_attr.query = _index;
	new_attr.low_offset = 0;
	new_attr.up_offset = 0;
	new_attr.selectivity = selectivity;

	if (_attr_map.find(index) == _attr_map.end())
	{
		std::vector<range>* new_range_list = new std::vector<range>;
		_attr_map[index] = new_range_list;
	}

	_attr_map[index]->push_back(new_attr);
	_count++;
}

inline u64 GPUGenie::query::pack_dim_and_count(u32 dim, u64 count)
{
	u64 mask = u64((1u << 16) - 1u);
	return (u64(count) << 16) + (mask & u64(dim));
}
inline u32 GPUGenie::query::unpack_dim(u64 packed_data)
{
	u64 mask = u64((1u << 16) - 1u);
	return packed_data & mask;
}
inline u64 GPUGenie::query::unpack_count(u64 packed_data)
{
	return packed_data >> 16;
}

void GPUGenie::query::clear_dim(int index)
{
	if (_attr_map.find(index) == _attr_map.end())
	{
		return;
	}
	_count -= _attr_map[index]->size();
	_attr_map[index]->clear();
	free(_attr_map[index]);
	_attr_map.erase(index);
}

void GPUGenie::query::selectivity(float s)
{
	_selectivity = s;
}

float GPUGenie::query::selectivity()
{
	return _selectivity;
}

void GPUGenie::query::build_and_apply_load_balance(int max_load)
{
	inv_table& table = *_ref_table;
	this->build();

	vector<int>& inv_index = *table.inv_index();
	vector<int>& inv_pos = *table.inv_pos();

	if (max_load <= 0)
	{
		Logger::log(Logger::ALERT, "Please set a valid max_load.");
		return;
	}

	_dims.clear();
	//printf("Query %d processing...\n", _index);
	for (std::map<int, std::vector<dim>*>::iterator di = _dim_map.begin();
			di != _dim_map.end(); ++di)
	{
		std::vector<dim>& dims = *(di->second);
		int orginal_size = dims.size();

		for (int i = 0; i < orginal_size; ++i)
		{

			dim d = dims[i];
//			printf("d %d, low %d, up %d.\n", d.low >> 16, d.low & mask, d.up & mask);
			int low = d.low, up = d.up;
			int vi, pi;
			int count = 0;

			for (vi = low; vi <= up; ++vi)
			{
				pi = inv_index[vi];
				for (; pi < inv_index[vi + 1]; ++pi)
				{
					if (d.low == -1)
					{
						d.low = vi;
						d.low_offset = pi - inv_index[vi];
					}
					count += inv_pos[pi + 1] - inv_pos[pi];

					if (count >= max_load)
					{
						//printf(" query %d split list pi=%d inv_pos[%d]=%d  count=%d! \n", d.query,pi,pi,inv_pos[pi],count);
						dim new_dim;
						new_dim.weight = d.weight;
						new_dim.query = d.query;
						new_dim.low = d.low;
						new_dim.low_offset = d.low_offset;
						new_dim.up = vi;
						new_dim.up_offset = pi - inv_index[vi];
						_dims.push_back(new_dim);
						count = 0;

						d.low = -1;
					}

				}
			}

			if (d.low != -1)
			{
				dim new_dim;
				new_dim.weight = d.weight;
				new_dim.query = d.query;
				new_dim.low = d.low;
				new_dim.low_offset = d.low_offset;
				new_dim.up = vi == 0 ? 0 : vi - 1;
				new_dim.up_offset =
						vi == 0 ?
								inv_index[vi] :
								inv_index[vi] - inv_index[vi - 1];
				_dims.push_back(new_dim);
			}
		}

	}

	this->is_load_balanced = true;
}

void GPUGenie::query::apply_adaptive_query_range()
{
	inv_table& table = *_ref_table;
	//std::vector<inv_list>& lists = *table.inv_lists();

	if (table.build_status() == inv_table::not_builded)
	{
		Logger::log(Logger::ALERT,
				"Please build the inverted table before applying adaptive query range.");
		return;
	}

	u32 global_threshold =
			_selectivity > 0 ? u32(ceil(_selectivity * table.i_size())) : -1;
	u32 local_threshold;

	for (std::map<int, std::vector<range>*>::iterator di = _attr_map.begin();
			di != _attr_map.end(); ++di)
	{
		std::vector<range>* ranges = di->second;
		int index = di->first;

		for (unsigned int i = 0; i < ranges->size(); ++i)
		{
			range& d = ranges->at(i);
			if (d.selectivity > 0)
			{
				local_threshold = ceil(d.selectivity * table.i_size());
			}
			else if (_selectivity > 0)
			{
				local_threshold = global_threshold;
			}
			else
			{
				Logger::log(Logger::ALERT, "Please set valid selectivity!");
				return;
			}

			unsigned int count = 0;
			for (int vi = d.low; vi <= d.up; ++vi)
			{
                /*
				if (!lists[index].contains(vi))
					continue;
                */
                if(!table.list_contain(index, vi))
                    continue;

				//count += lists[index].index(vi)->size();
                count += table.get_posting_list_size(index, vi);
			}
			while (count < local_threshold)
			{
				if (d.low > 0)
				{
					d.low--;
				/*	if (!lists[index].contains(d.low))
						continue;
					count += lists[index].index(d.low)->size();*/
                    if(!table.list_contain(index, d.low))
                        continue;
                    count += table.get_posting_list_size(index, d.low);
				}

				//if (!lists[index].contains(d.up + 1))
                if(!table.list_contain(index, d.up+1))
				{
					if (d.low == 0)
						break;
				}
				else
				{
					d.up++;
					//count += lists[index].index(d.up)->size();
                    count += table.get_posting_list_size(index, d.up);
				}
			}
		}

	}

}

void GPUGenie::query::topk(int k)
{
	_topk = k;
}

int GPUGenie::query::topk()
{
	return _topk;
}

void GPUGenie::query::build()
{
	int low, up;
	float weight;
	inv_table& table = *_ref_table;
	for (std::map<int, std::vector<range>*>::iterator di = _attr_map.begin();
			di != _attr_map.end(); ++di)
	{
		int index = di->first;
		std::vector<range>& ranges = *(di->second);
		int d = index << _ref_table->shifter();
		//vector<inv_list>& inv_lists = *_ref_table->inv_lists();
		//inv_list& inv = inv_lists[index];

		if (ranges.empty())
		{
			continue;
		}

		if (_dim_map.find(index) == _dim_map.end())
		{
			std::vector<dim>* new_list = new std::vector<dim>;
			_dim_map[index] = new_list;
		}

		for (unsigned int i = 0; i < ranges.size(); ++i)
		{

			range& ran = ranges[i];
			low = ran.low;
			up = ran.up;
			weight = ran.weight;

			//if (low > up || low > inv.max() || up < inv.min())
            if(low > up || low > table.get_upperbound_of_list(index) || up < table.get_lowerbound_of_list(index))
			{
				continue;
			}

			dim new_dim;
			new_dim.weight = weight;
			new_dim.query = _index;
/*
			if (low < inv.min())
			{
				low = inv.min();
			}
*/
            low = low < table.get_lowerbound_of_list(index)?table.get_lowerbound_of_list(index):low;
/*
			if (up > inv.max())
			{
				up = inv.max();
			}
*/
            up = up > table.get_upperbound_of_list(index)?table.get_upperbound_of_list(index):up;

			//new_dim.low = d + low - inv.min();
            new_dim.low = d + low -table.get_lowerbound_of_list(index);
			//new_dim.up = d + up - inv.min();
			new_dim.up = d+ up - table.get_lowerbound_of_list(index);
            new_dim.low_offset = ran.low_offset;
			new_dim.up_offset = ran.up_offset;

			_dim_map[index]->push_back(new_dim);
		}

	}
}

void GPUGenie::query::build_compressed()
{
	int low, up;
	float weight;
	inv_table& table = *_ref_table;
	map<int, int>::iterator lower_bound;

	for (std::map<int, std::vector<range>*>::iterator di = _attr_map.begin();
			di != _attr_map.end(); ++di)
	{
		int index = di->first;
		std::vector<range>& ranges = *(di->second);

		int d = index << _ref_table->shifter();
		//vector<inv_list>& inv_lists = *_ref_table->inv_lists();
		//inv_list& inv = inv_lists[index];

		if (ranges.empty())
		{
			continue;
		}
		if (_dim_map.find(index) == _dim_map.end())
		{
			std::vector<dim>* new_list = new std::vector<dim>;
			_dim_map[index] = new_list;
		}

		for (unsigned int i = 0; i < ranges.size(); ++i)
		{
			range& ran = ranges[i];
			low = ran.low;
			up = ran.up;
			weight = ran.weight;

			//if (low > up || low > inv.max() || up < inv.min())
            if (low > up || low > table.get_upperbound_of_list(index) || up < table.get_lowerbound_of_list(index))
			{
				continue;
			}

			dim new_dim;
			new_dim.weight = weight;
			new_dim.query = _index;
/*
			if (low < inv.min())
			{
				low = inv.min();
			}
			if (up > inv.max())
			{
				up = inv.max();
			}
*/
            low = low < table.get_lowerbound_of_list(index)?table.get_lowerbound_of_list(index):low;
            up = up > table.get_upperbound_of_list(index)?table.get_upperbound_of_list(index):up;

			//lower_bound = _ref_table->ck_map()->lower_bound(d + low - inv.min());
            lower_bound = table.ck_map()->lower_bound(d + low - table.get_lowerbound_of_list(index));

			new_dim.low = lower_bound->second;
			new_dim.low_offset = ran.low_offset;
			new_dim.up_offset = ran.up_offset;
			//lower_bound = _ref_table->ck_map()->lower_bound(d + up - inv.min());
            lower_bound = table.ck_map()->lower_bound(d + up - table.get_lowerbound_of_list(index));

			//if (lower_bound->first - d + inv.min() != up)
			if(lower_bound->first - d + table.get_lowerbound_of_list(index) != up)
            {
				lower_bound--;
			}
			new_dim.up = lower_bound->second;

			if (new_dim.up < new_dim.low)
			{
				continue;
			}

			_dim_map[index]->push_back(new_dim);
		}
	}
}

int GPUGenie::query::dump(vector<dim>& vout)
{
	if (is_load_balanced)
	{
		for (unsigned int i = 0; i < _dims.size(); ++i)
		{
			vout.push_back(_dims[i]);
		}
		return _dims.size();
	}
	int count = 0;
	for (std::map<int, std::vector<dim>*>::iterator di = _dim_map.begin();
			di != _dim_map.end(); ++di)
	{
		std::vector<dim>& ranges = *(di->second);
		count += ranges.size();
		//vout.insert(vout.end(), ranges.begin(), ranges.end());
		for (unsigned int i = 0; i < ranges.size(); ++i)
		{
			vout.push_back(ranges[i]);
		}
	}
	//printf("Query %d: Total number of dims dumped: %d.\n", _index, count);
	return count;
}

int GPUGenie::query::index()
{
	return _index;
}

int GPUGenie::query::count_ranges()
{
//	  int count = 0;
//	  for(std::map<int, std::vector<range>*>::iterator di = _attr_map.begin(); di != _attr_map.end(); ++di)
//	  {
//	    std::vector<range>& ranges = *(di->second);
//	    count += ranges.size();
//	  }
	return _count;
}

void GPUGenie::query::print(int limit)
{
	Logger::log(Logger::DEBUG, "This query has %d dimensions.",
			_attr_map.size());
	int count = limit;
	for (std::map<int, std::vector<range>*>::iterator di = _attr_map.begin();
			di != _attr_map.end(); ++di)
	{
		std::vector<range>& ranges = *(di->second);
		for (unsigned int i = 0; i < ranges.size(); ++i)
		{
			if (count == 0)
				return;
			if (count > 0)
				count--;
			range& d = ranges[i];
			Logger::log(Logger::DEBUG,
					"dim %d from query %d: low %d(offset %d), up %d(offset %d), weight %.2f, selectivity %.2f.",
					d.dim, d.query, d.low, d.low_offset, d.up, d.up_offset,
					d.weight, d.selectivity);
		}
	}
}

void GPUGenie::query::print()
{
	print(-1);
}

