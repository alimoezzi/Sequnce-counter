`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// company:
// Engineer:  
// 
// Create Date: 28.12.2018 18:59:10
// Design Name: 
// Module Name: detect_count
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


module detect_count(
    input w,
    input rest_n,
    input clk,
    output reg z,
    output [3:0] count
    );
    wire let;
    wire [2:0] stage_no;
    detector detect(w,clk,let,stage_no);
    Tcounter #(5) counter(let,rest_n,clk,count);
    integer when = 1;
//    assign z=let;
    // always @(posedge clk)
    // begin
    //     @(posedge clk);
    //     z <= let;
    //     @(negedge clk);
    //     if(z==0)
    //     begin
    //     @(posedge clk);
    //     z <=let ;
    //     end
    // end
    always @(posedge clk)
    begin
      if (let == 0) begin
        if(when == 1) begin
          z<=let;
          when = 0;
        end
        if(when == 0) when =1;
      end
      else if (let == 1) begin
        z <= let;
      end
    end
endmodule
