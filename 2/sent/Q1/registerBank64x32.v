//Amirreza Hosseini 9820363
module registerBank64x32(clk, flush, reset, load, output_enable, reg_select, data_in, data_out, serial_out);

input wire clk, flush, reset, load, output_enable;
input wire [5:0] reg_select;
input wire [31:0] data_in;
output wire [31:0] data_out;
output wire serial_out;

reg [31:0] regBank64x32[63:0];
integer i;
reg out;
always @(posedge clk)
begin
    if (load == 1)
        regBank64x32[reg_select] <= data_in;
end
always @(posedge clk)
begin
    if (reset == 1)
        regBank64x32[reg_select] = 0;
end
always @(posedge clk)
begin
    if (flush == 1)begin
        for (i=0 ;i< reg_select;i=i+1) begin
            regBank64x32[i] = 0;
        end
    end
        
end
always @(posedge clk)
begin
    if (output_enable == 0)
       out=1'bZ;
    else if (output_enable == 0)
       out=1'b1;
end
// read data from address 'reg_select'
assign data_out = regBank64x32[reg_select] & out;

assign serial_out = regBank64x32[31];

endmodule 
