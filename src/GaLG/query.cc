#include "query.h"
#include <algorithm>
#include <stdio.h>
#include <stdlib.h>

typedef unsigned int u32;
typedef unsigned long long u64;

GaLG::query::query(inv_table* ref, int index)
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

GaLG::query::query(inv_table& ref, int index)
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

GaLG::inv_table*
GaLG::query::ref_table()
{
  return _ref_table;
}

void
GaLG::query::attr(int index, int low, int up, float weight)
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

  if(_attr_map.find(index) == _attr_map.end())
  {
    std::vector<range>* new_range_list = new std::vector<range>;
    _attr_map[index] = new_range_list;
  }

  _attr_map[index]->push_back(new_attr);
  _count ++;
}

inline u64
GaLG::query::pack_dim_and_count(u32 dim, u64 count)
{
	u64 mask = u64((1u << 16) - 1u);
	return (u64(count) << 16) + (mask & u64(dim));
}
inline u32
GaLG::query::unpack_dim(u64 packed_data)
{
	u64 mask = u64((1u << 16) - 1u);
	return packed_data & mask;
}
inline u64
GaLG::query::unpack_count(u64 packed_data)
{
	return packed_data >> 16;
}

void
GaLG::query::clear_dim(int index)
{
  if(_attr_map.find(index) == _attr_map.end())
  {
    return;
  }
  _count -= _attr_map[index]->size();
  _attr_map[index]->clear();
  free(_attr_map[index]);
  _attr_map.erase(index);
}


//TODO: split_hot_dims must be rewritten!!!!!!
// void
// GaLG::query::split_hot_dims(GaLG::query& hot_dims_query, int num)
// {
// 	std::vector<inv_list>& inv_lists = *((*_ref_table).inv_lists());
// 	std::vector<u64> counts;
// 	counts.resize(inv_lists.size());
// 	u64 count_items_on_dim;

// 	for(int di = 0; di < inv_lists.size(); ++di)
// 	{
// 		if(_attr[di].up == -1) continue;

// 		count_items_on_dim = 0ull;
// 		for(int ni = _attr[di].low; ni <= _attr[di].up; ++ni)
// 		{
// 			if(!inv_lists[di].contains(ni)) continue;

// 			std::vector<int> index_list = *(inv_lists[di].index(ni));
// 			count_items_on_dim += index_list.size();
// 		}

// 		counts.push_back(pack_dim_and_count(u32(di), count_items_on_dim));
// 	}

// 	std::make_heap(counts.begin(), counts.end());
// 	std::vector<int> hot_index;


// 	//extract top [num] hot dim index
// 	for(int i = 0; i < num && i < _ref_table->m_size(); ++i)
// 	{
// 		hot_index.push_back(unpack_dim(counts.front()));
// 		std::pop_heap(counts.begin(), counts.end());
// 		counts.pop_back();
// 	}

// 	//cut hot dims from self to the given hot_dims_query
// 	for(int i = 0; i < hot_index.size(); ++i)
// 	{
// 		int index = hot_index[i];
// 		if (index < 0 || index >= _attr.size())
// 			continue;
// 		hot_dims_query.attr(index, _attr[index].low, _attr[index].up, _attr[index].weight);
// 		clear_dim(index);
// 	}
// }

void
GaLG::query::selectivity(float s)
{
	if(s > 0) _selectivity = s;
	//else printf("Please choose a selectivity greater than 0.\n");
}

float
GaLG::query::selectivity()
{
	return _selectivity;
}

