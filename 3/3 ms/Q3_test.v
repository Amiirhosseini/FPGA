
module TestSequenceDetector;
reg input_seq,clk,reset;
reg [1:0] lookfor_seq;
wire seq_detected;
wire [15:0] dseq_count;


SequenceDetector UA(input_seq,clk,reset,lookfor_seq,seq_detected,dseq_count);


 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end 
 initial begin

#14
lookfor_seq=2'b00; //Case 10111
reset=1'b0;
input_seq=1;
#10
input_seq=0;
#10
input_seq=1;
#10
input_seq=1;
#10
input_seq=1;

#20


lookfor_seq=2'b00;
reset=1'b0;
repeat (100) #3 input_seq=$random;

#20

lookfor_seq=2'b01;
reset=1'b0;
repeat (100) #3 input_seq=$random;
#20

lookfor_seq=2'b10;
reset=1'b0;
repeat (100) #3 input_seq=$random;

#20

lookfor_seq=2'b11;

repeat (100) begin 
#3 input_seq=$random;
#15
reset=$random;
end

end
endmodule 
