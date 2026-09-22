`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 05:22:19 PM
// Design Name: 
// Module Name: tb_que6
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


module tb_que6(
    );
reg clk,rst,coin5,coin10;
wire dsp;
que6 uut (.clk(clk),.rst(rst),.coin5(coin5),.coin10(coin10),.dsp(dsp));
// Clock generation
initial begin
    clk = 1;
    forever #5 clk = ~clk;
end
initial begin
    rst = 1'b0;coin5 = 1'b 0; coin10 =1'b 0;
    #10;
    rst = 1'b1;
    #10;
    coin5 = 1'b1; // TEST 1: 5 + 10
    #10;
    coin5 = 1'b0;

    #10;
    coin10 = 1'b1;
    #10;
    coin10 = 1'b0;
    #20;
    coin10 = 1'b1; // TEST 2: 10 + 5
    #10;
    coin10 = 1'b0;

    #10;
    coin5 = 1'b1;
    #10;
    coin5 = 1'b0;
    #20;
    coin5 = 1'b1;// TEST 3: 5 + 5 + 5
    #10;
    coin5 = 1'b0;

    #10;
    coin5 = 1'b1;
    #10;
    coin5 = 1'b0;

    #10;
    coin5 = 1'b1;
    #10;
    coin5 = 1'b0;
    #20;
    $finish;

end
endmodule
