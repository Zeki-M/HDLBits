module top_module(
    //module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  //  wire [15:0] ainput1;
  //  wire [15:0] binput1;
  //  wire [15:0] sum1;
  //  wire cin1;
    wire cout1;
    
  //  assign ainput1 = a[15:0];
   // assign binput1 = b[15:0];
  //  assign sum1 = sum[15:0];
    add16 add1( a[15:0], b[15:0], 0, sum[15:0], cout1);
    
  //  wire [15:0] ainput2;
  //  wire [15:0] binput2;
  //  wire [15:0] sum2;
  	wire cout2;
 
//    assign ainput2 = a[31:16];
  //  assign binput2 = b[31:16];
  //  assign sum2 = sum[31:16];
    add16 add2(a[31:16], b[31:16], cout1, sum[31:16], cout2);
    
    assign sum = {sum[31:16], sum[15:0]};
    
    
    
endmodule
