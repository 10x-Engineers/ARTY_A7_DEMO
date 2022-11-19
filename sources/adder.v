module adder(a,b,s,c);
  
    input  wire [1:0] a,b;
    output wire [1:0] s;
    output            c;
    assign {c,s} = a+b;
    
endmodule
