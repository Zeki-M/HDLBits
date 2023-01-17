`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire AB,CD;
    
    assign AB = (a & b);
    assign CD =  (c & d);
    assign out = AB | CD;
    assign out_n = ~out;

endmodule
