module adder(a,b,s);
  
    input  wire [1:0] a,b;
    output wire [1:0] s;
    
    assign s = a+b;
    
endmodule
