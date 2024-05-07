module down_counter_4bit (
    input wire clk,
    input wire reset,
    input wire [0:3] load_data,
    input wire load_en,
    output reg [0:3] count,
    output reg load_flag
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= load_data;
    else if (load_en)
    begin
        load_flag <= 1'b1;
    end
    else if (load_flag == 1'b1)
        count <= count - 1;
    else if (count != 0)
        count <= count - 1;
    else
        load_flag <= 1'b0;
end

endmodule