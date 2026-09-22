`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 02:25:26 PM
// Design Name: 
// Module Name: que5
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


module que5(
    input clk,sensor,door_full_open,door_full_closed,rst_n,
    output reg [1:0]state
     ); 
     localparam IDLE=2'b00,OPENING=2'b01,OPEN=2'b10,CLOSING=2'b11;
     always@(posedge clk or negedge rst_n) begin
   
     if(!rst_n) state<=IDLE;
     else begin 
       case (state)
       IDLE: if(sensor) state<=OPENING;
       OPENING: if(door_full_open) state<=OPEN;
       OPEN: if(~sensor) state<= CLOSING;
       CLOSING:if(door_full_closed) state<=IDLE;
       endcase
       end 
     end         
endmodule
