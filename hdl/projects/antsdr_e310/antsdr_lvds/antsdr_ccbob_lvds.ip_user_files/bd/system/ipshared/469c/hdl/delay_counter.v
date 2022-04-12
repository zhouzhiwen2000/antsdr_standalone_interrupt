`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 12:38:43 AM
// Design Name: 
// Module Name: delay_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module delay_counter(
    input sot_dac,
    input sot_adc,
    input rst,
    input clk,
    output reg[7:0] cnt
    );
    reg counting;
    reg sot_dac_r;
    reg sot_adc_r;
always @(posedge clk or posedge rst) begin
    if(rst) begin
        sot_dac_r <= 1'b0;
        sot_adc_r <= 1'b0;
    end
    else begin
        sot_dac_r <= sot_dac;
        sot_adc_r <= sot_adc;
    end
 end
 wire start_count = (sot_dac&&!sot_dac_r);
 wire stop_count = (sot_adc&&!sot_adc_r);
always @(posedge clk or posedge rst) begin
    if(rst) begin
        cnt <= 8'd0;
        counting <= 1'b0;
    end
    else begin
        if(start_count) begin 
            cnt <= 8'd0;
            counting <= 1'b1;
        end
        else if(stop_count) begin 
            counting <= 1'b0;
        end
        if(!start_count) begin
            cnt <= cnt + counting;
        end
    end
end

endmodule
