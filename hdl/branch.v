module branch(
    input wire clk,
    input wire rst_n,

    output reg [3:0] state,
    output reg [3:0] led
);

always@(posedge clk)begin
    if(!rst_n)begin
        state <= 0;
    end else begin
        state <= state + 1; //test123
end

always@(*)begin
    case(state)
        4'b0001 : led = 4'b0001;
        4'b0010 : led = 4'b0010;
        4'b0011 : led = 4'b0100;
        4'b0100 : led = 4'b1000;
        default : 4'b0000;
    endcase
end

endmodule


git config --global user.email "you@example.com"
  git config --global user.name "Your Name"