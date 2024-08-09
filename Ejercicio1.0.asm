// Suma de dos números
@num1       // Cargar la dirección de num1
D=M         // D = M[num1] (cargar valor de num1 en D)
@num2       // Cargar la dirección de num2
D=D+M       // D = D + M[num2] (sumar num1 y num2)
@result     // Cargar la dirección de result
M=D         // M[result] = D (almacenar el resultado en result)
(END)       // Fin del programa
@END
0;JMP       // Bucle infinito para detener el programa