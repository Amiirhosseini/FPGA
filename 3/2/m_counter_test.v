//Amirreza Hosseini 9820363

module m_counter_test;
 reg Pulse1000,Pulse2000,Pulse5000,Clock,Reset;
 reg[18:0] count_m; 
 wire  Out;
 wire[8:0]  c_1000;
 wire[7:0]  c_2000;
 wire[6:0]  c_5000;

m_counter U1 (count_m,Clock,Reset,Pulse1000,Pulse2000,Pulse5000,Out,c_1000,c_2000,c_5000);


always begin
#1 Clock = ~Clock; // clock period is 10 time units
end 
 initial begin
Clock=0;
Reset=1; //active low
count_m=28000;

#5
Pulse5000=1;
#10
Pulse5000=0;
Pulse2000=1;
#10
Pulse2000=0;
Pulse1000=1;

#10
Reset=0;
Pulse1000=0;
#20
Reset=1;
count_m=328000;

#10
Pulse5000=1;
#20
Pulse5000=0;
Pulse2000=1;
#10
Pulse2000=1;
Pulse1000=1;
 
 end
endmodule //m_counter_test
