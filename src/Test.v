module Test (
    output reg[7:0] HEX0, HEX1, HEX2, HEX3,
    input[35:0] GPIO
);
    function [7:0] getBitMaskHex;
        input[4:0] bin;
        case (bin)
            4'b0000 : getBitMaskHex = 8'b00111111;
            4'b0001 : getBitMaskHex = 8'b00000110;
            4'b0010 : getBitMaskHex = 8'b01011011;
            4'b0011 : getBitMaskHex = 8'b01001111;
            4'b0100 : getBitMaskHex = 8'b01100110;          
            4'b0101 : getBitMaskHex = 8'b01101101;
            4'b0110 : getBitMaskHex = 8'b01111101;
            4'b0111 : getBitMaskHex = 8'b00000111;
            4'b1000 : getBitMaskHex = 8'b01111111;
            4'b1001 : getBitMaskHex = 8'b01101111;
            4'b1010 : getBitMaskHex = 8'b01110111;
            4'b1011 : getBitMaskHex = 8'b11111111;
            4'b1100 : getBitMaskHex = 8'b00111001;
            4'b1101 : getBitMaskHex = 8'b01011110;
            4'b1110 : getBitMaskHex = 8'b01111001;
            4'b1111 : getBitMaskHex = 8'b01110001;
        endcase
    endfunction

    function [7:0] getBitMaskDec;
        input[4:0] bin;
        case (bin)
            4'b0000 : getBitMaskDec = 8'b00111111;
            4'b0001 : getBitMaskDec = 8'b00000110;
            4'b0010 : getBitMaskDec = 8'b01011011;
            4'b0011 : getBitMaskDec = 8'b01001111;
            4'b0100 : getBitMaskDec = 8'b01100110;          
            4'b0101 : getBitMaskDec = 8'b01101101;
            4'b0110 : getBitMaskDec = 8'b01111101;
            4'b0111 : getBitMaskDec = 8'b00000111;
            4'b1000 : getBitMaskDec = 8'b01111111;
            4'b1001 : getBitMaskDec = 8'b01101111;
        endcase
    endfunction

    always @(GPIO) begin
        HEX0 = getBitMaskDec(GPIO[7:0]);
        HEX1 = getBitMaskDec(GPIO[15:8]);
        HEX2 = getBitMaskDec(GPIO[23:16]);
        HEX3 = getBitMaskDec(GPIO[31:24]);
    end
endmodule