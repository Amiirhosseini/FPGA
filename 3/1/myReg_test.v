//Amirreza Hosseini 9820363
module myReg_test;
   reg [7:0] pdata;
   reg clk, rst, load, shift_right,shift_left, serial_in;
   wire serial_out;
   wire [7:0] out;

   myReg U1 ( clk, rst, pdata, out, load, shift_right, shift_left, serial_in, serial_out);

   always #1 clk = ~clk;

   initial begin
      clk=0;
      load<=1;
      rst<=0;
      shift_right<=1;
      shift_left<=0;
      serial_in<=0;
      pdata <='h13;
      #10
      load<=0;
      #10
      shift_right <=0;  
      shift_left<=1;
   end

endmodule
