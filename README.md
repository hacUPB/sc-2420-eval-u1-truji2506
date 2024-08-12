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


### ACTIVIDAD 2 

### EJERCICIO 1 

### Suma de los primeros N números naturales:
Escribe un programa que calcule la suma de los primeros N números naturales. El valor de N estará almacenado en RAM[0].

Se realizo pruebas en el visual estudio usando C# en el cual no tuve ningun inconveniente al momento de correr el ejercico de la suma de los primeros N numeros naturales
```asm
class Program
{
    static void Main()
    {
        Console.Write("Ingrese el valor de N: ");
        int N = int.Parse(Console.ReadLine());
        int suma = 0;
        for (int i = 1; i <= N; i++)
        {
            suma += i;
        }
        Console.WriteLine($"La suma de los primeros {N} números naturales es: {suma}");
    }
}
```
Teniendo encuenta lo anterior se realizaron varias pruebas y el codigo en Nand2tetris me funciona pero no es el adecuado para el ejercicio, tuve problemas con darle terminación al ejericio 
```asm
-   @0
-   D=M
-   @sum
-   M=0
-   @i
-   @0
-   D=M
-   @i
-   D=D-M
-   @END
-   @i
-   D=M
-   @sum
-   M=D+M
-   @i
-   M=M+1
-   (loop)
-   @loop  
-   (END)
-   @sum
-   D=M
-   @5
-   M=D
-   0;JMP
``` 
Dejo el ejercicio por terminar.


### EJERCICIO 2

### Suma de los números pares hasta N:
Escribe un programa que calcule la suma de todos los números pares desde 0 hasta N (inclusive). El valor de N se encuentra en RAM[0] y la suma resultante debe almacenarse en RAM[1].
```asm
@0
D=M      
@2
M=D      
M=0           
(LOOP)
@3
D=M       
@2
D=D-M     
D;JGT     
@3
D=M             
@2
M=D+1   
@4
D=M       
@2 
@LOOP
0;JMP   
(END)
@END
0;JMP     
```
Error al momento de cargar invalid ASM value: M+D line 18 
Se corrigio este error en la linea 18 y 26
Se trato de modificar la linea 15 para que sean sumados los valores y no deja correr el ejercicio ya que tienen un error 
No alcance a terminar el codigo en nand2tetris ni hacer la prueba en C# 

El código parece intentar comparar los valores en las direcciones de memoria 2 y 3, y luego modificar la dirección 2 basado en la comparación. Sin embargo, algunos pasos están incompletos o mal definidos, lo que hace difícil determinar el propósito exacto. Hay instrucciones redundantes o incorrectas, como M=0, y la falta de un punto de salida claro del bucle.

### EJERCICIO 3
Multiplicación

Este código efectúa una suma repetida del valor almacenado en R0 un número de veces igual al valor inicial almacenado en R1. El resultado de la suma acumulada se almacena en la dirección de memoria 2. Una vez que R1 llega a 0, el programa salta a END y se queda en un bucle infinito.

```asm
-   @0
-   D=M         
-   @R0
-   M=D          
-   @1
-   D=M      
-   @R1
-   M=D         
-   @2
-   M=0          
-   @R2
-   M=0         
-   (LOOP)
-   @R1
-   D=M           
-   @END
-   D;JEQ         
-   @R0
-   D=M          
-   @2
-   M=M+D         
-   @R1
-   MD=M-1        
-   @LOOP
-   0;JMP        
-   (END)
-   @END
-   0;JMP        
```

### CORRECCIÓN EJERCICIO 1

### Suma de los primeros N números naturales

Esta corrección del ejercicio 1 se encuentra corriendo de forma correcta 

```asm
@0
D=M         
@R1
M=D         
@0
M=0          
(LOOP)
@R1
D=M       
@END
D;JEQ       
@R1
D=M         
@SUM
0;JMP        
@0
M=D+M        
@R1
M=M-1        
@LOOP
0;JMP        
(END)
@END
0;JMP      
```
### ACTIVIDAD 3

### EJERCICIO 1 

### Objetivo
Se empezo a realizar el experimento de poner lineas dos en el extremo y una en el medio

