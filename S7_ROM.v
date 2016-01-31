module S7_ROM(addr, out);

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
					0: out = 4;
					1: out = 11;
					2: out = 2;
					3: out = 14;
					4: out = 15;
					5: out = 0;
					6: out = 8;
					7: out = 13;
					8: out = 3;
					9: out = 12;
					10: out = 9;
					11: out = 7;
					12: out = 5;
					13: out = 10;
					14: out = 6;
					15: out = 1;
				endcase

			1:
				case(col)
                                        0: out = 13;
                                        1: out = 0;
                                        2: out = 11;
                                        3: out = 7;
                                        4: out = 4;
                                        5: out = 9;
                                        6: out = 1;
                                        7: out = 10;
                                        8: out = 14;
                                        9: out = 3;
                                        10: out = 5;
                                        11: out = 12;
                                        12: out = 2;
                                        13: out = 15;
                                        14: out = 8;
                                        15: out = 6;
				endcase

			2:
				case(col)
                                        0: out = 1;
                                        1: out = 4;
                                        2: out = 11;
                                        3: out = 13;
                                        4: out = 12;
                                        5: out = 3;
                                        6: out = 7;
                                        7: out = 14;
                                        8: out = 10;
                                        9: out = 15;
                                        10: out = 6;
                                        11: out = 8;
                                        12: out = 0;
                                        13: out = 5;
                                        14: out = 9;
                                        15: out = 2;

				endcase

			3:
				case(col)
                                        0: out = 6;
                                        1: out = 11;
                                        2: out = 13;
                                        3: out = 8;
                                        4: out = 1;
                                        5: out = 4;
                                        6: out = 10;
                                        7: out = 7;
                                        8: out = 9;
                                        9: out = 5;
                                        10: out = 0;
                                        11: out = 15;
                                        12: out = 14;
                                        13: out = 2;
                                        14: out = 3;
                                        15: out = 12;

				endcase
		endcase
	end 	

endmodule
