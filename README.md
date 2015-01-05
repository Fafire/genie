libGaLG
===
libGaLG is a fast GPU inverted list searching library. It builds the database from a csv file or a vector of instances. Then libGaLG will consturct the inverted list table and transfer it to the device. libGaLG provides a simple way to perform the k match queries. User may define queries and their matching ranges, then directly call the matching funtion. The library will parallel process all queries and save the matching result into a device_vector. A top k search can also be simply perfromed. libGaLG uses parallel searching to determine the top k values in a vector. It is much faster than the CPU searching algorithm. All device methods are wrapped in host methods. Developers are not required to configure the device function call.

### Install

You are required to install gcc, g++, nvcc and cmake. Please make sure that the cmake version is greater than version 3.0.0.

To install the libGaLG, directlly call the install script, `install.sh`.