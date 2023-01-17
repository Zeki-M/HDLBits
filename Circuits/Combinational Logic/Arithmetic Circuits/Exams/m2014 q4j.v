module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	FourbitfullAdder Four(x,y,sum);
    endmodule
	
	module FullAdder(input x,input y, input cin, output sum, output cout);
    	assign {cout, sum} = x + y + cin;
    endmodule
	
	module FourbitfullAdder(input [3:0]x, input [3:0]y, output [4:0]sum) ;
        wire [2:0] cout1;
        
        FullAdder FA1(x[0],y[0],0,sum[0],cout1[0]);
        FullAdder FA2(x[1],y[1],cout1[0],sum[1],cout1[1]);
        FullAdder FA3(x[2],y[2],cout1[1],sum[2],cout1[2]);
        FullAdder FA4(x[3],y[3],cout1[2],sum[3],sum[4]); 
        
   endmodule 
