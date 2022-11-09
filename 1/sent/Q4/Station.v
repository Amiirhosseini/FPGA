module Station(sel, A, B, C,D);

input [7:0] A,B;
output [7:0] C,D;
input sel;
reg [7:0] C,D;

always @(sel,A,B) begin

C <=(sel)? B : A;
D <=(sel)? A : B;

end

endmodule