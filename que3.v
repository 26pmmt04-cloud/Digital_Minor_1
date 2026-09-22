`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2026 12:07:15 PM
// Design Name: 
// Module Name: que3
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


module que3(
    input ign,sbs,clk,
    output reg [2:0]c,
    output reg war
    );
    initial begin
    c=0; end 
    always@(posedge clk) begin
    if(ign & ~sbs)   //ignition is ON and seatbeltsenor is OFF
          c<=c+1;
          if(c==5)
             begin  
               war<=1;
               c<=c+1;
             end
    else
    war=0;         
    end            
endmodule
