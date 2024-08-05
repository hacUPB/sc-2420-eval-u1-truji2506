// Inicializamos las direcciones de memoria
@0
D=M          // D = N (valor almacenado en RAM[0])
@R1
M=D          // Guardamos N en R1
@0
M=0          // Reiniciamos RAM[0] para usarlo como acumulador de la suma

(LOOP)
@R1
D=M          // D = valor de R1 (N)
@END
D;JEQ        // Si N es 0, terminamos el bucle
@R1
D=M          // D = valor de R1 (N)
@SUM
0;JMP        // Salta a SUM para hacer la suma

(SUM)
@0
M=D+M        // RAM[0] = RAM[0] + N
@R1
M=M-1        // N = N - 1
@LOOP
0;JMP        // Repetimos el bucle

(END)
@END
0;JMP        // Bucle infinito para finalizar el programa
