`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 11:29:44 AM
// Design Name: 
// Module Name: que2
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


module que2(
    input [2:0]a1,b1,
    input clk,
    output reg [2:0]a,b    
    );
    always@(posedge clk) begin
    a=a1;b=b1;
    a<=b;
    b<=a;    
    end
endmodule
