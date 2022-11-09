module Decoder_1to2_test;

reg A,E;
wire D1,D2;

Decoder_1to2 U1 (A, E,D1, D2);


initial begin
A=0;
E=0;

#10;
A=1;

#10;
E=1;

#10;
A=0;


end

endmodule