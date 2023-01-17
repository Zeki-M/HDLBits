module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
	
    always@(*) begin
        int i;
          for(i = 1; i < 4; i++) begin           
              out_different[i-1] = (in[i] ^ in[i-1]);
        end
    end
    
    assign out_both = in & in[3:1];
    assign out_any = in[3:1] | in;
    
    assign out_different[3] = in[3] ^ in[0];

endmodule
