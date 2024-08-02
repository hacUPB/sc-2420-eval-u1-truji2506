[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/WfEJSxe8)
# Bitácora de la Unidad 1

### Estudiante:  Jose Ignacio Trujillo Cano
### ID:  000335384

### ACTIVIDAD 1

1. ###  Realiza un listado de todos los componentes de hardware y software.

R//
Hardware
-   Unidad central de procesamiento (CPU)
-   Placa Base
-   Memoria RAM
-   Memoria ROM
-   Memoria caché
-   Unidades de almacenamiento
-   Fuente de alimentación
-   Disco Duro
-   Tarjeta de video (GBU)
-   Caja o gabinete
-   Tarjeta de sonido 
-   Ventiladores y disipadores de calor
-   Periféricos

Software
-   Navegador web
-   Suite de productividad
-   Software de gráficos y edición de fotos
-   Reproductores multimedia
-   Programas de mensajería
-   Software de seguridad
-   Software de edición de video
-   Software de juegos
-   Utilidades del sistema

2. ### Redacta una definición de la arquitectura de una computadora con tus propias palabras. Enumera las diferentes variantes de arquitecturas que existen.

R//
La arquitectura de una computadora es la forma en que se organizan y conectan sus componentes internos para que pueda funcionar y realizar tareas.

Tipos de arquitecturas de computadoras:

1.   Von Neumann: Usa una sola memoria para datos e instrucciones, lo que puede causar lentitud.
2.   Harvard: Tiene memorias separadas para datos e instrucciones, lo que permite que sean más rápidas.
3.   CISC (Complex Instruction Set Computer): Usa muchas instrucciones complejas para realizar tareas con menos pasos.
4.   RISC (Reduced Instruction Set Computer): Usa instrucciones simples y rápidas para ser más eficiente.
5.   MISC (Minimal Instruction Set Computer): Usa un número muy reducido de instrucciones para simplificar el hardware.
6.   EPIC (Explicitly Parallel Instruction Computing): Permite ejecutar muchas instrucciones al mismo tiempo.


 Organiza los resultados de la búsqueda en un mapa conceptual.

 Profundiza en la CPU de la computadora. Investiga y agrega al mapa los componentes internos de la CPU.

![Mapa Conceptual](Mapaconceptual2.png)


### Actividad 2 

### EJERCICIO 1 

// Suma de dos números
@num1       // Cargar la dirección de num1
D=M         // D = M[num1] (cargar valor de num1 en D)
@num2       // Cargar la dirección de num2
D=D+M       // D = D + M[num2] (sumar num1 y num2)
@result     // Cargar la dirección de result
M=D         // M[result] = D (almacenar el resultado)
(END)       // Fin del programa
@END
0;JMP       // Bucle infinito para detener el programa

### EJERCICIO 2

@num1
D=M         // D = M[num1]
@num2
D=D-M       // D = num1 - num2
@GREATER
D;JGT       // Si D > 0, salta a MAYORQUE
@LESS
D;JLT       // Si D < 0, salta a MENORQUE
@EQUAL
0;JMP       // Si D == 0, salta a IGUAL

(MAYORQUE)
@result
M=1         // num1 > num2
@END
0;JMP

(MENORQUE)
@result
M=-1        // num1 < num2
@END
0;JMP

(IGUAL)
@result
M=0         // num1 == num2
@END
0;JMP

(END)
@END
0;JMP

### EJERCICIO 3

// Multiplicación de los valores en la posición 0 y 1, resultado en la posición 2
@0
D=M           // D = M[0]
@R0
M=D           // Guardamos M[0] en R0 (temporal)

@1
D=M           // D = M[1]
@R1
M=D           // Guardamos M[1] en R1 (temporal)

// Inicializamos el acumulador y el contador
@2
M=0           // M[2] = 0 (resultado)
@R2
M=0           // R2 = 0 (contador)

// Comenzamos el bucle de multiplicación
(LOOP)
@R1
D=M           // D = R1 (segundo número)
@END
D;JEQ         // Si R1 es 0, terminamos el bucle

@R0
D=M           // D = R0 (primer número)
@2
M=M+D         // M[2] += D (acumulador += primer número)

@R1
MD=M-1        // R1 -= 1
@LOOP
0;JMP         // Repetir el bucle

(END)
@END
0;JMP         // Loop infinito para detener el programa

