`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2018 11:32:05
// Design Name: 
// Module Name: gated_T
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


module gated_T(
    input T,
    input clk,
    input rest_n,
    input enable,
    output Q
    );
    wire outQ;
    wire inD;
    gated_D innerD(inD,clk,rest_n,enable,outQ);
//    always @(clk)
//    begin
    assign Q = outQ;
    assign inD = (outQ & ~T)|(T & ~outQ);
//    end
endmodule
