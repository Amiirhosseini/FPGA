module SequenceDetector(input_seq,clk,reset,lookfor_seq,seq_detected,dseq_count);
input input_seq,clk,reset;
input [1:0] lookfor_seq;
output reg seq_detected=0;
output reg [15:0] dseq_count=0;

parameter [2:0] s0=3'b000 , s1=3'b001 , s2=3'b010 , s3=3'b011 , s4=3'b100 , s5=3'b101;


reg [2:0] current=0;

reg [1:0] temp_lookfor_seq;

always @(posedge clk  )begin

temp_lookfor_seq<=lookfor_seq;

if(temp_lookfor_seq!=lookfor_seq)
	dseq_count=0;
if(reset==1) begin
current<=0;
dseq_count<=0;
seq_detected<=0;
end

else begin


if(lookfor_seq==2'b00)begin
case (current) 
s0 : current <= input_seq ? s1 : s0; 
s1 : current <= input_seq ? s1 : s2;
s2 : current <= input_seq ? s3 : s0;
s3 : current <= input_seq ? s4 : s2;
s4 : begin if(input_seq) begin

seq_detected<= 1'b1;
current<=s5 ; 
dseq_count<=dseq_count+1;
end
else current <= s2; end
s5 : begin seq_detected<=0; if(input_seq) current<=s1 ; else current <= s0; end


endcase
end
else if(lookfor_seq==2'b01)begin
case (current) 
s0 : if(input_seq) current<=s0 ; else current <= s1;
s1 : if(input_seq) current<=s2 ; else current <= s1;
s2 : if(input_seq) current<=s0 ; else current <= s3;
s3 : if(input_seq) current<=s4 ; else current <= s1;
s4 : begin if(input_seq) current<=s0 ; else begin 
dseq_count<=dseq_count+1'b1;
seq_detected<= 1'b1;
current<=s5 ; 
end
end
s5 : begin seq_detected<=0; if(input_seq) current<=s0 ; else current <= s1; end

endcase
end

else if(lookfor_seq==2'b10)begin
case (current) 
s0 : if(input_seq) current<=s1 ; else current <= s0;
s1 : if(input_seq) current<=s1 ; else current <= s2;
s2 : if(input_seq) current<=s3 ; else current <= s0;
s3 : if(input_seq) current<=s1 ; else current <= s4;
s4 : begin if(input_seq) begin
dseq_count<=dseq_count+1'b1;
seq_detected<= 1'b1;
current<=s5 ; 
end
else current <= s0;
end
s5 : begin seq_detected<=0; if(input_seq) current<=s1 ; else current <= s0;end

endcase
end

else if(lookfor_seq==2'b11)begin
case (current) 
s0 : if(input_seq) current<=s1 ; else current <= s0;
s1 : if(input_seq) current<=s1 ; else current <= s2;
s2 : if(input_seq) current<=s3 ; else current <= s0;
s3 : if(input_seq) current<=s1 ; else current <= s4;
s4 : begin if(input_seq) current<=s1 ; else begin
dseq_count<=dseq_count+1'b1;
seq_detected<= 1'b1;
current<=s5 ; 
end
end
s5 :begin seq_detected<=0; if(input_seq) current<=s1 ; else current <= s0; end

endcase
end
	
end
end

/*
always @(current)begin
if(current==s5)begin
dseq_count<=dseq_count+1;
seq_detected<= 1'b1;
end
end
*/

endmodule
