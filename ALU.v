module ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output reg [3:0] Result
);

    always @(*) begin
        case(opcode)
            3'b000: Result = A + B;      
            3'b001: Result = A - B;      
            3'b010: Result = A & B;      
            3'b011: Result = A | B;      
            3'b100: Result = A ^ B;     
            3'b101: Result = ~(A & B);  
            3'b110: Result = ~(A | B);   
            3'b111: Result = 4'b0000;    
            default: Result = 4'b0000;   
        endcase
    end

endmodule
