// File name: projects/00/Or8Way.tst

load Or8Way.hdl,
output-file Or8Way.out,
compare-to Or8Way.cmp,
output-list in%B1.8.1 out%B1.3.1;

set in 0,
eval,
output;

set in %Xff,
eval,
output;

set in %X01,
eval,
output;

set in %X02,
eval,
output;

set in %X04,
eval,
output;

set in %X08,
eval,
output;

set in %X10,
eval,
output;

set in %X20,
eval,
output;

set in %X40,
eval,
output;

set in %X80,
eval,
output;
