`include "permuted_choice_1.v"
`include "permuted_choice_2.v"
`include "rotate_1.v"
`include "rotate_2.v"

module key_scheduler( 	input [63:0] key,
			output [47:0] subkey0,
                        output [47:0] subkey1,
                        output [47:0] subkey2,
                        output [47:0] subkey3,
                        output [47:0] subkey4,
                        output [47:0] subkey5,
                        output [47:0] subkey6,
                        output [47:0] subkey7,
                        output [47:0] subkey8,
                        output [47:0] subkey9,
                        output [47:0] subkey10,
                        output [47:0] subkey11,
                        output [47:0] subkey12,
                        output [47:0] subkey13,
                        output [47:0] subkey14,
                        output [47:0] subkey15);
	
	wire [27:0] left_side_in, right_side_in;

	wire [27:0] left0, right0;
        wire [27:0] left1, right1;
        wire [27:0] left2, right2;
        wire [27:0] left3, right3;
        wire [27:0] left4, right4;
        wire [27:0] left5, right5;
        wire [27:0] left6, right6;
        wire [27:0] left7, right7;
        wire [27:0] left8, right8;
        wire [27:0] left9, right9;
        wire [27:0] left10, right10;
        wire [27:0] left11, right11;
        wire [27:0] left12, right12;
        wire [27:0] left13, right13;
        wire [27:0] left14, right14;
        wire [27:0] left15, right15;

	// Initial Permutation
	permuted_choice_1 pc1( .in_block(key), .out_block_left(left_side_in), .out_block_right(right_side_in) );

	// Key Schedule 0
	rotate_1 r0_L( .in_block(left_side_in), .out_block(left0) );
	rotate_1 r0_R( .in_block(right_side_in), .out_block(right0) );
	permuted_choice_2 pc2_0( .in_block( {left0, right0} ), .out_block(subkey0));
	
	// Key Schedule 1
        rotate_1 r1_L( .in_block(left0), .out_block(left1) );
        rotate_1 r1_R( .in_block(right0), .out_block(right1) );
        permuted_choice_2 pc2_1( .in_block( {left1, right1} ), .out_block(subkey1));

        // Key Schedule 2
        rotate_2 r2_L( .in_block(left1), .out_block(left2) );
        rotate_2 r2_R( .in_block(right1), .out_block(right2) );
        permuted_choice_2 pc2_2( .in_block( {left2, right2} ), .out_block(subkey2));

        // Key Schedule 3
        rotate_2 r3_L( .in_block(left2), .out_block(left3) );
        rotate_2 r3_R( .in_block(right2), .out_block(right3) );
        permuted_choice_2 pc2_3( .in_block( {left3, right3} ), .out_block(subkey3));

        // Key Schedule 4
        rotate_2 r4_L( .in_block(left3), .out_block(left4) );
        rotate_2 r4_R( .in_block(right3), .out_block(right4) );
        permuted_choice_2 pc2_4( .in_block( {left4, right4} ), .out_block(subkey4));

        // Key Schedule 5
        rotate_2 r5_L( .in_block(left4), .out_block(left5) );
        rotate_2 r5_R( .in_block(right4), .out_block(right5) );
        permuted_choice_2 pc2_5( .in_block( {left5, right5} ), .out_block(subkey5));

        // Key Schedule 6
        rotate_2 r6_L( .in_block(left5), .out_block(left6) );
        rotate_2 r6_R( .in_block(right5), .out_block(right6) );
        permuted_choice_2 pc2_6( .in_block( {left6, right6} ), .out_block(subkey6));

        // Key Schedule 7
        rotate_2 r7_L( .in_block(left6), .out_block(left7) );
        rotate_2 r7_R( .in_block(right6), .out_block(right7) );
        permuted_choice_2 pc2_7( .in_block( {left7, right7} ), .out_block(subkey7));

        // Key Schedule 8
        rotate_1 r8_L( .in_block(left7), .out_block(left8) );
        rotate_1 r8_R( .in_block(right7), .out_block(right8) );
        permuted_choice_2 pc2_8( .in_block( {left8, right8} ), .out_block(subkey8));

	// Key Schedule 9
        rotate_2 r9_L( .in_block(left8), .out_block(left9) );
        rotate_2 r9_R( .in_block(right8), .out_block(right9) );
        permuted_choice_2 pc2_9( .in_block( {left9, right9} ), .out_block(subkey9));

        // Key Schedule 10
        rotate_2 r10_L( .in_block(left9), .out_block(left10) );
        rotate_2 r10_R( .in_block(right9), .out_block(right10) );
        permuted_choice_2 pc2_10( .in_block( {left10, right10} ), .out_block(subkey10));

        // Key Schedule 11
        rotate_2 r11_L( .in_block(left10), .out_block(left11) );
        rotate_2 r11_R( .in_block(right10), .out_block(right11) );
        permuted_choice_2 pc2_11( .in_block( {left11, right11} ), .out_block(subkey11));

        // Key Schedule 12
        rotate_2 r12_L( .in_block(left11), .out_block(left12) );
        rotate_2 r12_R( .in_block(right11), .out_block(right12) );
        permuted_choice_2 pc2_12( .in_block( {left12, right12} ), .out_block(subkey12));

        // Key Schedule 13
        rotate_2 r13_L( .in_block(left12), .out_block(left13) );
        rotate_2 r13_R( .in_block(right12), .out_block(right13) );
        permuted_choice_2 pc2_13( .in_block( {left13, right13} ), .out_block(subkey13));

        // Key Schedule 14
        rotate_2 r14_L( .in_block(left13), .out_block(left14) );
        rotate_2 r14_R( .in_block(right13), .out_block(right14) );
        permuted_choice_2 pc2_14( .in_block( {left14, right14} ), .out_block(subkey14));

        // Key Schedule 15
        rotate_1 r15_L( .in_block(left14), .out_block(left15) );
        rotate_1 r15_R( .in_block(right14), .out_block(right15) );
        permuted_choice_2 pc2_15( .in_block( {left15, right15} ), .out_block(subkey15));

endmodule























