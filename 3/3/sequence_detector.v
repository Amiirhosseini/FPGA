//Amirreza Hosseini 9820363
module sequence_detector(input_seq,clk,reset,seq_detected,dseq_count,lookfor_seq);

input input_seq,clk,reset;
input [1:0] lookfor_seq;
output reg seq_detected=0;
output reg [15:0] dseq_count=0;


localparam [2:0] q0=3'b000 , q1=3'b001 , q2=3'b010 , q3=3'b011 , q4=3'b100 , q5=3'b101;  //sates wich can be existed

reg [2:0] current=0;
reg [1:0] temp_lookfor_seq; 

always @(negedge clk)begin

temp_lookfor_seq<=lookfor_seq;

if(temp_lookfor_seq!=lookfor_seq)
	dseq_count=0;
if(reset==1) begin
current<=0;
dseq_count<=0;
seq_detected<=0;
end

else begin


if(lookfor_seq==2'b00)begin  //Case 10111
case (current) 
q0 : current <= input_seq ? q1 : q0; 
q1 : current <= input_seq ? q1 : q2;
q2 : current <= input_seq ? q3 : q0;
q3 : current <= input_seq ? q4 : q2;
q4 : begin if(input_seq) begin

seq_detected<= 1;
current<=q5 ; 
dseq_count<=dseq_count+1;
end
else current <= q2; end
q5 : begin seq_detected<=0; if(input_seq) current<=q1 ; else current <= q0;end
default: current <= 0;

endcase
end
else if(lookfor_seq==2'b01)begin //Case 01010
case (current) 
q0 : current <= input_seq ? q0 : q1;
q1 : current <= input_seq ? q2 : q1;
q2 : current <= input_seq ? q0 : q3;
q3 : current <= input_seq ? q4 : q1;
q4 : begin if(input_seq) current<=q0 ; else begin 
dseq_count<=dseq_count+1'b1;
seq_detected<= 1;
current<=q5 ; 
end
end
q5 : begin seq_detected<=0; if(input_seq) current<=q0 ; else current <= q1; end
default: current <= 0;
endcase
end

else if(lookfor_seq==2'b10)begin //Case 10101
case (current) 
q0 : current <= input_seq ? q1 : q0;
q1 : current <= input_seq ? q1 : q2;
q2 : current <= input_seq ? q3 : q0;
q3 : current <= input_seq ? q1 : q4;
q4 : begin if(input_seq) begin
dseq_count<=dseq_count+1'b1;
seq_detected<= 1;
current<=q5 ; 
end
else current <= q0;
end
q5 : begin seq_detected<=0; if(input_seq) current<=q1 ; else current <= q0;end
default: current <= 0;
endcase
end

else if(lookfor_seq==2'b11)begin //Case 10100
case (current) 
q0 : current <= input_seq ? q1 : q0;
q1 : current <= input_seq ? q1 : q2;
q2 : current <= input_seq ? q3 : q0;
q3 : current <= input_seq ? q1 : q4;
q4 : begin if(input_seq) current<=q1 ; else begin
dseq_count<=dseq_count+1'b1;
seq_detected<= 1;
current<=q5 ; 
end
end
q5 :begin seq_detected<=0; if(input_seq) current<=q1 ; else current <= q0;end
default: current <= 0;
endcase
end
	
end
end


endmodule
