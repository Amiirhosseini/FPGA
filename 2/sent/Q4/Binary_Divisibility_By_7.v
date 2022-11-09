//Amirreza Hosseini 9820363

module Binary_Divisibility_By_7(STRING, Clock, Reset ,Remainder , Divisible);
input STRING, Clock, Reset;
output[3:0] Remainder;
output Divisible;


localparam [3:0] q0=0, q1=1, q2=2, q3=3 , q4=4 , q5=5 , q6=6;
reg [3:0] current;

always @(posedge Clock) begin
case ( current )
    q0:
        current <= STRING ? q1 : q0;
    q1:
        current <= STRING ? q3 : q2;
    q2:
        current <= STRING ? q5 : q4;
    q3:
        current <= STRING ? q0 : q6;
    q4:
        current <= STRING ? q2 : q1;
    q5:
        current <= STRING ? q4 : q3;
    q6:
        current <= STRING ? q6 : q5;
    default:
        current <= q0;
endcase

if(Reset) current <= q0;

end

assign Remainder = current;

assign Divisible = (current==q0 && Remainder==0 ) ? 1 : 0;

endmodule 
