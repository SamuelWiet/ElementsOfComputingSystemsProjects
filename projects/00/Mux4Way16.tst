// File name: projects/00/Mux4Way16.tst

load Mux4Way16.hdl,
output-file Mux4Way16.out,
compare-to Mux4Way16.cmp,
output-list a%X1.4.1 b%X1.4.1 c%X1.4.1 d%X1.4.1 sel%D2.1.2 out%X1.4.1;

set a 0,
set b 0,
set c 0,
set d 0,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

set sel 2,
eval,
output;

set sel 3,
eval,
output;

set a %X1234,
set b %X2345,
set c %X3456,
set d %X4567,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

set sel 2,
eval,
output;

set sel 3,
eval,
output;

