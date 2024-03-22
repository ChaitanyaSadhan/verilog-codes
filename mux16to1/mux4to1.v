module mux4to1(out, in, sel);

    input [3:0]in;
    input [1:0]sel;

    output out;

    wire [3:0]in; wire [1:0]sel; 
    wire t1, t2;
    wire out;

    // assign out = in[sel];
    mux2to1 m1(t1, in[3:2], sel[0]);
    mux2to1 m2(t2, in[1:0], sel[0]);
    mux2to1 m3(out, {t1,t2} , sel[1]);

endmodule