module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire sel;
    wire [31:16] sum0;
    wire [31:16] sum1;
    
    add16 addTest(a[15:0], b[15:0], 0, sum[15:0], sel);
    add16 add0(a[31:16], b[31:16], 0, sum0[31:16],);
    add16 add1(a[31:16], b[31:16], 1, sum1[31:16],);
    
    always@(sel) begin  // This is a combinational circuit
        case(sel)
            2'b00  : sum[31:16] = sum0;
            2'b01  : sum[31:16] = sum1;
        endcase
    end 
endmodule
