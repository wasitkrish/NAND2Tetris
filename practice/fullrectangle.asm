@0
D=M
@INFINITE
D;JLE
@SCREEN
D=A
@address
M=D
(LOOP)
@0
D=M
@END
D;JEQ
@32
D=A
@i
M=D
(SECONDARY)
@address
A=M
M=-1
@address
M=M+1
@i
M=M-1
D=M
@SECONDARY
D;JGT
@0
M=M-1
@LOOP 
0;JMP
(END)
@END
0;JMP



