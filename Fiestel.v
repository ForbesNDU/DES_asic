`include "expansion_function.v"
`include "S1_ROM.v"
`include "S2_ROM.v"
`include "S3_ROM.v"
`include "S4_ROM.v"
`include "S5_ROM.v"
`include "S6_ROM.v"
`include "S7_ROM.v"
`include "S8_ROM.v"
`include "permutation.v"

module Fiestel(half_block, subkey, out_block);

	input [31:0] half_block;
	input [47:0] subkey;
	output [31:0] out_block;

	wire [47:0] expanded_half, s_layer_input;
	wire [31:0] s_layer_output;

	// HARDWARE LAYOUT
	expansion_function ex_1( .in_block(half_block), .out_block(expanded_half) );
	
	assign s_input = expanded_half ^ subkey;

	S1_ROM s1( .addr(s_layer_input[47:42]) , .out(s_layer_output[31:28]) );	
        S2_ROM s2( .addr(s_layer_input[41:36]) , .out(s_layer_output[27:24]) );
        S3_ROM s3( .addr(s_layer_input[35:30]) , .out(s_layer_output[23:20]) );
        S4_ROM s4( .addr(s_layer_input[29:24]) , .out(s_layer_output[19:16]) );
        S5_ROM s5( .addr(s_layer_input[23:18]) , .out(s_layer_output[15:12]) );
        S6_ROM s6( .addr(s_layer_input[17:12]) , .out(s_layer_output[11:8])  );
        S7_ROM s7( .addr(s_layer_input[11:6])  , .out(s_layer_output[7:4])   );
        S8_ROM s8( .addr(s_layer_input[5:0])   , .out(s_layer_output[3:0])   );

	permutation p1( .in_block(s_layer_output), .out_block(out_block) );

endmodule
