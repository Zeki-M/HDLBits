module top_module (
    input c,
    input d,
    output [3:0] mux_in
);  //  (s ? a : b)
      
    assign mux_in[0] = c ? 1 : d;
    assign mux_in[1] = 0;
    assign mux_in[2] = d ? 0 : 1;
    assign mux_in[3] = d ? c : 0;
  
endmodule
