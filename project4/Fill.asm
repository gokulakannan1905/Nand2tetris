// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//arr = 16384;
@SCREEN
D=A
@arr
M=D

//n = 8192;
@8192
D=A
@n
M=D

(loop)
//i = 0;
@i
M=0

//if 0 == KBD; JMP to clear
@KBD
D=M
@clear
D;JEQ

//if 0 == n-i; JMP to loop
(set)
@n
D=M
@i
D=D-M
@loop
D;JEQ

//arr[i]=0;
@i
D=M
@arr
A=D+M
M=-1

//i++; JMP to set
@i
M=M+1
@set
0;JMP


(clear)
//if 0 == n-i; JMP to loop
@n
D=M
@i
D=D-M
@loop
D;JEQ

//arr[i]=0;
@i
D=M
@arr
A=D+M
M=0

//i++; JMP to clear
@i
M=M+1
@clear
0;JMP
