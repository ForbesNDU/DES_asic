module S2_ROM(addr, out);

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
					0: out = 15; 
					1: out = 1;
					2: out = 8;
					3: out = 14;
					4: out = 6;
					5: out = 11;
					6: out = 3;
					7: out = 4;
					8: out = 9;
					9: out = 7;
					10: out = 2;
					11: out = 13;
					12: out = 12;
					13: out = 0;
					14: out = 5;
					15: out = 10;
				endcase

			1:
				case(col)
                                        0: out = 3;
                                        1: out = 13;
                                        2: out = 4;
                                        3: out = 7;
                                        4: out = 15;
                                        5: out = 2;
                                        6: out = 8;
                                        7: out = 14;
                                        8: out = 12;
                                        9: out = 0;
                                        10: out = 1;
                                        11: out = 10;
                                        12: out = 6;
                                        13: out = 9;
                                        14: out = 11;
                                        15: out = 5;
				endcase

			2:
				case(col)
                                        0: out = 0;
                                        1: out = 14;
                                        2: out = 7;
                                        3: out = 11;
                                        4: out = 10;
                                        5: out = 4;
                                        6: out = 13;
                                        7: out = 1;
                                        8: out = 5;
                                        9: out = 8;
                                        10: out = 12;
                                        11: out = 6;
                                        12: out = 9;
                                        13: out = 3;
                                        14: out = 2;
                                        15: out = 15;

				endcase

			3:
				case(col)
                                        0: out = 13;
                                        1: out = 8;
                                        2: out = 10;
                                        3: out = 1;
                                        4: out = 3;
                                        5: out = 15;
                                        6: out = 4;
                                        7: out = 2;
                                        8: out = 11;
                                        9: out = 6;
                                        10: out = 7;
                                        11: out = 12;
                                        12: out = 0;
                                        13: out = 5;
                                        14: out = 14;
                                        15: out = 9;

				endcase
		endcase
	end 	

endmodule
