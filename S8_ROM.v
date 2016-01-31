module S8_ROM(addr, out);

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
					0: out = 13;
					1: out = 2;
					2: out = 8;
					3: out = 4;
					4: out = 6;
					5: out = 15;
					6: out = 11;
					7: out = 1;
					8: out = 10;
					9: out = 9;
					10: out = 3;
					11: out = 14;
					12: out = 5;
					13: out = 0;
					14: out = 12;
					15: out = 7;
				endcase

			1:
				case(col)
                                        0: out = 1;
                                        1: out = 15;
                                        2: out = 13;
                                        3: out = 8;
                                        4: out = 10;
                                        5: out = 3;
                                        6: out = 7;
                                        7: out = 4;
                                        8: out = 12;
                                        9: out = 5;
                                        10: out = 6;
                                        11: out = 11;
                                        12: out = 0;
                                        13: out = 14;
                                        14: out = 9;
                                        15: out = 2;
				endcase

			2:
				case(col)
                                        0: out = 7;
                                        1: out = 11;
                                        2: out = 4;
                                        3: out = 1;
                                        4: out = 9;
                                        5: out = 12;
                                        6: out = 14;
                                        7: out = 2;
                                        8: out = 0;
                                        9: out = 6;
                                        10: out = 10;
                                        11: out = 13;
                                        12: out = 15;
                                        13: out = 3;
                                        14: out = 5;
                                        15: out = 8;

				endcase

			3:
				case(col)
                                        0: out = 2;
                                        1: out = 1;
                                        2: out = 14;
                                        3: out = 7;
                                        4: out = 4;
                                        5: out = 10;
                                        6: out = 8;
                                        7: out = 13;
                                        8: out = 15;
                                        9: out = 12;
                                        10: out = 9;
                                        11: out = 0;
                                        12: out = 3;
                                        13: out = 5;
                                        14: out = 6;
                                        15: out = 11;
				endcase
		endcase
	end 	

endmodule
