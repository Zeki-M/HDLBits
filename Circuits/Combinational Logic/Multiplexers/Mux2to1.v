module top_module( 
    input a, b, sel,
    output out ); 

    //sel=0, choose a. When sel=1, choose b.
    assign out = sel ? b : a;
    
endmodule
