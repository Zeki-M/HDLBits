module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    
    int i;
    always @(*) begin
    out = 2'b0;
    	for(i = 0; i < 3; i = i + 1) 
            out = in[i] ? out + 1'b1 : out + 1'b0;
    end
    

endmodule
