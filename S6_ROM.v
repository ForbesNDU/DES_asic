module S6_ROM(addr, out);

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
					0: out = 12;
					1: out = 1;
					2: out = 10;
					3: out = 15;
					4: out = 9;
					5: out = 2;
					6: out = 6;
					7: out = 8;
					8: out = 0;
					9: out = 13;
					10: out = 3;
					11: out = 4;
					12: out = 14;
					13: out = 7;
					14: out = 5;
					15: out = 11;
				endcase

			1:
				case(col)
                                        0: out = 10;
                                        1: out = 15;
                                        2: out = 4;
                                        3: out = 2;
                                        4: out = 7;
                                        5: out = 12;
                                        6: out = 9;
                                        7: out = 5;
                                        8: out = 6;
                                        9: out = 1;
                                        10: out = 13;
                                        11: out = 14;
                                        12: out = 0;
                                        13: out = 11;
                                        14: out = 3;
                                        15: out = 8;
				endcase

			2:
				case(col)
                                        0: out = 9;
                                        1: out = 14;
                                        2: out = 15;
                                        3: out = 5;
                                        4: out = 2;
                                        5: out = 8;
                                        6: out = 12;
                                        7: out = 3;
                                        8: out = 7;
                                        9: out = 0;
                                        10: out = 4;
                                        11: out = 10;
                                        12: out = 1;
                                        13: out = 13;
                                        14: out = 11;
                                        15: out = 6;

				endcase

			3:
				case(col)
                                        0: out = 4;
                                        1: out = 3;
                                        2: out = 2;
                                        3: out = 12;
                                        4: out = 9;
                                        5: out = 5;
                                        6: out = 15;
                                        7: out = 10;
                                        8: out = 11;
                                        9: out = 14;
                                        10: out = 1;
                                        11: out = 7;
                                        12: out = 6;
                                        13: out = 0;
                                        14: out = 8;
                                        15: out = 13;

				endcase
		endcase
	end 	

endmodule
