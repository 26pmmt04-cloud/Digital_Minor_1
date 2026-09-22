`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 02:13:27 PM
// Design Name: 
// Module Name: tb_que4
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
module tb_que4(
    );
    reg occupancy,is_dark,manual_on,clk;
    wire light_on,light_latch;
     
    que4 uut(occupancy,is_dark,manual_on,clk,light_on,light_latch);
    initial begin clk=1; forever #5 clk=~clk; end
    initial begin
    occupancy=1'b0;is_dark=1'b0;manual_on=1'b0;
    #10
    occupancy=1'b1;is_dark=1'b1;manual_on=1'b0;
    #10
    occupancy=1'b1;is_dark=1'b0;manual_on=1'b0;
    #10
    occupancy=1'b0;is_dark=1'b0;manual_on=1'b1;
    #10
    manual_on=1'b0;
    #10
    occupancy=1'b1;is_dark=1'b1;manual_on=1'b0;
    #10
    occupancy=1'b1;is_dark=1'b1;manual_on=1'b1;
    #10
    $finish();
    end
endmodule
