`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:17:26 PM
// Design Name: 
// Module Name: tb_que3
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


module tb_que3(
    );
    reg ign,sbs,clk;
    wire [2:0]c;
    wire war;
    
    que3 uut(ign,sbs,clk,c,war);
    initial begin clk=1; forever #5 clk=~clk; end
    initial begin
    ign=1'b1;sbs=1'b0;
    #70
    ign=1'b0;sbs=1'b1;
    #30
    $finish();
    end    
endmodule
