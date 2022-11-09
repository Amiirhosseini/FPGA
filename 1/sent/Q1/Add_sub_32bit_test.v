module Add_sub_32bit_test;
reg [31:0] a,b;
reg add_sub;
wire[31:0] s;
wire carry;

Add_sub_32bit U1 (a,b,~add_sub,s,carry);

initial begin

a=546;
b=654;
add_sub=0;


#30;
add_sub=1;
a=546;
b=654;

#30
a=222;
b=222;

#30
a=222;
b=222;
add_sub=0;



end 

endmodule