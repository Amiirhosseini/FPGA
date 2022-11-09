module Station_test;

wire C,D;
reg sel,A,B;

Station S1 (sel, A, B, C,D);

initial begin
sel=0;
A=0;
B=0;

#10;
B=1;

#10;
A=1;

#20;
sel=1;

#10;
B=0;

#10;
A=0;

#30;
sel=0;
A=0;
B=0;

end 

endmodule


