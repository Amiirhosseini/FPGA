module Decoder_3to8( s0 , s1, s2,E, D0,D1, D2 , D3, D4,D5,D6,D7);

input s0 , s1, s2,E;
output D0,D1, D2 , D3, D4,D5,D6,D7;
wire E1,E2;
//reg D0,D1, D2 , D3, D4,D5,D6,D7;

Decoder_1to2 U1 (s2,E,E1,E2);
Decoder_2to4 U2 (s0,s1,E1,D0,D1,D2,D3);
Decoder_2to4 U3 (s0,s1,E2,D4,D5,D6,D7);

//always @(E) begin


//if(E==0) begin
//D0=0;
//D1=0;
//D2=0;
//D3=0;
//D4=0;
//D5=0;
//D6=0;
//D7=0;
//end

//end

endmodule



