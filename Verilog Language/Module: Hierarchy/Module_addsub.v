module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire cout1;
    wire [31:0] b0;
    
	  assign b0 = b^{32{sub}};

    add16 addLower ( a[15:0], b0[15:0], sub, sum[15:0], cout1);
    add16 addHigher( a[31:16], b0[31:16], cout1, sum[31:16]); 
    
    
endmodule
