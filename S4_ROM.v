module S4_ROM(addr, out);

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
					0: out = 7;
					1: out = 13;
					2: out = 14;
					3: out = 3;
					4: out = 0;
					5: out = 6;
					6: out = 9;
					7: out = 10;
					8: out = 1;
					9: out = 2;
					10: out = 8;
					11: out = 5;
					12: out = 11;
					13: out = 12;
					14: out = 4;
					15: out = 15;
				endcase

			1:
				case(col)
                                        0: out = 13;
                                        1: out = 8;
                                        2: out = 11;
                                        3: out = 5;
                                        4: out = 6;
                                        5: out = 15;
                                        6: out = 0;
                                        7: out = 3;
                                        8: out = 4;
                                        9: out = 7;
                                        10: out = 2;
                                        11: out = 12;
                                        12: out = 1;
                                        13: out = 10;
                                        14: out = 14;
                                        15: out = 9;
				endcase

			2:
				case(col)
                                        0: out = 10;
                                        1: out = 6;
                                        2: out = 9;
                                        3: out = 0;
                                        4: out = 12;
                                        5: out = 11;
                                        6: out = 7;
                                        7: out = 13;
                                        8: out = 15;
                                        9: out = 1;
                                        10: out = 3;
                                        11: out = 14;
                                        12: out = 5;
                                        13: out = 2;
                                        14: out = 8;
                                        15: out = 4;

				endcase

			3:
				case(col)
                                        0: out = 3;
                                        1: out = 15;
                                        2: out = 0;
                                        3: out = 6;
                                        4: out = 10;
                                        5: out = 1;
                                        6: out = 13;
                                        7: out = 8;
                                        8: out = 9;
                                        9: out = 4;
                                        10: out = 5;
                                        11: out =  11;
                                        12: out = 12;
                                        13: out = 7;
                                        14: out = 2;
                                        15: out = 14;

				endcase
		endcase
	end 	

endmodule
