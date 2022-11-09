//Amirreza Hosseini 9820363
module registerBank64x32_test();
reg clk, flush, reset, load, output_enable,serial_out;
reg [5:0] reg_select;
reg [31:0] data_in, data_out;

registerBank64x32 U1(clk,flush,reset,load,output_enable,reg_select,data_in,data_out,serial_out);

always #1 clk = ~clk;

 initial begin
      clk = 0;
      load= 1;
      #10
      load = 0;
end

endmodule 
