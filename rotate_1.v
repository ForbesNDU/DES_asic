module rotate_1(in_block, out_block);

	input [27:0] in_block;
	output [27:0] out_block;

	assign out_block = {in_block[26:0], in_block[27]};

endmodule
