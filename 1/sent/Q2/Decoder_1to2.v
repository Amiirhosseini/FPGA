module Decoder_1to2(A, E,D1, D2);
//assign (E==1) ? D1=~A :D1=0;
//assign (E==1) ? D2=A : D2=0 ;

input A, E;
output D1, D2;
reg D2,D1;

always @(A,E) begin

D1 <= (E==1)? ~A : 0;
D2 <= (E==1)? A : 0;

end

endmodule

