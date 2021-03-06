module permutation(in_block, out_block);
	
	input [31:0] in_block;
	output [31:0] out_block;

	assign out_block[0] = in_block[15];
        assign out_block[1] = in_block[6];
        assign out_block[2] = in_block[19];
        assign out_block[3] = in_block[20];
        assign out_block[4] = in_block[28];
        assign out_block[5] = in_block[11];
        assign out_block[6] = in_block[27];
        assign out_block[7] = in_block[16];

        assign out_block[8] = in_block[0];
        assign out_block[9] = in_block[14];
        assign out_block[10] = in_block[22];
        assign out_block[11] = in_block[25];
        assign out_block[12] = in_block[4];
        assign out_block[13] = in_block[17];
        assign out_block[14] = in_block[30];
        assign out_block[15] = in_block[9];

        assign out_block[16] = in_block[1];
        assign out_block[17] = in_block[7];
        assign out_block[18] = in_block[23];
        assign out_block[19] = in_block[13];
        assign out_block[20] = in_block[31];
        assign out_block[21] = in_block[26];
        assign out_block[22] = in_block[2];
        assign out_block[23] = in_block[8];

        assign out_block[24] = in_block[18];
        assign out_block[25] = in_block[12];
        assign out_block[26] = in_block[29];
        assign out_block[27] = in_block[5];
        assign out_block[28] = in_block[21];
        assign out_block[29] = in_block[10];
        assign out_block[30] = in_block[3];
        assign out_block[31] = in_block[24];

endmodule
