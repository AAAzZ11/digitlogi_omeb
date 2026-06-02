

`timescale 1ns/1ps

module testbench;

reg CLK;
reg [9:0] SW;
reg [2:0] BTN;

wire [6:0] HEX0;
wire [6:0] HEX1;
wire [6:0] HEX2;
wire [6:0] HEX3;
wire [9:0] LED;

mcu uut(
    .CLK(CLK),
    .HEX0(HEX0),
    .HEX1(HEX1),
    .HEX2(HEX2),
    .HEX3(HEX3),
    .LED(LED),
    .SW(SW),
    .BTN(BTN)
);

initial begin
    CLK = 0;
end

always #5 CLK = ~CLK;

initial begin

    SW  = 0;
    BTN = 0;

    #20 SW[7:4] = 15;
    #20 SW[3:0] = 15;
    #20 SW[8] = 0;
    #25 SW[7:4] = 4;
    #25 SW[3:0] = 4;
    #25 SW[8] = 0;
    #30 SW[7:4] = 0;
    #30 SW[3:0] = 15;
    #30 SW[8] = 1;
    #35 SW[7:4] = 13;
    #35 SW[3:0] = 10;
    #35 SW[8] = 1;
    #40 SW[7:4] = 7;
    #40 SW[3:0] = 8;
    #40 SW[8] = 1;
    

    #40 $stop;
end

endmodule