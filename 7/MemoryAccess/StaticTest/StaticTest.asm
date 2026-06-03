//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 8
@SP
A=M-1
D=M
@S.8
M=D
@SP
M=M-1
//pop static 3
@SP
A=M-1
D=M
@S.3
M=D
@SP
M=M-1
//pop static 1
@SP
A=M-1
D=M
@S.1
M=D
@SP
M=M-1
//push static 3
@S.3
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@S.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//sub
@SP
A=M-1
D=M
A=A-1
M=M-D
@SP
M=M-1
//push static 8
@S.8
D=M
@SP
A=M
M=D
@SP
M=M+1
//add
@SP
A=M-1
D=M
A=A-1
M=D+M
@SP
M=M-1
(EOF)
@EOF
0;JMP
