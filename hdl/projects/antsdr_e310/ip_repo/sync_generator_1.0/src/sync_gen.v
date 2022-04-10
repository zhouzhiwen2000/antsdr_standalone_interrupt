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
    input clear,
    output sync_out
    );
    reg sync_out_r;
    
always @(*) begin
    if(clear)sync_out_r <= 0;
    else if(dac_sot)sync_out_r <= 1;
end
    assign sync_out=sync_out_r|dac_sot;
endmodule
