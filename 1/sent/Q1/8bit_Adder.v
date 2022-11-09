module Adder_8bit(input[7:0] a,input[7:0] b,output[7:0] s ,input c_in,output carry);

wire[7:0] c;

FullAdder F1 (a[0],b[0],c_in,s[0],c[0]);
FullAdder F2 (a[1],b[1],c[0],s[1],c[1]);
FullAdder F3 (a[2],b[2],c[1],s[2],c[2]);
FullAdder F4 (a[3],b[3],c[2],s[3],c[3]);
FullAdder F5 (a[4],b[4],c[3],s[4],c[4]);
FullAdder F6 (a[5],b[5],c[4],s[5],c[5]);
FullAdder F7 (a[6],b[6],c[5],s[6],c[6]);
FullAdder F8 (a[7],b[7],c[6],s[7],carry);
endmodule
