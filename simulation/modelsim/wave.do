onerror {resume}
quietly WaveActivateNextPane {} 0


add wave -noupdate -divider {TOP LEVEL INPUTS}

add wave -noupdate -format Logic \
/testbench/CLK

add wave -noupdate -format Literal -radix Unsigned \
/testbench/SW

add wave -noupdate -format Literal -radix Unsigned \
/testbench/BTN



add wave -noupdate -divider {TOP LEVEL OUTPUTS}

add wave -noupdate -format Literal -radix Binary \
/testbench/HEX0

add wave -noupdate -format Literal -radix Binary \
/testbench/HEX1

add wave -noupdate -format Literal -radix Binary \
/testbench/HEX2

add wave -noupdate -format Literal -radix Binary \
/testbench/HEX3

add wave -noupdate -format Literal -radix Binary \
/testbench/LED



add wave -noupdate -divider {7SEG_DECODER}

add wave -noupdate -format Literal -radix Unsigned \
/testbench/uut/seg0/i_Binary_Num

add wave -noupdate -format Literal -radix Binary \
/testbench/uut/seg0/r_Hex_Encoding

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_A

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_B

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_C

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_D

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_E

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_F

add wave -noupdate -format Logic \
/testbench/uut/seg0/o_Segment_G



TreeUpdate [SetDefaultTree]

WaveRestoreCursors {{Cursor 1} {0 ps} 0}

configure wave -namecolwidth 200
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -timelineunits ns

update