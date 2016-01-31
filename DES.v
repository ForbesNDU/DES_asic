`include "initial_permutation.v"
`include "key_scheduler.v"
`include "Fiestel.v"
`include "final_permutation.v"

module DES(plaintext, key, ciphertext);
	
	input [63:0] plaintext;
	input [63:0] key;
	output [63:0] ciphertext;

	wire [31:0] permuted_higher, permuted_lower;
	
	wire [47:0] subkey0, subkey1, subkey2, subkey3, subkey4, subkey5, subkey6, subkey7;
	wire [47:0] subkey8, subkey9, subkey10, subkey11, subkey12, subkey13, subkey14, subkey15;

	wire [31:0] f0_out, f1_out, f2_out, f3_out, f4_out, f5_out, f6_out, f7_out;
	wire [31:0] f8_out, f9_out, f10_out, f11_out, f12_out, f13_out, f14_out, f15_out;

	wire [31:0] xor0_out, xor1_out, xor2_out, xor3_out, xor4_out, xor5_out, xor6_out, xor7_out;
        wire [31:0] xor8_out, xor9_out, xor10_out, xor11_out, xor12_out, xor13_out, xor14_out, xor15_out; 

	// Initialization
	initial_permutation ip( .in_block(plaintext), .out_block({permuted_higher, permuted_lower}) );
	
	key_scheduler ks( 	.key(key), 
				.subkey0(subkey0),
                                .subkey1(subkey1),
                                .subkey2(subkey2),
                                .subkey3(subkey3),
                                .subkey4(subkey4),
                                .subkey5(subkey5),
                                .subkey6(subkey6),
                                .subkey7(subkey7),
                                .subkey8(subkey8),
                                .subkey9(subkey9),
                                .subkey10(subkey10),
                                .subkey11(subkey11),
                                .subkey12(subkey12),
                                .subkey13(subkey13),
                                .subkey14(subkey14),
                                .subkey15(subkey15));	

	// Round 1
	Fiestel f0( .half_block(permuted_lower), .subkey(subkey0), .out_block(f0_out) );
	assign xor0_out = f0_out ^ permuted_higher;

	// Round 2
	Fiestel f1( .half_block(xor0_out), .subkey(subkey1), .out_block(f1_out) );
	assign xor1_out = f1_out ^ permuted_lower;

	// Round 3
	Fiestel f2( .half_block(xor1_out), .subkey(subkey2), .out_block(f2_out) );
	assign xor2_out = f2_out ^ xor0_out;

        // Round 4
        Fiestel f3( .half_block(xor2_out), .subkey(subkey3), .out_block(f3_out) );
        assign xor3_out = f3_out ^ xor1_out;

        // Round 5
        Fiestel f4( .half_block(xor3_out), .subkey(subkey4), .out_block(f4_out) );
        assign xor4_out = f4_out ^ xor2_out;

        // Round 6
        Fiestel f5( .half_block(xor4_out), .subkey(subkey5), .out_block(f5_out) );
        assign xor5_out = f5_out ^ xor3_out;

        // Round 7
        Fiestel f6( .half_block(xor5_out), .subkey(subkey6), .out_block(f6_out) );
        assign xor6_out = f6_out ^ xor4_out;

        // Round 8
        Fiestel f7( .half_block(xor6_out), .subkey(subkey7), .out_block(f7_out) );
        assign xor7_out = f7_out ^ xor5_out;

        // Round 9
        Fiestel f8( .half_block(xor7_out), .subkey(subkey8), .out_block(f8_out) );
        assign xor8_out = f8_out ^ xor6_out;

        // Round 10
        Fiestel f9( .half_block(xor8_out), .subkey(subkey9), .out_block(f9_out) );
        assign xor9_out = f9_out ^ xor7_out;

        // Round 11
        Fiestel f10( .half_block(xor9_out), .subkey(subkey10), .out_block(f10_out) );
        assign xor10_out = f10_out ^ xor8_out;

        // Round 12
        Fiestel f11( .half_block(xor10_out), .subkey(subkey11), .out_block(f11_out) );
        assign xor11_out = f11_out ^ xor9_out;

        // Round 13
        Fiestel f12( .half_block(xor11_out), .subkey(subkey12), .out_block(f12_out) );
        assign xor12_out = f12_out ^ xor10_out;

        // Round 14
        Fiestel f13( .half_block(xor12_out), .subkey(subkey13), .out_block(f13_out) );
        assign xor13_out = f13_out ^ xor11_out;

        // Round 15
        Fiestel f14( .half_block(xor13_out), .subkey(subkey14), .out_block(f14_out) );
        assign xor14_out = f14_out ^ xor12_out;

        // Round 16
        Fiestel f15( .half_block(xor14_out), .subkey(subkey15), .out_block(f15_out) );
        assign xor15_out = f15_out ^ xor13_out;

	// Final Permutation
	final_permutation fp( .in_block({xor15_out, xor14_out}), .out_block(ciphertext) );

endmodule




























