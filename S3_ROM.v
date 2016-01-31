module S3_ROM(addr, out);

	input [5:0] addr;
	output reg [3:0] out;

	wire [1:0] row;
	wire [3:0] col;

	assign row = {addr[5], addr[0]};
	assign col = addr[4:1];

	always @(addr) begin
		case(row)

			0:
				case(col)
					0: out = 10;
					1: out = 0;
					2: out = 9;
					3: out = 14;
					4: out = 6;
					5: out = 3;
					6: out = 15;
					7: out = 5;
					8: out = 1;
					9: out = 13;
					10: out = 12;
					11: out = 7;
					12: out = 11;
					13: out = 4;
					14: out = 2;
					15: out = 8;
				endcase

			1:
				case(col)
                                        0: out = 13;
                                        1: out = 7;
                                        2: out = 0;
                                        3: out = 9;
                                        4: out = 3;
                                        5: out = 4;
                                        6: out = 6;
                                        7: out = 10;
                                        8: out = 2;
                                        9: out = 8;
                                        10: out = 5;
                                        11: out = 14;
                                        12: out = 12;
                                        13: out = 11;
                                        14: out = 15;
                                        15: out = 1;
				endcase

			2:
				case(col)
                                        0: out = 13;
                                        1: out = 6;
                                        2: out = 4;
                                        3: out = 9;
                                        4: out = 8;
                                        5: out = 15;
                                        6: out = 3;
                                        7: out = 0;
                                        8: out = 11;
                                        9: out = 1;
                                        10: out = 2;
                                        11: out = 12;
                                        12: out = 5;
                                        13: out = 10;
                                        14: out = 14;
                                        15: out = 7;

				endcase

			3:
				case(col)
                                        0: out = 1;
                                        1: out = 10;
                                        2: out = 13;
                                        3: out = 0;
                                        4: out = 6;
                                        5: out = 9;
                                        6: out = 8;
                                        7: out = 7;
                                        8: out = 4;
                                        9: out = 15;
                                        10: out = 14;
                                        11: out =  3;
                                        12: out = 11;
                                        13: out = 5;
                                        14: out = 2;
                                        15: out = 12;

				endcase
		endcase
	end 	

endmodule
