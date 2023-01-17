module top_module (input x, input y, output z);
    wire IA1, IB1, IA2, IB2;
    
    //submodule A assign z =  (x^y) & x ;
    //submodule B assign z = ~(x^y);
    
    assign IA1 =  (x^y) & x;
    assign IA2 =  (x^y) & x;
    assign IB1 = ~(x^y);
    assign IB2 = ~(x^y);
    
    assign z = (IA1 | IB1) ^ (IA2 & IB2);
 
    
    //wire IA1 , IB1 IA2, IB2
    
