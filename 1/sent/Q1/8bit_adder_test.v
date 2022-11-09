module Adder_8bit_test;
reg[7:0] a ,b;
reg c_in;
wire[7:0] s;
wire carry;

Adder_8bit  U1 ( a, b, s ,c_in,carry);


initial begin
a=10010101;
b=11111111;
c_in=0;


#10;
a=10010101;
b=11111111;
c_in=1;


end 

endmodule