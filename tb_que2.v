`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 11:40:57 AM
// Design Name: 
// Module Name: tb_que2
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


module tb_que2(
    );
    reg [2:0]a1,b1;
    reg clk;
    wire [2:0]a,b;
    
    que2 uut(a1,b1,clk,a,b);
    initial begin
    clk=1;
    forever #5 clk=~clk;
    end
    initial begin
    a1=3'b100;b1=3'b101;
    #10    
    a1=3'b111;b1=3'b001;
    #10
    a1=3'b110;b1=3'b000;
    #10
    $finish();
    end
endmodule
