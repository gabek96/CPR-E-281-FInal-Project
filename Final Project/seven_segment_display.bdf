module seven_segment_display (
    input wire [15:0] data_bus, // 16-bit bus line
    input wire [3:0] reg_data, // 4-bit register data
    input wire clk,
    input wire enable,
    output reg [6:0] anode
);

    // Shift register
    reg [15:0] qout;

    // Seven segment display decoder
    reg [3:0] bcd1, bcd2, bcd3, bcd4;

    always @(posedge clk) begin
        if (!enable) begin
            qout <= {qout[14:0], data_bus[15]};
            bcd1 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
            bcd2 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
            bcd3 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
            bcd4 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
        end
        else begin
            // Shift data from bus line to shift register
            qout <= {qout[14:0], data_bus[15]};

            // Decode data from 4-bit register
            bcd1 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
            bcd2 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
            bcd3 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};
            bcd4 <= {reg_data[3], reg_data[2], reg_data[1], reg_data[0]};

            // Map BCD values to seven segment display
            case (bcd1)
                0: anode = 7'b0111111;
                // ...
                9: anode = 7'b1111110;
                default: anode = 7'b0000000; // defaults is all off or perhaps make it look like an E.
            endcase

            case (bcd2)
                0: anode = 7'b0111111;
                // ...
                9: anode = 7'b1111110;
                default: anode = 7'b0000000; // defaults is all off or perhaps make it look like an E.
            endcase

            case (bcd3)
                0: anode = 7'b0111111;
                // ...
                9: anode = 7'b1111110;
                default: anode = 7'b0000000; // defaults is all off or perhaps make it look like an E.
            endcase

            case (bcd4)
                0: anode = 7'b0111111;
                // ...
                9: anode = 7'b1111110;
                default: anode = 7'b0000000; // defaults is all off or perhaps make it look like an E.
            endcase
        end
    end

endmodule