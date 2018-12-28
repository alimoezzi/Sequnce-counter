`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// company:
// Engineer:  
// 
// Create Date: 28.12.2018 16:30:43
// Design Name: 
// Module Name: detector_tb
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


module detector_tb(

    );
    reg clk;
    reg w;
    wire z;
    wire [2:0] stage_no;
    detector ollo_detector(w,clk,z,stage_no);
    
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

    end 
endmodule
