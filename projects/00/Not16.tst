// File name: projects/00/Not16.tst

load Not16.hdl,
output-file Not16.out,
compare-to Not16.cmp,
output-list in%X1.6.1 out%X1.6.1;

set in 0,
eval,
output;

set in 1,
eval,
output;

set in -1,
eval,
output;

set in %Xff0f,
eval,
output;