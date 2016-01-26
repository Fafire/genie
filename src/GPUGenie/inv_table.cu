#include <stdio.h>
#include <fstream>
#include <boost/serialization/map.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <boost/archive/binary_oarchive.hpp>
#include <exception>
#include "raw_data.h"
#include "Logger.h"

#include "inv_table.h"

using namespace GPUGenie;

void GPUGenie::inv_table::init()
{
	_shifter = 16;
	_size = -1;
	_build_status = not_builded;
	_inv_lists.clear();
	_ck.clear();
	_inv.clear();
	_inv_index.clear();
}

bool GPUGenie::inv_table::cpy_data_to_gpu()
{
	cudaMalloc(&d_ck_p, sizeof(int) * _ck.size());
	cudaMemcpy(d_ck_p, &_ck[0], sizeof(int) * _ck.size(),
			cudaMemcpyHostToDevice);

	cudaMalloc(&d_inv_p, sizeof(int) * _inv.size());
	cudaMemcpy(d_inv_p, &_inv[0], sizeof(int) * _inv.size(),
			cudaMemcpyHostToDevice);

	cudaMalloc(&d_inv_index_p, sizeof(int) * _inv_index.size());
	cudaMemcpy(d_inv_index_p, &_inv_index[0], sizeof(int) * _inv_index.size(),
			cudaMemcpyHostToDevice);

	cudaMalloc(&d_inv_pos_p, sizeof(int) * _inv_pos.size());
	cudaMemcpy(d_inv_pos_p, &_inv_pos[0], sizeof(int) * _inv_pos.size(),
			cudaMemcpyHostToDevice);

	return true;
}

void GPUGenie::inv_table::clear()
{
	_build_status = not_builded;
	_inv_lists.clear();
	_ck.clear();
	_inv.clear();
	_ck_map.clear();
	clear_gpu_mem();
}

GPUGenie::inv_table::~inv_table()
{
	if (is_stored_in_gpu == true)
	{
		cudaFree(d_inv_p);
		cudaFree(d_inv_index_p);
		cudaFree(d_inv_pos_p);
		cudaFree(d_ck_p);
	}
}

void GPUGenie::inv_table::clear_gpu_mem()
{
	if (is_stored_in_gpu == false)
		return;

	cudaFree(d_inv_p);
	cudaFree(d_inv_index_p);
	cudaFree(d_inv_pos_p);
	cudaFree(d_ck_p);
	is_stored_in_gpu = false;

}

bool GPUGenie::inv_table::empty()
{
	return _size == -1;
}

int GPUGenie::inv_table::m_size()
{
    return _dim_size;
	//return _inv_lists.size();
}

int GPUGenie::inv_table::i_size()
{
	return _size <= -1 ? 0 : _size;
}

int GPUGenie::inv_table::shifter()
{
	return _shifter;
}

void GPUGenie::inv_table::append(inv_list& inv)
{
	if (_size == -1 || _size == inv.size())
	{
		_build_status = not_builded;
		_size = inv.size();
		_inv_lists.push_back(inv);

        _dim_size = _inv_lists.size();
        inv_list_upperbound.push_back(inv.max());
        inv_list_lowerbound.push_back(inv.min());
	}
}

void GPUGenie::inv_table::append(inv_list* inv)
{
	if (inv != NULL)
	{
		append(*inv);
	}
}

int
GPUGenie::inv_table::get_upperbound_of_list(int index)
{
    if(index < inv_list_upperbound.size())
        return inv_list_upperbound[index];
    else
        return -1;
}

int
GPUGenie::inv_table::get_lowerbound_of_list(int index)
{
    if(index < inv_list_lowerbound.size())
        return inv_list_lowerbound[index];
    else
        return -1;
}


GPUGenie::inv_table::status GPUGenie::inv_table::build_status()
{
	return _build_status;
}

vector<inv_list>*
GPUGenie::inv_table::inv_lists()
{
	return &_inv_lists;
}

vector<int>*
GPUGenie::inv_table::ck()
{
	return &_ck;
}

vector<int>*
GPUGenie::inv_table::inv()
{
	return &_inv;
}

vector<int>*
GPUGenie::inv_table::inv_index()
{
	return &_inv_index;
}

vector<int>*
GPUGenie::inv_table::inv_pos()
{
	return &_inv_pos;
}

map<int, int>*
GPUGenie::inv_table::ck_map()
{
	return &_ck_map;
}

void
GPUGenie::inv_table::build(u64 max_length)
{
	_ck.clear(), _inv.clear();
	_inv_index.clear();
	_inv_pos.clear();
	unsigned int last;
	int key, dim, value;
	for (unsigned int i = 0; i < _inv_lists.size(); i++)
	{
		dim = i << _shifter;
		for (value = _inv_lists[i].min(); value <= _inv_lists[i].max(); value++)
		{
			key = dim + value - _inv_lists[i].min();
			vector<int>& index = *_inv_lists[i].index(value);

			if (_ck.size() <= (unsigned int) key)
			{
				last = _ck.size();
				_ck.resize(key + 1);
				_inv_index.resize(key + 1);
				for (; last < _ck.size(); last++)
				{
					_ck[last] = _inv.size();
					_inv_index[last] = _inv_pos.size();
				}
			}
			for (unsigned int j = 0; j < index.size(); j++)
			{
				if (j % max_length == 0)
				{
					_inv_pos.push_back(_inv.size());
				}
				_inv.push_back(index[j]);
				_ck[key] = _inv.size();
			}

		}

	}
	_inv_index.push_back(_inv_pos.size());
	_inv_pos.push_back(_inv.size());

	_build_status = builded;
	Logger::log(Logger::DEBUG, "inv_index size %d:", _inv_index.size());
	Logger::log(Logger::DEBUG, "inv_pos size %d:", _inv_pos.size());
	Logger::log(Logger::DEBUG, "inv size %d:", _inv.size());
}

