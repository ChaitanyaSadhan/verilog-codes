module mux16to1(out, in, sel);

    input [15:0] in;
    input [3:0] sel;
    output out;
    wire [15:0] in;
    wire [3:0] sel;
    wire out;

    assign out = in[sel];

endmodule