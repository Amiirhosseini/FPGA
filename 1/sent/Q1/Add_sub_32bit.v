module Add_sub_32bit(input[31:0] a,input[31:0] b,input add_sub,output[31:0] s,output carry);

integer i;
reg[31:0] xor_b;
//assign xor_b=b ^ add_sub;
//assign add_sub=~add_sub;

//xor U2(xor_b,b,add_sub);

always @(*) begin



for(i=0;i<32;i=i+1) 
	xor_b[i]= add_sub ^ b[i];
	


end

wire c1,c2,c3;
wire c0,carry_out;
assign c0= add_sub ^ 0;
assign carry_out=add_sub ^ carry;

Adder_8bit A1 (a[7:0], xor_b[7:0],s[7:0],c0,c1);
Adder_8bit A2 (a[15:8], xor_b[15:8],s[15:8],c1,c2);
Adder_8bit A3 (a[23:16], xor_b[23:16],s[23:16],c2,c3);
Adder_8bit A4 (a[31:24], xor_b[31:24],s[31:24],c3,carry);




endmodule


