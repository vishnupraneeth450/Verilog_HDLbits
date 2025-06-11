module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a m1(.in1(a),.in2(b),.out1(out1),.in3(c),.out2(out2),.in4(d));

endmodule
