module top_module (
    input [4:1] x,
    output f
); 
    wire SOPF,POSF;
    
    assign SOPF = ( (~x[1]&x[3]) | ((~x[3]&~x[4])&~x[2]) | (x[2]&(x[3]&x[4])) | (~x[2]&(x[3]&~x[4])) );  
    assign POSF = ( (x[3]|~x[2]) & (x[3]|~x[4]) & ((~x[1]|x[2])|~x[4]) & ((~x[1]|~x[2])|x[4]) ); 
    
    assign f = SOPF | POSF;
    
    
endmodule
