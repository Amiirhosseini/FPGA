module FullAdder(input x , input y , input c,output s ,output C);
wire s_wire;
wire C1_wire;
wire C2_wire;

HalfAdder U1 ( x , y , s_wire , C1_wire);
HalfAdder U2 ( s_wire , c , s , C2_wire);

assign C = C1_wire | C2_wire;
endmodule
