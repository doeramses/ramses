$offdigit

set Inter / 1*500 /;
set Index / 1*5122 /;
set Value / B, T /;

table Param(Index, Value)
$include "dkozak#cit2_gams.dat"
;

parameter minT, maxT, midT, intT, delT;

minT = smin(Index, Param(Index, 'T'));
maxT = smax(Index, Param(Index, 'T'));
midT = (maxT + minT) / 2.0;

intT = (maxT - minT) * 1.1;
minT = midT - 0.5*intT;
maxT = midT + 0.5*intT;

delT = intT / card(Inter);

parameter valT(Inter);
valT(Inter) = minT + delT*(ord(Inter) - 1);

positive variable p1, p2, p3, p4, p5;

p1.l = 0;
p2.l = 0;
p3.l = 0;
p4.l = 0;
p5.l = 3;

variable area;
equation d_area;

d_area.. area =e= sum(Inter, p1 + p2*valT(Inter) + p3*valT(Inter)*valT(Inter) + p4*valT(Inter)**p5);

equation d_min(Index);

d_min(Index)..
  Param(Index, 'T') =g= p1 + p2*Param(Index, 'B') + p3*Param(Index, 'B')*Param(Index, 'B') + p4*Param(Index, 'B')**p5;

model regress /all/;

solve regress using nlp maximizing area;

