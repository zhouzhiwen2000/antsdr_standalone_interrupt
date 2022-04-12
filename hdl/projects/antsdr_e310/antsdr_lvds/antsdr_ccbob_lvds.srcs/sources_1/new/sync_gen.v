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
    input reset,
    output sync_out,
    output dac_sync
    );
    reg[15:0] clk_cnt;
    reg sync_out_reg;
    always @(posedge clk or posedge reset) begin
        if(reset) clk_cnt <= 0;
        else if(dac_sot) clk_cnt <= 10;
        else if(clk_cnt>0) clk_cnt <= clk_cnt-1;
    end

    assign sync_out=clk_cnt>0;
    
    always @(posedge clk or posedge reset) begin
        if(reset) sync_out_reg <= 0;
        else sync_out_reg <= sync_out;
    end
    assign dac_sync = (sync_out==1&&sync_out_reg==0);
endmodule
