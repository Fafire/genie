#ifndef GaLG_tool_parser_h
#define GaLG_tool_parser_h

#include "GaLG/raw_data.h"

namespace GaLG {
  namespace parser {
    /**
     * @brief Parsing the csv file.
     * @details Reading data from the csv file and
     *          store the information as a raw_data
     *          instance.
     * 
     * @param file The path to the csv file.
     * @param data The reference to the raw_data instance.
     *             The data in this instance will be replaced
     *             by the data read from the csv file.
     * 
     * @return Lines of csv file.
     */
    int csv(string file, raw_data& data);
  }
}

#endif
