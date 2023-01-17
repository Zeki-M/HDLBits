module top_module(
    input a,                 // (~b) & (~c)
    input b,                 // (~a&b) & (~c&~d)
    input c,                 // (b) & (c&d)
    input d,                 // (a&~b) & (c&d)
    output out  );           // (~a) & (c&~d)
    
    assign out = ((~b) & (~c)) | ((~a&b) & (~c&~d)) | ((b) & (c&d)) |(a&~b) & (c&d) | ((~a) & (c&~d)) ;
  

endmodule
