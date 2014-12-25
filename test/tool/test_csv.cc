#include "GaLG.h"

#include <assert.h>

using namespace GaLG;

int main()
{
  raw_data data;
  int lines = tool::csv("../../static/countrylist.csv", data);
  assert(lines == 273);

  assert(data.i_size() == 272);
  assert(data.m_size() == 14);
  assert(data.meta(0) -> compare("Sort Order") == 0);
  assert(data.meta(data.m_size() - 1) -> compare("IANA Country Code TLD") == 0);
  assert((*data.row(0))[0].compare("1.1") == 0);
  assert((*data.row(271))[0].compare("272") == 0);

  return 0;
}
