`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2018 13:28:10
// Design Name: 
// Module Name: Tcounter
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


module Tcounter(
    enable,
    rest_n,
    clk,
    counts
    );
    parameter n =5;
    input enable;
    input rest_n;
    input clk;
    output [n-1:0] counts;
    wire [n-1:0] temp;
    wire [n-1:0] temp1;
    genvar i;
    
    generate 
    for (i = 0; i < n-1 ; i=i+1)
      begin:Q
        if (i ==0) begin
          gated_T T_latch(enable,clk,rest_n,1,temp[0]);
          assign temp1[0] = temp[0] & enable;
        end
        else if(i == n-1)begin
          gated_T T_latch(temp1[i-1],clk,rest_n,1,temp[i]);
        end
        else begin
          gated_T T_latch(temp1[i-1],clk,rest_n,1,temp[i]);
          assign temp1[i] = temp[i] & temp1[i-1];
        end
      end
    endgenerate
    assign counts = temp;
endmodule
