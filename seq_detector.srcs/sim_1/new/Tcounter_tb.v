`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2018 14:01:00
// Design Name: 
// Module Name: Tcounter_tb
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


module Tcounter_tb(

    );
    
    reg clk;
    reg restn;
    reg enable;
    wire [3:0] Q;
    Tcounter #(5) counter(enable,restn,clk,Q);
    
    always
    begin
    clk =0;
    #10
    clk=1;
    forever 
    #50 clk = ~ clk;
    end
    
    initial begin
      restn = 0;
      enable = 0;
      #10
      restn = 1;
      enable =1; 
      #400
      enable = 0;
      #300
      enable = 1;
      #800
      enable =0;
      #200
      enable = 1;
    end
endmodule
