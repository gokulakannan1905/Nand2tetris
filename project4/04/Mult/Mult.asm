// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@i
M=0
@sum
M=0

(while)
@R1
D=M
@i
D=D-M
@result
D;JEQ

@R0
D=M
@sum
M=D+M

@i
M=M+1
@while
0;JMP

(result)
@sum
D=M
@R2
M=D

(end)
@end
0;JMP