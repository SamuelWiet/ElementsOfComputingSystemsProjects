// File name: projects/00/Or16.tst

load Or16.hdl,
output-file Or16.out,
compare-to Or16.cmp,
output-list a%X1.6.1 b%X1.6.1 out%X1.6.1;

set a 0,
set b 0,
eval,
output;

set a -1,
set b 2,
eval,
output;

set a %Xff0f,
set b %Xf0ff,
eval,
output;

set a %X0770,
set b %X0880,
eval,
output;
