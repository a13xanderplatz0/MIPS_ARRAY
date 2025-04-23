    .data                   # Sección de datos
array:  .word 5, 10, 15, 20, 25, 30  # Definimos un arreglo de 6 elementos
space:  .asciiz " "        # Definimos un espacio en blanco

    .text                   # Sección de código
    .globl main

main:
    # Inicializamos el puntero al arreglo
    la   $t0, array         # $t0 apunta al inicio del arreglo (dirección de array)

    # Imprimimos el primer elemento
    lw   $t1, 0($t0)        # Cargamos el valor de array[0] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[0] a $a0 (argumento para la impresión)
    syscall                 # Llamada al sistema para imprimir el número

    # Imprimimos un espacio después del valor
    li   $v0, 4             # Código de servicio para imprimir una cadena
    la   $a0, space         # Cargamos la dirección del espacio en blanco
    syscall                 # Llamada al sistema para imprimir el espacio

    # Imprimimos el segundo elemento
    lw   $t1, 4($t0)        # Cargamos el valor de array[1] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[1] a $a0
    syscall                 # Llamada al sistema para imprimir el número

    # Imprimimos un espacio después del valor
    li   $v0, 4             # Código de servicio para imprimir una cadena
    la   $a0, space         # Cargamos la dirección del espacio en blanco
    syscall                 # Llamada al sistema para imprimir el espacio

    # Imprimimos el tercer elemento
    lw   $t1, 8($t0)        # Cargamos el valor de array[2] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[2] a $a0
    syscall                 # Llamada al sistema para imprimir el número

    # Imprimimos un espacio después del valor
    li   $v0, 4             # Código de servicio para imprimir una cadena
    la   $a0, space         # Cargamos la dirección del espacio en blanco
    syscall                 # Llamada al sistema para imprimir el espacio

    # Imprimimos el cuarto elemento
    lw   $t1, 12($t0)       # Cargamos el valor de array[3] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[3] a $a0
    syscall                 # Llamada al sistema para imprimir el número

    # Imprimimos un espacio después del valor
    li   $v0, 4             # Código de servicio para imprimir una cadena
    la   $a0, space         # Cargamos la dirección del espacio en blanco
    syscall                 # Llamada al sistema para imprimir el espacio

    # Imprimimos el quinto elemento
    lw   $t1, 16($t0)       # Cargamos el valor de array[4] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[4] a $a0
    syscall                 # Llamada al sistema para imprimir el número

    # Imprimimos un espacio después del valor
    li   $v0, 4             # Código de servicio para imprimir una cadena
    la   $a0, space         # Cargamos la dirección del espacio en blanco
    syscall                 # Llamada al sistema para imprimir el espacio

    # Imprimimos el sexto elemento
    lw   $t1, 20($t0)       # Cargamos el valor de array[5] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[5] a $a0
    syscall                 # Llamada al sistema para imprimir el número

    # Fin del programa
    li   $v0, 10            # Código de servicio para terminar el programa
    syscall                 # Llamada al sistema para terminar

