module mux16to1(out, in, sel);

    input [15:0] in;
    input [3:0] sel;
    output out;
    wire [15:0] in;
    wire [3:0] sel;
    wire out; 
    wire [3:0]t;

    // assign out = in[sel];
    mux4to1 M1(t[0], in[3:0], sel[1:0]);
    mux4to1 M2(t[1], in[7:4], sel[1:0]);
    mux4to1 M3(t[2], in[11:8], sel[1:0]);
    mux4to1 M4(t[3], in[15:12], sel[1:0]);

    mux4to1 Mfinal(out, t, sel[3:2]);


endmodule