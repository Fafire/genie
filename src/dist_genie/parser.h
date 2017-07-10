#ifndef __DISTGENIE_PARSER_H__
#define __DISTGENIE_PARSER_H__

#include <vector>

#include <genie/GPUGenie.h>
#include "config.h"
#include "container.h"

namespace distgenie
{
	namespace parser
	{
		void ParseConfigurationFile(GPUGenie::GPUGenie_Config &, DistGenieConfig &, const std::string);
		bool ValidateAndParseQuery(GPUGenie::GPUGenie_Config &, DistGenieConfig &, std::vector<Cluster> &,
            const std::string);
	}
}

#endif
