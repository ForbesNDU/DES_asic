module permuted_choice_2(in_block, out_block);

	input [55:0] in_block;
	output [47:0] out_block;

	assign out_block[0] = in_block[13];
        assign out_block[1] = in_block[16];
        assign out_block[2] = in_block[10];
        assign out_block[3] = in_block[23];
        assign out_block[4] = in_block[0];
        assign out_block[5] = in_block[4];
        assign out_block[6] = in_block[2];
        assign out_block[7] = in_block[27];

        assign out_block[8] = in_block[14];
        assign out_block[9] = in_block[5];
        assign out_block[10] = in_block[20];
        assign out_block[11] = in_block[9];
        assign out_block[12] = in_block[22];
        assign out_block[13] = in_block[18];
        assign out_block[14] = in_block[11];
        assign out_block[15] = in_block[3];

        assign out_block[16] = in_block[25];
        assign out_block[17] = in_block[7];
        assign out_block[18] = in_block[15];
        assign out_block[19] = in_block[6];
        assign out_block[20] = in_block[26];
        assign out_block[21] = in_block[19];
        assign out_block[22] = in_block[12];
        assign out_block[23] = in_block[1];

        assign out_block[24] = in_block[40];
        assign out_block[25] = in_block[51];
        assign out_block[26] = in_block[30];
        assign out_block[27] = in_block[36];
        assign out_block[28] = in_block[46];
        assign out_block[29] = in_block[54];
        assign out_block[30] = in_block[29];
        assign out_block[31] = in_block[39];

        assign out_block[32] = in_block[50];
        assign out_block[33] = in_block[44];
        assign out_block[34] = in_block[32];
        assign out_block[35] = in_block[47];
        assign out_block[36] = in_block[43];
        assign out_block[37] = in_block[48];
        assign out_block[38] = in_block[38];
        assign out_block[39] = in_block[55];

        assign out_block[40] = in_block[33];
        assign out_block[41] = in_block[52];
        assign out_block[42] = in_block[45];
        assign out_block[43] = in_block[41];
        assign out_block[44] = in_block[49];
        assign out_block[45] = in_block[35];
        assign out_block[46] = in_block[28];
        assign out_block[47] = in_block[31];


endmodule
