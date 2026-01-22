// R0 is ram address 0 and R1 is ram address 1 here we compare the value and store greatesdt value in ram address 2

@R0
D=M
@R1
D=D-M
@OUT1
D;JLT
@R0
D=M
@R3
M=D
@END
0;JMP
(OUT1)
@R1
D=M
@R3
M=D
(END)
@END
0;JMP