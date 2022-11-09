//Amirreza Hosseini 9820363

module m_counter (count_m,Clock,Reset,Pulse1000,Pulse2000,Pulse5000,Out,c_1000,c_2000,c_5000);
input   Pulse1000,Pulse2000,Pulse5000,Clock,Reset;
input[18:0] count_m; 
output reg Out=0; 
output reg[8:0]  c_1000=0;
output reg[7:0]  c_2000=0;
output reg[6:0]  c_5000=0;

reg[18:0] counting=0;

always @(posedge Clock or posedge Reset)            //asynchronous reset
 begin
if (~Reset) begin
    c_1000<=0;
    c_2000<=0;
    c_5000<=0;
    Out<=0;
end
if (Pulse1000) begin
    counting<=counting+1000;
    c_1000<=c_1000+1;
end
if (Pulse2000) begin
    counting<=counting+2000;
    c_2000<=c_2000+1;
end
if (Pulse5000) begin
    counting<=counting+5000;
    c_5000<=c_5000+1;
end

 Out=(counting>=count_m) ? 1 : 0;
 end



endmodule //m_counter
