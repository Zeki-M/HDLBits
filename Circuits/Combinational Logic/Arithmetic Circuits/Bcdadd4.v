module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
	
    FourBCD four(a,b,cin,cout,sum);
    
endmodule

    module FourBCD (input [15:0] a, 
                input [15:0] b, 
                input cin, 
                output cout, 
                output [15:0] sum );
    wire [2:0] cout1;
    
    bcd_fadd FA0(a[3:0], b[3:0],cin, cout1[0], sum[3:0]);
    bcd_fadd FA1(a[7:4], b[7:4],cout1[0], cout1[1], sum[7:4] );
    bcd_fadd FA2(a[11:8], b[11:8],cout1[1], cout1[2], sum[11:8]);
    bcd_fadd FA3(a[15:12], b[15:12],cout1[2], cout, sum[15:12]);
  
endmodule
