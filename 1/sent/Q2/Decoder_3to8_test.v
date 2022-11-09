module Decoder_3to8_test;

wire D0,D1, D2 , D3, D4,D5,D6,D7;
reg s0 , s1, s2,E;

Decoder_3to8 U1(s0 , s1, s2,E,D0,D1, D2 , D3, D4,D5,D6,D7);

initial begin
s0=0;
s1=0;
s2=0;
E=0;

#10;
s0=1;

#10;
E=1;

#10;
s2=1;


#10;
s1=1;


#20;
E=0;

end

endmodule
