module ALU ( X, Y, Z, sign, zero, carry, parity, overflow );

    input [15:0]X, Y;
    output [15:0] Z;
    output sign, zero, carry, parity, overflow;

    //behavioural description of 16 bit adder.
    // assign {carry, Z} = X + Y;

    //structural representation using 4 bit adders.
    wire [3:1]c;
    adder4 A0 ( Z[3:0], c[1], X[3:0], Y[3:0], 1'b0 );
    adder4 A1 ( Z[7:4], c[2], X[7:4], Y[7:4], c[1] );
    adder4 A2 ( Z[11:8], c[3], X[11:8], Y[11:8], c[2] );
    adder4 A3 ( Z[15:12], carry, X[15:12], Y[15:12], c[3] );




    assign sign = Z[15];
    assign zero = ~|Z;
    assign parity = ~^Z;
    assign overflow = ( X[15] & Y[15] & ~Z[15] ) | ( ~X[15] & ~Y[15] & Z[15] );

endmodule

