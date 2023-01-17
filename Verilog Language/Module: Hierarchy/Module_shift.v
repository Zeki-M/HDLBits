module top_module ( input clk, input d, output q );

    wire d1;
    wire q1;
    my_dff dflop1( clk, d, q1 );
    
    wire q2;
    my_dff dflop2( clk, q1, q2);
    
    my_dff dflop3( clk, q2, q);
  
endmodule