### Procedimiento
se intento subir el codigo para correrlo y me saltaba un error, el profesor me ayudo y me dijo que habia que tener una corrección por que tenia dos variables con el mismo nombre (lOOP)
se realizar la corrección y se proceder a correr el codigo, en el intento se evidenciaba en la pantalla dos lineas a la mitad se corrigio las coordenadas y la linea de la izquiera y la del medio se realizaban correctamente pero las coodenadas de la derecha no me funciono por mas que intente realizar pruebas

### Conclusiones
Podemos concluir que para la realización de lineas en la pantalla es muy necesario tener en cuenta el tamaño de la misma en pixeles para realizar de forma concreta las lineas 

```asm
    @16384              //16384
    D=A 
    @PUNTERO
    M=D     //puntero = 16384

    @256
    D=A 
    @CONT
    M=D     //cont = 256


    (LOOP)
    @PUNTERO
    A=M 
    M=-1
    @32
    D=A 
    @PUNTERO
    M=D+M 
    @CONT
    MD=M-1
    @LOOP
    D;JGT

    @16400              //16400
    D=A 
    @PUNTERO
    M=D     //puntero = 16400

    @256
    D=A 
    @CONT
    M=D     //cont = 256

    (LOOP2)
    @PUNTERO
    A=M 
    M=-1
    @32
    D=A 
    @PUNTERO
    M=D+M 
    @CONT
    MD=M-1
    @LOOP2
    D;JGT

    @16700            //16700
    D=A 
    @PUNTERO
    M=D     //puntero = 16700

    @256
    D=A 
    @CONT
    M=D     //cont = 256

    (LOOP3)
    @PUNTERO
    A=M 
    M=-1
    @32
    D=A 
    @PUNTERO
    M=D+M 
    @CONT
    MD=M-1
    @LOOP3
    D;JGT

(END)
    @END
    0;JMP
```
### Ejercicio 2

### Objetivo
realizar un codigo de barras con teclado

### Procedimiento
Se realizo el codigo para que realizara en la pantalla una linea negra de 16 bits y fuera consecutivas 

### Conclusionees
Podemos concluir que para la realización de lineas en la pantalla es muy necesario tener en cuenta el tamaño de la misma en pixeles para realizar de forma concreta las lineas 

```asm
(TECLADO)
            @24576
            D=M 
            @113 //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR
            D;JEQ
            @TECLADO
            0;JMP

(DIBUJAR)
            @16384
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256

        (LOOP)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP
            D;JGT
(TECLADO2)
            @24576
            D=M 
            @119 //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR2
            D;JEQ
            @TECLADO2
            0;JMP

(DIBUJAR2)
            @16450
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP2)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP2
            D;JGT
(TECLADO3)
            @24576
            D=M 
            @101 //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR3
            D;JEQ
            @TECLADO3
            0;JMP

(DIBUJAR3)
            @16516
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP3)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP3
            D;JGT
(TECLADO4)
            @24576
            D=M 
            @114 //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR4
            D;JEQ
            @TECLADO4
            0;JMP

(DIBUJAR4)
            @16582
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP4)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP4
            D;JGT

(TECLADO5)
            @24576
            D=M 
            @116 //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR5
            D;JEQ
            @TECLADO5
            0;JMP

(DIBUJAR5)
            @16648
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP5)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP5
            D;JGT

(TECLADO6)
            @24576
            D=M 
            @121 //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR6
            D;JEQ
            @TECLADO6
            0;JMP

(DIBUJAR6)
            @16714
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP6)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP6
            D;JGT

(TECLADO7)
            @24576
            D=M 
            @117    //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR7
            D;JEQ
            @TECLADO7
            0;JMP

(DIBUJAR7)
            @16780
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP7)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP7
            D;JGT


(TECLADO8)
            @24576
            D=M 
            @105    //NUMERO DE TECLA
            D=D-A 
            @DIBUJAR8
            D;JEQ
            @TECLADO8
            0;JMP

(DIBUJAR8)
            @16846
            D=A 
            @PUNTERO
            M=D     //puntero = 16384

            @256
            D=A 
            @CONT
            M=D     //cont = 256
(LOOP8)
            @PUNTERO
            A=M 
            M=-1
            @32
            D=A 
            @PUNTERO
            M=D+M 
            @CONT
            MD=M-1
            @LOOP8
            D;JGT




        (END)
            @END
            0;JMP
´´´
