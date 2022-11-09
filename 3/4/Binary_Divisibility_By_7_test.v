//Amirreza Hosseini 9820363

module Binary_Divisibility_By_7_test();
reg STRING , Clock,Reset;
wire[3:0] Remainder;
wire Divisible;

Binary_Divisibility_By_7 U1 (STRING, Clock, Reset ,Remainder , Divisible);



always begin
#5 Clock = ~Clock; // clock period is 10 time units
end 

initial begin
Clock=0;

#10;
STRING=1;
#10;
STRING=0;
#10;
STRING=1;
#10;
STRING=0;
#10;
STRING=1;
#10;
#10;

STRING=1;
#10;
STRING=0;
#10;
STRING=1;
#10;
Reset=1;
#10;
#10;

STRING=1;
#10;
STRING=1;
#10;
STRING=1;

end

endmodule