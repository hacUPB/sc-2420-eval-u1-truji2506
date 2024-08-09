// Factorial de un número
@num
D=M         // D = M[num]
@result
M=1         // Inicializar result a 1
@num
D=M         // D = M[num]

(LOOP)
@END
D;JLE       // Si D <= 0, fin del bucle
@result
M=D+M       // result = result * D
D=D-1       // D = D - 1
@LOOP
0;JMP       // Repetir el bucle

(END)
@END
0;JMP       // Bucle infinito para detener el programa