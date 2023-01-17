module top_module(            // (a)
    input a,                  // (~b) & (c)
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out = (a) | (~b & c);

endmodule
