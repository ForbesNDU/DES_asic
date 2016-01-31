module S5_ROM(addr, out);

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
					0: out = 2;
					1: out = 12;
					2: out = 4;
					3: out = 1;
					4: out = 7;
					5: out = 10;
					6: out = 11;
					7: out = 6;
					8: out = 8;
					9: out = 5;
					10: out = 3;
					11: out = 15;
					12: out = 13;
					13: out = 0;
					14: out = 14;
					15: out = 9;
				endcase

			1:
				case(col)
                                        0: out = 14;
                                        1: out = 11;
                                        2: out = 2;
                                        3: out = 12;
                                        4: out = 4;
                                        5: out = 7;
                                        6: out = 13;
                                        7: out = 1;
                                        8: out = 5;
                                        9: out = 0;
                                        10: out = 15;
                                        11: out = 10;
                                        12: out = 3;
                                        13: out = 9;
                                        14: out = 8;
                                        15: out = 6;
				endcase

			2:
				case(col)
                                        0: out = 4;
                                        1: out = 2;
                                        2: out = 1;
                                        3: out = 11;
                                        4: out = 10;
                                        5: out = 13;
                                        6: out = 7;
                                        7: out = 8;
                                        8: out = 15;
                                        9: out = 9;
                                        10: out = 12;
                                        11: out = 5;
                                        12: out = 6;
                                        13: out = 3;
                                        14: out = 0;
                                        15: out = 14;

				endcase

			3:
				case(col)
                                        0: out = 11;
                                        1: out = 8;
                                        2: out = 12;
                                        3: out = 7;
                                        4: out = 1;
                                        5: out = 14;
                                        6: out = 2;
                                        7: out = 13;
                                        8: out = 6;
                                        9: out = 15;
                                        10: out = 0;
                                        11: out = 9;
                                        12: out = 10;
                                        13: out = 4;
                                        14: out = 5;
                                        15: out = 3;
				endcase
		endcase
	end 	

endmodule