void
GaLG::query::build_and_apply_load_balance(int max_load)
{
	inv_table& table = *_ref_table;
	this->build();
	vector<int> inv = *table.inv();
	vector<int> inv_index = *table.inv_index();
	vector<int> inv_pos = *table.inv_pos();
	int mask = (1 << 16) -1;

	if(max_load <= 0)
	{
		printf("Please set a valid max_load.\n");
		return;
	}
	_dims.clear();
	printf("Query %d processing...\n", _index);
	for(std::map<int, std::vector<dim>*>::iterator di = _dim_map.begin(); di != _dim_map.end(); ++di)
	{
		std::vector<dim>& dims = *(di->second);
		int orginal_size = dims.size();

		for(int i = 0; i < orginal_size; ++i)
		{

			dim d = dims[i];
//			printf("d %d, low %d, up %d.\n", d.low >> 16, d.low & mask, d.up & mask);
			int low = d.low, up = d.up;
			int vi, pi;
			int count = 0;
			for(vi = low; vi <= up; ++vi)
			{
				pi = inv_index[vi];
				for(; pi < inv_index[vi+1];++pi)
				{
					if(d.low == -1)
					{
						d.low = vi;
						d.low_offset = pi - inv_index[vi];
					}
					count += inv_pos[pi+1]-inv_pos[pi];
					if(count >= max_load)
					{
						//printf("query %d split list!\n", d.query);
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
			if(d.low != -1)
			{
				dim new_dim;
				new_dim.weight = d.weight;
				new_dim.query = d.query;
				new_dim.low = d.low;
				new_dim.low_offset = d.low_offset;
				new_dim.up = vi == 0 ? 0 : vi - 1;
				new_dim.up_offset = vi == 0 ? inv_index[vi]: inv_index[vi] - inv_index[vi-1];
				_dims.push_back(new_dim);
			}
		}
	}
	printf("query %d _dims size is %d\n",_index,_dims.size());
//	for(int i = 0; i < _dims.size(); ++i)
//	{
//		dim& d = _dims[i];
//		printf("low d %d, v %d, o %d, up d %d, v %d, o %d.\n", d.low >>16, d.low & mask, d.low_offset,
//															   d.up >> 16, d.up & mask, d.up_offset);
//	}
	this->is_load_balanced = true;
}

void
GaLG::query::apply_adaptive_query_range()
{
	inv_table& table = *_ref_table;
	std::vector<inv_list>& lists = *table.inv_lists();

	if(table.build_status() == inv_table::not_builded)
	{
		printf("Please build the inverted table before applying adaptive query range.\n");
		return;
	}

	if(_selectivity <= 0.0f)
	{
		printf("Please set a valid selectivity.\n");
		return;
	}

	u32 threshold = u32(_selectivity * table.i_size());
	if(_selectivity * table.i_size() - threshold > 0)
		threshold += 1;

	for(std::map<int, std::vector<range>*>::iterator di = _attr_map.begin(); di != _attr_map.end(); ++di)
	{
		std::vector<range>* ranges = di->second;
		int index = di->first;

		for(int i = 0; i < ranges->size(); ++i)
		{
			range& d = ranges->at(i);
		  int count = 0;
		  for(int vi = d.low; vi <= d.up; ++vi)
		  {
			if(!lists[index].contains(vi)) continue;
			count += lists[index].index(vi)->size();
		  }
		  while(count < threshold)
		  {
			if(d.low > 0)
			{
			  d.low --;
			  if(!lists[index].contains(d.low)) continue;
			  count += lists[index].index(d.low)->size();
			}

			if(!lists[index].contains(d.up + 1))
			{
			  if(d.low == 0) break;
			} else
			{
			  d.up++;
			  count += lists[index].index(d.up)->size();
			}
		  }
		}

	}

}

void
GaLG::query::topk(int k)
{
  _topk = k;
}

int
GaLG::query::topk()
{
  return _topk;
}

void
GaLG::query::build()
{
  int index, low, up;
  float weight;
  for(std::map<int, std::vector<range>*>::iterator di = _attr_map.begin(); di != _attr_map.end(); ++di)
  {
      int index = di->first;
      std::vector<range>& ranges = *(di->second);
      int d = index << _ref_table->shifter();
      vector<inv_list>& inv_lists = *_ref_table->inv_lists();
      inv_list& inv = inv_lists[index];

      if(ranges.empty())
      {
        continue;
      }

      if(_dim_map.find(index) == _dim_map.end())
      {
        std::vector<dim>* new_list = new std::vector<dim>;
        _dim_map[index] = new_list;
      }

      for(int i = 0; i < ranges.size(); ++i)
      {

    	range& ran = ranges[i];
        low = ran.low;
        up = ran.up;
        weight = ran.weight;

        if (low > up || low > inv.max() || up < inv.min())
        {
          continue;
        }

        dim new_dim;
        new_dim.weight = weight;
        new_dim.query = _index;

        if (low < inv.min())
          {
            low = inv.min();
          }

        if (up > inv.max())
          {
            up = inv.max();
          }

        new_dim.low = d + low - inv.min();
        new_dim.up = d + up - inv.min();
        new_dim.low_offset = ran.low_offset;
        new_dim.up_offset = ran.up_offset;

        _dim_map[index]->push_back(new_dim);
      }

    }
}

void
GaLG::query::build_compressed()
{
  int index, low, up;
  float weight;
  map<int, int>::iterator lower_bound;

  for(std::map<int, std::vector<range>*>::iterator di = _attr_map.begin(); di != _attr_map.end(); ++di)
  {
      int index = di->first;
      std::vector<range>& ranges = *(di->second);

      int d = index << _ref_table->shifter();
      vector<inv_list>& inv_lists = *_ref_table->inv_lists();
      inv_list& inv = inv_lists[index];

      if(ranges.empty())
      {
        continue;
      }
      if(_dim_map.find(index) == _dim_map.end())
      {
    	  std::vector<dim>* new_list = new std::vector<dim>;
        _dim_map[index] = new_list;
      }

      for(int i = 0; i < ranges.size(); ++i)
      {
    	  range& ran= ranges[i];
        low = ran.low;
        up = ran.up;
        weight = ran.weight;

        if (low > up || low > inv.max() || up < inv.min())
        {
          continue;
        }

        dim new_dim;
        new_dim.weight = weight;
        new_dim.query = _index;

        if (low < inv.min())
          {
            low = inv.min();
          }
        if (up > inv.max())
          {
            up = inv.max();
          }

        lower_bound = _ref_table->ck_map()->lower_bound(d + low - inv.min());
        new_dim.low = lower_bound->second;
        new_dim.low_offset = ran.low_offset;
        new_dim.up_offset = ran.up_offset;
        lower_bound = _ref_table->ck_map()->lower_bound(d + up - inv.min());
        if (lower_bound->first - d + inv.min() != up)
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

int
GaLG::query::dump(vector<dim>& vout)
{
  if(is_load_balanced)
  {
	  for(int i = 0; i < _dims.size(); ++i)
	  {
		  vout.push_back(_dims[i]);
	  }
	  return _dims.size();
  }
  int count = 0;
  for(std::map<int, std::vector<dim>*>::iterator di = _dim_map.begin(); di != _dim_map.end(); ++di)
  {
    std::vector<dim>& ranges = *(di->second);
    count += ranges.size();
    //vout.insert(vout.end(), ranges.begin(), ranges.end());
    for(int i = 0; i < ranges.size(); ++i)
    {
    	vout.push_back(ranges[i]);
    }
  }
  //printf("Query %d: Total number of dims dumped: %d.\n", _index, count);
  return count;
}

int
GaLG::query::count_ranges()
{
//	  int count = 0;
//	  for(std::map<int, std::vector<range>*>::iterator di = _attr_map.begin(); di != _attr_map.end(); ++di)
//	  {
//	    std::vector<range>& ranges = *(di->second);
//	    count += ranges.size();
//	  }
	  return _count;
}

void
GaLG::query::print(int limit)
{
	printf("This query has %d dimensions.\n", _attr_map.size());
  int count = limit;
  for(std::map<int, std::vector<range>*>::iterator di = _attr_map.begin(); di != _attr_map.end(); ++di)
  {
      int index = di->first;
      std::vector<range>& ranges = *(di->second);
      for(int i = 0; i < ranges.size(); ++i)
      {
    	  if(count == 0) return;
    	  if(count > 0) count --;
    	  range& d = ranges[i];
        printf("dim %d from query %d: low %d(offset %d), up %d(offset %d), weight %.2f.\n",
                d.dim,       d.query,  d.low,d.low_offset,d.up,d.up_offset,  d.weight);
      }
  }
}

void GaLG::query::print()
{
  print(-1);
}

