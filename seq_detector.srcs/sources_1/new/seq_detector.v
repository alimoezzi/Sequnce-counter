`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// company:
// Engineer:  
// 
// Create Date: 28.12.2018 16:19:23
// Design Name: 
// Module Name: detector
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


module detector(
    input w,
    input clk,
    output z,
    output [2:0] ys
    );
    wire y0,Y0;
    wire y1,Y1;
    wire y2,Y2;
    gated_D D2(Y2,clk,1,1,y2);
    gated_D D1(Y1,clk,1,1,y1);
    gated_D D0(Y0,clk,1,1,y0);
    assign Y2 = y1&y0&~w;
    assign Y1 = w & (y2 | ~y1&y0 | ~y0&y1);
    assign Y0 = (~w & ~y1) | (~y0&y1);
    assign z = ~y0 & ~y1 & y2;
    assign ys={y2,y1,y0};
endmodule
