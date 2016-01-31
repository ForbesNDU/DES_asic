module final_permutation(in_block, out_block);

	input [63:0] in_block;
	output reg [63:0] out_block;

	always @(in_block) begin
                out_block[0] <= in_block[39];   out_block[1] <= in_block[7];   out_block[2] <= in_block[47];   out_block[3] <= in_block[15];
                out_block[4] <= in_block[55];   out_block[5] <= in_block[23];   out_block[6] <= in_block[63];    out_block[7] <= in_block[31];

                out_block[8] <= in_block[38];   out_block[9] <= in_block[6];   out_block[10] <= in_block[46];  out_block[11] <= in_block[14];
                out_block[12] <= in_block[54];  out_block[13] <= in_block[22];  out_block[14] <= in_block[62];  out_block[15] <= in_block[30];

                out_block[16] <= in_block[37];  out_block[17] <= in_block[5];  out_block[18] <= in_block[45];  out_block[19] <= in_block[13];
                out_block[20] <= in_block[53];  out_block[21] <= in_block[21];  out_block[22] <= in_block[61];  out_block[23] <= in_block[29];

                out_block[24] <= in_block[36];  out_block[25] <= in_block[4];  out_block[26] <= in_block[44];  out_block[27] <= in_block[12];
                out_block[28] <= in_block[52];  out_block[29] <= in_block[20];  out_block[30] <= in_block[60];  out_block[31] <= in_block[28];

                out_block[32] <= in_block[35];  out_block[33] <= in_block[3];  out_block[34] <= in_block[43];  out_block[35] <= in_block[11];
                out_block[36] <= in_block[51];  out_block[37] <= in_block[19];  out_block[38] <= in_block[59];   out_block[39] <= in_block[27];

                out_block[40] <= in_block[34];  out_block[41] <= in_block[2];  out_block[42] <= in_block[42];  out_block[43] <= in_block[10];
                out_block[44] <= in_block[50];  out_block[45] <= in_block[18];  out_block[46] <= in_block[58];  out_block[47] <= in_block[26];

                out_block[48] <= in_block[33];  out_block[49] <= in_block[1];  out_block[50] <= in_block[41];  out_block[51] <= in_block[9];
                out_block[52] <= in_block[49];  out_block[53] <= in_block[17];  out_block[54] <= in_block[57];  out_block[55] <= in_block[25];

                out_block[56] <= in_block[32];  out_block[57] <= in_block[0];  out_block[58] <= in_block[40];  out_block[59] <= in_block[8];
                out_block[60] <= in_block[48];  out_block[61] <= in_block[16];  out_block[62] <= in_block[56];  out_block[63] <= in_block[24];
	end

endmodule
