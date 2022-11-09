module Decoder_2to4(input I0 ,input I1,input E,output D1,output D2 ,output D3,output D4);
wire Y1,Y0;
Decoder_1to2 U1 (I1,E,Y1,Y0);
Decoder_1to2 U2 (I0,Y1,D1,D2);
Decoder_1to2 U3 (I0,Y0,D3,D4);
endmodule

