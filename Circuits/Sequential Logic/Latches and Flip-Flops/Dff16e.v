module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    always@(posedge clk) begin
        case(resetn)
  			1'b0 : q<= 0;
            1'b1 : begin
                if(byteena[1] == 1) begin
                    q[15:8] <= d[15:8];
                end
                if(byteena[0] == 1) begin
                    q[7:0] <= d[7:0];
                end
            end
        endcase
    end
    
endmodule
