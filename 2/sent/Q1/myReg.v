//Amirreza Hosseini 9820363
module myReg(clk, reset, pdata, qdata, load, shift_right, shift_left, serial_in, serial_out);
    input clk, reset, load, serial_in, shift_right, shift_left;
    input [7:0] pdata;
    output reg [7:0] qdata;
    output serial_out;

    always @(posedge clk) begin
        if (reset==1) begin
            qdata <= 0;
        end
        else begin
            if (load==1) begin
                qdata <= pdata;
            end
            else begin
                if (shift_right==1) begin
                        qdata<={serial_in,qdata[7:1]};
                end
                else begin
                    if (shift_left==1) begin
                        qdata<={qdata[6:0],serial_in};
                    end
                end
            end
        end
    end

    assign serial_out=qdata[7];
endmodule
