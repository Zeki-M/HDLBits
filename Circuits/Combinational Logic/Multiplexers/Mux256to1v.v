module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

     int i;
    always@(*) begin
        for(i = 0; i < 256; i++)begin
            if(sel == i)
                out = {in[i*4+3], in[i*4+2], in[i*4+1], in[i*4+0]};    
        end
        
       
    end
    
    
endmodule
