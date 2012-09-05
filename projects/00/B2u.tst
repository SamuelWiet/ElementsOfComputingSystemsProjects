// File name: projects/00/B2u.tst

load B2u.hdl,
output-file B2u.out,
compare-to B2u.cmp,
output-list in%B1.1.1 a%B1.1.1 b%B1.1.1;

set in 0,
eval,
output;

set in 1,
eval,
output;
