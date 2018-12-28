`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2018 10:31:46
// Design Name: 
// Module Name: gated_D
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


module gated_D(
    input D,
    input clk,
    input rest_n,
    input enable,
    output reg Q
    );
    always @(posedge clk,negedge rest_n)
    begin
    if(rest_n == 0) Q <= 0;
    else if(enable) Q <= D ;
    end
endmodule
