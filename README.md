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

### EJERCICIO 3
Multiplicación

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
