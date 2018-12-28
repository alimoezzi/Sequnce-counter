`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// company:
// Engineer:  
// 
// Create Date: 28.12.2018 19:08:13
// Design Name: 
// Module Name: detect_count_tb
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


module detect_count_tb(

    );
    reg clk;
    reg w;
    reg restn;
    wire z;
    wire [3:0] count;
    detect_count dc(w,restn,clk,z,count);
    
    always
    begin
    clk =0;
    #2.5
    clk=1;
    #2.5
    clk=0;
    #2.5
    clk=1;
    #2.5
    clk=0;
    forever 
    #50 clk = ~ clk;
    end
    initial 
    begin
    w=0;
    restn = 0;
    #10
    restn = 1;
    #10 
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 0;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 1;
    @(posedge clk);
    w <= 0;
    end
endmodule
