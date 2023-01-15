module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min
);
  
    wire  [7:0] intermediate_result1;
    wire  [7:0] intermediate_result2;
    wire  [7:0] intermediate_result3;
    
    assign intermediate_result1 = a < b? a : b;
    assign intermediate_result2 = intermediate_result1 < c ?  intermediate_result1 : c ;
    assign intermediate_result3 = intermediate_result2 < d ? intermediate_result2 : d ;
    assign min = intermediate_result3;
 	//(condition ? if_true : if_false)
    
    

endmodule