void
GPUGenie::inv_table::build_compressed()
{
	_ck.clear(), _inv.clear(), _ck_map.clear();
	int key, dim, value;
	for (unsigned int i = 0; i < _inv_lists.size(); i++)
	{
		dim = i << _shifter;
		for (value = _inv_lists[i].min(); value <= _inv_lists[i].max(); value++)
		{
			key = dim + value - _inv_lists[i].min();
			vector<int>* indexes = _inv_lists[i].index(value);

			for (unsigned int j = 0; j < indexes->size(); j++)
			{
				_inv.push_back((*indexes)[j]);
				_ck_map[key] = _ck.size();
			}
			if (indexes->size() > 0)
			{
				_ck.push_back(_inv.size());
			}
		}
	}
	_build_status = builded_compressed;
}



void
GPUGenie::inv_table::write_to_file(const char* filename)
{
    if(_build_status == not_builded)
        return;
    ofstream ofs(filename, ios::binary|ios::trunc|ios::out);
    if(!ofs.is_open())
        return;

    ofs.write((char*)&_shifter, sizeof(int));
    ofs.write((char*)&_size, sizeof(int));
    ofs.write((char*)&_dim_size, sizeof(int));
    int temp_status = _build_status;
    ofs.write((char*)&temp_status, sizeof(int));

    unsigned int _ck_size = _ck.size();
    unsigned int _inv_size = _inv.size();
    unsigned int _inv_index_size = _inv_index.size();
    unsigned int _inv_pos_size = _inv_pos.size();
    
    ofs.write((char*)&_ck_size, sizeof(unsigned int));
    ofs.write((char*)&_inv_size, sizeof(unsigned int));
    ofs.write((char*)&_inv_index_size, sizeof(unsigned int));
    ofs.write((char*)&_inv_pos_size, sizeof(unsigned int));

    ofs.write((char*)&_ck[0], _ck_size*sizeof(int));
    ofs.write((char*)&_inv[0], _inv_size*sizeof(int));
    ofs.write((char*)&_inv_index[0],_inv_index_size*sizeof(int));
    ofs.write((char*)&_inv_pos[0], _inv_pos_size*sizeof(int));

    unsigned int _list_upperbound_size = inv_list_upperbound.size();
    unsigned int _list_lowerbound_size = inv_list_lowerbound.size();

    ofs.write((char*)&_list_upperbound_size, sizeof(unsigned int));
    ofs.write((char*)&_list_lowerbound_size, sizeof(unsigned int));

    ofs.write((char*)&inv_list_upperbound[0], _list_upperbound_size*sizeof(int));
    ofs.write((char*)&inv_list_upperbound[0], _list_upperbound_size*sizeof(int));


    if(_build_status == builded_compressed)
    {
        boost::archive::binary_oarchive oarch(ofs);
        oarch << _ck_map;
    }

    ofs.close();
    return;
}


void
GPUGenie::inv_table::read_from_file(const char* filename)
{


    ifstream ifs(filename, ios::binary|ios::in);
    if(!ifs.is_open())
        return;
    ifs.read((char*)&_shifter, sizeof(int));
    ifs.read((char*)&_size, sizeof(int));
    ifs.read((char*)&_dim_size, sizeof(int));
    int temp_status;
    ifs.read((char*)&temp_status, sizeof(int));
    _build_status = static_cast<status>(temp_status);


    unsigned int _ck_size;
    unsigned int _inv_size;
    unsigned int _inv_index_size;
    unsigned int _inv_pos_size;

    ifs.read((char*)&_ck_size, sizeof(unsigned int));
    ifs.read((char*)&_inv_size, sizeof(unsigned int));
    ifs.read((char*)&_inv_index_size, sizeof(unsigned int));
    ifs.read((char*)&_inv_pos_size, sizeof(unsigned int));

    _ck.resize(_ck_size);
    _inv.resize(_inv_size);
    _inv_index.resize(_inv_index_size);
    _inv_pos.resize(_inv_pos_size);

    ifs.read((char*)&_ck[0], _ck_size*sizeof(int));
    ifs.read((char*)&_inv[0], _inv_size*sizeof(int));
    ifs.read((char*)&_inv_index[0],_inv_index_size*sizeof(int));
    ifs.read((char*)&_inv_pos[0], _inv_pos_size*sizeof(int));
    
    unsigned int _list_upperbound_size;
    unsigned int _list_lowerbound_size;

    ifs.read((char*)&_list_upperbound_size, sizeof(unsigned int));
    ifs.read((char*)&_list_lowerbound_size, sizeof(unsigned int));

    inv_list_upperbound.resize(_list_upperbound_size);
    inv_list_lowerbound.resize(_list_lowerbound_size);
    ifs.read((char*)&inv_list_upperbound[0], _list_upperbound_size*sizeof(int));
    ifs.read((char*)&inv_list_upperbound[0], _list_upperbound_size*sizeof(int));


    if(_build_status == builded_compressed)
    {
        boost::archive::binary_iarchive iarch(ifs);
        iarch >> _ck_map;
    }

    ifs.close();
    return;
}


