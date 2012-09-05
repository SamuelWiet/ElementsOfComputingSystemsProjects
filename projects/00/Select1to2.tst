// File name: projects/00/Select1to2.tst

load Select1to2.hdl,
output-file Select1to2.out,
compare-to Select1to2.cmp,
output-list in%B1.1.1 a%B1.1.1 b%B1.1.1;

set in 0,
eval,
output;

set in 1,
eval,
output;
