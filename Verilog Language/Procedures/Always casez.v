// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    
    always @(*) begin
        casez (in[7:0])
       
        8'bzzzzzzz1: pos = 3'd0;   // in[3:1] can be anything
        8'bzzzzzz10: pos = 3'd1;
        8'bzzzzz100: pos = 3'd2;
        8'bzzzz1000: pos = 3'd3;
        8'bzzz10000: pos = 3'd4;
        8'bzz100000: pos = 3'd5;
        8'bz1000000: pos = 3'd6;
        8'b10000000: pos = 3'd7;
            
      //  7'hz1: pos = 3'd0;   // in[3:1] can be anything
     //   7'hz2: pos = 3'd1;
       // 7'hz4: pos = 3'd2;
      ///  7'hz8: pos = 3'd3;
      //  7'h1z: pos = 3'd4;
      //  7'h2z: pos = 3'd5;
      //  7'h4z: pos = 3'd6;
      //  7'h8z: pos = 3'd7;
   
        default: pos = 0;
    	endcase
    end

endmodule
