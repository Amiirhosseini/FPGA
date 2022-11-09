module Mux_32to1_16bit(out, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32, s0, s1 , s2 , s3 , s4);

output[15:0] out;
input[15:0] a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32; 
input s0, s1 , s2 , s3 , s4;

wire[15:0] m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16;

Mux_4to1_16bit M1 (m1, a1, a2, a3, a4, s0, s1);
Mux_4to1_16bit M2 (m2, a5, a6, a7, a8, s0, s1);
Mux_4to1_16bit M3 (m3, a9, a10, a11, a12, s0, s1);
Mux_4to1_16bit M4 (m4, a13, a14, a15, a16, s0, s1);
Mux_4to1_16bit M5 (m5, a17, a18, a19, a20, s0, s1);
Mux_4to1_16bit M6 (m6, a21, a22, a23, a24, s0, s1);
Mux_4to1_16bit M7 (m7, a25, a26, a27, a28, s0, s1);
Mux_4to1_16bit M8 (m8, a29, a30, a31, a32, s0, s1);


Mux_4to1_16bit M9 (m9, m1, m2, m3, m4, s2, s3);
Mux_4to1_16bit M10 (m10, m5, m6, m7, m8, s2, s3);

Mux_4to1_16bit M11 (out, m9, m10, 0, 0, s4, 0);

endmodule


