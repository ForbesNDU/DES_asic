module S1_ROM(addr, out);

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
					0: out = 14;
					1: out = 4;
					2: out = 13;
					3: out = 1;
					4: out = 2;
					5: out = 15;
					6: out = 11;
					7: out = 8;
					8: out = 3;
					9: out = 10;
					10: out = 6;
					11: out = 12;
					12: out = 5;
					13: out = 9;
					14: out = 0;
					15: out = 7;
				endcase

			1:
				case(col)
                                        0: out = 0;
                                        1: out = 15;
                                        2: out = 7;
                                        3: out = 4;
                                        4: out = 14;
                                        5: out = 2;
                                        6: out = 13;
                                        7: out = 1;
                                        8: out = 10;
                                        9: out = 6;
                                        10: out = 12;
                                        11: out = 11;
                                        12: out = 9;
                                        13: out = 5;
                                        14: out = 3;
                                        15: out = 8;
				endcase

			2:
				case(col)
                                        0: out = 4;
                                        1: out = 1;
                                        2: out = 14;
                                        3: out = 8;
                                        4: out = 13;
                                        5: out = 6;
                                        6: out = 2;
                                        7: out = 11;
                                        8: out = 15;
                                        9: out = 12;
                                        10: out = 9;
                                        11: out = 7;
                                        12: out = 3;
                                        13: out = 10;
                                        14: out = 5;
                                        15: out = 0;

				endcase

			3:
				case(col)
                                        0: out = 15;
                                        1: out = 12;
                                        2: out = 8;
                                        3: out = 2;
                                        4: out = 4;
                                        5: out = 9;
                                        6: out = 1;
                                        7: out = 7;
                                        8: out = 5;
                                        9: out = 11;
                                        10: out = 3;
                                        11: out =  14;
                                        12: out = 10;
                                        13: out = 0;
                                        14: out = 6;
                                        15: out = 13;

				endcase
		endcase
	end 	

endmodule
