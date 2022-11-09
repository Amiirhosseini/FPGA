module Mux4to1_test;

wire out;
reg a,b,c,d,s0,s1;

Mux_4to1 U1 (out, a, b, c, d, s0, s1);

initial begin 
a=0;
b=0;
c=0;
d=0;
s0=0;
s1=0;

#10;
a=1;  

#20;
s0=1;

#10;
b=1;

end 

endmodule

