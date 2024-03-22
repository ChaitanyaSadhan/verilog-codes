module alu_tb;

    reg [15:0] X, Y;
    wire [15:0] Z;

    wire sign, zero, carry, parity, overflow;

    ALU DUT ( X, Y, Z, sign, zero, carry, parity, overflow);

    initial
        begin
            $dumpfile("alu.vcd");
            $dumpvars(0, alu_tb);

            $monitor($time, " X = %h, Y = %h, Z = %h, sign = %b, zero = %b, carry = %b, parity = %b, overflow = %b",
            X, Y, Z, sign, zero, carry, parity, overflow);
            
            #5 X = 16'h8fff; Y = 16'h8000;
            #5 X = 16'hfffe; Y = 16'h0002;
            #5 X = 16'hAAAA; Y = 16'h5555;
            #5 $finish;
            

        end


endmodule