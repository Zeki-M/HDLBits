module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 	
    wire overflow1;
    wire overflow2;
    
    assign overflow1 = ((a[7]==0) &  (b[7]==0) & (s[7]==1));
    assign overflow2 = ((a[7]==1) &  (b[7]==1) & (s[7]==0));
        
    assign s = a + b;
    assign overflow = overflow1 | overflow2 ;

endmodule
