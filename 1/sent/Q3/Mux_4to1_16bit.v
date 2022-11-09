module Mux_4to1_16bit(out, a, b, c, d, s0, s1);


output[15:0] out;
input[15:0] a, b, c, d; 
input s0, s1;

wire m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15;

Mux_4to1 M1 ( out[0],a[0],b[0],c[0],d[0],s0,s1);
Mux_4to1 M2 ( out[1],a[1],b[1],c[1],d[1],s0,s1);
Mux_4to1 M3 ( out[2],a[2],b[2],c[2],d[2],s0,s1);
Mux_4to1 M4 ( out[3],a[3],b[3],c[3],d[3],s0,s1);
Mux_4to1 M5 ( out[4],a[4],b[4],c[4],d[4],s0,s1);
Mux_4to1 M6 ( out[5],a[5],b[5],c[5],d[5],s0,s1);
Mux_4to1 M7 ( out[6],a[6],b[6],c[6],d[6],s0,s1);
Mux_4to1 M8 ( out[7],a[7],b[7],c[7],d[7],s0,s1);
Mux_4to1 M9 ( out[8],a[8],b[8],c[8],d[8],s0,s1);
Mux_4to1 M10 ( out[9],a[9],b[9],c[9],d[9],s0,s1);
Mux_4to1 M11 ( out[10],a[10],b[10],c[10],d[10],s0,s1);
Mux_4to1 M12 ( out[11],a[11],b[11],c[11],d[11],s0,s1);
Mux_4to1 M13 ( out[12],a[12],b[12],c[12],d[12],s0,s1);
Mux_4to1 M14 ( out[13],a[13],b[13],c[13],d[13],s0,s1);
Mux_4to1 M15 ( out[14],a[14],b[14],c[14],d[14],s0,s1);

endmodule
