module top_module (
    input a,             // 0010 : | 0 0  -  1 |
    input b,             //        | 0 0  1  0 |
    input c,             //        | - 0  1  0 |
    input d,             //        | - 0  -  0 |
    output out_sop,
    output out_pos
); 
    assign out_sop = (c & d) | ((~a&~b) & (c & ~d));
    
    assign out_pos = (c) & (~b | d) & (~a | b);
    

endmodule
