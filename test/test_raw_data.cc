#include "GaLG.h"

#include <assert.h>
#include <vector>
#include <string>
using namespace std;

using namespace GaLG;

int main()
{
  raw_data data;
  tool::csv("../../static/countrylist.csv", data);

  vector<string>* re;
  re = data.col("Sort Order");
  assert((*re)[0] == "1.1");

  re = data.col("Common Name");
  assert((*re)[0] == "Afghanistan");

  return 0;
}