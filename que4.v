`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 02:07:47 PM
// Design Name: 
// Module Name: que4
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


module que4(
    input occupancy,is_dark,manual_on,clk,
    output reg light_on, light_latch
    ); 
    wire light_on_temp;
    
    always@(*) begin
    light_on=(occupancy && is_dark) || manual_on;
    end
    always@(*) begin
    light_latch=light_on;
    end
endmodule
