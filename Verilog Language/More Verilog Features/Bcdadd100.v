module top_module( 
    input [399:0] a, b,                   
    input cin,
    output cout,
    output [399:0] sum );
  													//module bcd_fadd (
    wire [99:0] cout100; 							    // input [3:0] b,cout100;						 			//input     cin,
   													//output   cout,
   													// output [3:0] sum );
     bcd_fadd bcd_fadd100(
                   .a    (a[3:0]),
                   .b    (b[3:0]),
                   .cin  (cin),
                   .cout (cout100[0]),
                   .sum  (sum[3:0])
       );
   generate
       genvar i;
       for (i=1; i<100; i++)begin: bcd_fadd            
        		 bcd_fadd bcd_fadd400(
                   .a    (a[4 * i + 3: 4*i]),
                   .b    (b[4 * i + 3: 4*i]),
                   .cin  (cout100[i-1]),
                   .cout (cout100[i]),
                   .sum  (sum[4 * i + 3: 4*i]) 
             );
       end
  endgenerate
        
    assign cout = cout100[99];
		
endmodule
