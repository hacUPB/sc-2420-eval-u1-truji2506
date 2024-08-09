@num1
D=M         // D = M[num1]
@num2
D=D-M       // D = num1 - num2
@GREATER
D;JGT       // Si D > 0, salta a GREATER
@LESS
D;JLT       // Si D < 0, salta a LESS
@EQUAL
0;JMP       // Si D == 0, salta a EQUAL

(GREATER)
@result
M=1         // num1 > num2
@END
0;JMP

(LESS)
@result
M=-1        // num1 < num2
@END
0;JMP

(EQUAL)
@result
M=0         // num1 == num2
@END
0;JMP

(END)
@END
0;JMP