module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire w0;
    xnor(w0,in1,in2);
    xor(out,w0,in3);

endmodule
