module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    
    mod_a inst1 ( 
		    .in1(a), 	// Port"in1"connects to wire "a"
		    .in2(b),
        .in3(c),
        .in4(d),  // Port "in2" connects to wire "b"
        .out1(out1),
        .out2(out2)// Port "out" connects to wire "out" 
    );

endmodule
