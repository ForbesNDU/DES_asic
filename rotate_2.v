module rotate_2(in_block, out_block);

        input [27:0] in_block;
        output [27:0] out_block;

        assign out_block = {in_block[25:0], in_block[27:26]};

endmodule

