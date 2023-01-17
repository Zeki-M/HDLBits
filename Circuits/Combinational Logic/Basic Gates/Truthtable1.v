module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire row2,row3,row5,row7;
    
 assign f = ((x3 == 0) & (x2 == 1) & (x1 == 0)) | 
        		((x3 == 0) & (x2 == 1) & (x1 == 1)) | 
        		((x3 == 1) & (x2 == 0) & (x1 == 1)) |
       			((x3 == 1) & (x2 == 1) & (x1 == 1)) ; 

endmodule
