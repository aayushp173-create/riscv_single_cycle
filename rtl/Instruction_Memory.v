`timescale 1ns / 1ps
module Instruction_Memory(
			  input [31:0] 	A,
			  input clk,
			  output [31:0] RD
			  );
   reg [31:0] 				I_MEM_BLOCK[5600:0];
initial begin
        $readmemh("instructions.mem", I_MEM_BLOCK);
    end

   assign RD = I_MEM_BLOCK[A[31:2]]; // word aligned

endmodule
