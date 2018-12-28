`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2018 11:42:13
// Design Name: 
// Module Name: gated_T_tb
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


module gated_T_tb(

    );
    reg T;
    reg clk;
    reg restn;
    reg enable;
    wire Q;
    gated_T T_latch(T,clk,restn,enable,Q);
    
    always
    begin
    clk =0;
    #10
    clk=1;
    forever 
    #50 clk = ~ clk;
    end
    
    initial begin
      T=0;
      restn = 1;
      enable =0; 
      #10
      restn =0;
      T =1;
      #10
      enable = 1;
      restn = 1;
      T=1;
      #10
      enable = 1;
      #100
      
      T=0;
      #100
      T=1;
      #100
      T=0;
      #100
      T=1;
      #100
      T=0;
      #100
      T=1;
      #100
      T=0;
      #100
      T=1;
      #100
      T=0;
      #100
      T=1;
      #100
      T=0;
    end
endmodule
