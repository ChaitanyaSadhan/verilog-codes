module mux4to1_tb;

    reg [3:0]in; reg [1:0]sel;
    wire out;

    mux4to1 DUT ( out, in, sel);

    initial
    begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);
        
        $monitor($time, " in = %b, sel = %b, out = %b", in, sel, out);
        // $monitor($time);

        #5 in = 8; sel = 2'b11;
        #5 in = 4; sel = 2'b10;
        #5 in = 2; sel = 2'b01;
        #5 in = 1; sel = 2'b00;
        #5 $finish;

    end


endmodule