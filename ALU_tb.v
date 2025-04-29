module ALU_tb;
    reg [3:0] A, B;
    reg [2:0] opcode;
    wire [3:0] Result;

    ALU uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .Result(Result)
    );

    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, ALU_tb);       
$monitor("Time=%0t | A=%b | B=%b | Opcode=%b | Result=%b", $time, A, B, opcode, Result);
        A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;  // 5 + 3
        A = 4'b0101; B = 4'b0010; opcode = 3'b001; #10;  // 5 - 2
        A = 4'b1100; B = 4'b1010; opcode = 3'b010; #10;  // 12 AND 10
        A = 4'b1100; B = 4'b1010; opcode = 3'b011; #10;  // 12 OR 10
        A = 4'b1100; B = 4'b1010; opcode = 3'b100; #10;  // 12 XOR 10
        A = 4'b1111; B = 4'b1111; opcode = 3'b111; #10;  // Clear

        $finish;
    end

endmodule
