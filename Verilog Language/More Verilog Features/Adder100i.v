module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    int i;
     
    always@(*) begin 
        for ( i = 0; i < 100; i++)begin 
            if (i == 0) begin
                cout[0] = a[0] & b[0] | a[0] & cin | b[0] & cin;
            	  sum[0]  = a[0] ^ b[0] ^ cin;
            end
            else begin 
            	sum[i]  = a[i] ^ b[i] ^ cout[i-1];
            	cout[i] = a[i] & b[i] | a[i] & cout[i-1] | b[i] & cout[i-1]; 
            end
            
        end
    end
    
endmodule
