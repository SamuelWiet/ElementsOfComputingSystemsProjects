// File name: projects/00/Mux16.tst

load Mux16.hdl,
output-file Mux16.out,
compare-to Mux16.cmp,
output-list a%X1.6.1 b%X1.6.1 sel%B1.3.1 out%X1.6.1;

set a 0,
set b 0,
set sel 0,
eval,
output;

set a -1,
set b 2,
set sel 0,
eval,
output;

set a %Xff0f,
set b %Xf0ff,
set sel 0,
eval,
output;

set a 0,
set b 0,
set sel 1,
eval,
output;

set a -1,
set b 2,
set sel 1,
eval,
output;

set a %Xff0f,
set b %Xf0ff,
set sel 1,
eval,
output;
