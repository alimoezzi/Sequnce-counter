`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2018 10:38:36
// Design Name: 
// Module Name: gated_D_tb
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


module gated_D_tb(
    );
    reg D ;
    reg clk ;
    reg rest_n;
    reg enable;
    wire Q;
    gated_D D_latch(D,clk,rest_n,enable,Q);
    
    always
    begin 
    clk=0;
    forever #50 clk = ~ clk;
    end
    
    initial begin
      D=0;
      rest_n = 1;
      enable =0 ;
      #10
      enable = 1;
      #10
      D=1;
      #100
      D=0;
      #100
      D=1;
      #100
      enable =0;
      D=0;
      #100
      D=1;
      #100
      D=0;
      enable =1;
      #100
      D=1;
      #100
      D=0;
      #100
      rest_n=0;
      D=1;
      #100
      D=0;
      #100
      D=1;
      #100
      D=0;
    end
endmodule
