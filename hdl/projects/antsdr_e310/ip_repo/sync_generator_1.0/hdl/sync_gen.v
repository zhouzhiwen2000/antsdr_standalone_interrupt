`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2022 07:15:48 AM
// Design Name: 
// Module Name: sync_gen
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


module sync_gen(
    input dac_sot,
    input clk,
    input rst,
    output sync_out
    );
    reg[15:0] clk_cnt;
    
    always @(posedge clk) begin
        if(rst) clk_cnt <= 0;
        else if(dac_sot) clk_cnt <= 10;
        else if(clk_cnt>0) clk_cnt <= clk_cnt-1;
    end

    assign sync_out=clk_cnt>0|dac_sot;
endmodule
