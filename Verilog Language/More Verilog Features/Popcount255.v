module top_module( 
    input [254:0] in,
    output [7:0] out );
	//(condition ? if_true : if_false)
    int i;
    always @(*) begin
     out = 8'd0;     
        for (i=0; i<255; i++)
                    if(in[i] == 1'b1)
                        out = out + 1'b1;
                    else
                        out = out + 1'b0;
                
        end
    
       
endmodule
