module top_module (
    input [4:0] a, b, c, d, e, f,//5bit
    output [7:0] w, x, y, z );   //8bit
    
    assign {w, x, y, z}  = {a,b,c,d,e,f,2'b11};
    
endmodule
