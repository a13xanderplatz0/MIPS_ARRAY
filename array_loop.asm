    .data                   # Sección de datos
array:  .word 5, 10, 15, 20, 25, 30  # Definimos un arreglo de 6 elementos
space:  .asciiz " "        # Definimos un espacio en blanco

    .text                   # Sección de código
    .globl main

main:
    # Inicializamos el puntero al arreglo
    la   $t0, array         # $t0 apunta al inicio del arreglo (dirección de array)
    li   $t2, 6             # $t2 será el contador del número de elementos (6 elementos)

loop:
    # Verificamos si hemos procesado todos los elementos (cuando $t2 sea 0)
    beq  $t2, $zero, end    # Si $t2 es 0, terminamos el loop

    # Cargamos el siguiente elemento del arreglo en $t1
    lw   $t1, 0($t0)        # Cargamos el valor de array[i] en $t1
    li   $v0, 1             # Código de servicio para imprimir un número entero
    move $a0, $t1           # Pasamos el valor de array[i] a $a0
    syscall                 # Llamada al sistema para imprimir el número

    # Imprimimos un espacio después del valor
    li   $v0, 4             # Código de servicio para imprimir una cadena
    la   $a0, space         # Cargamos la dirección del espacio en blanco
    syscall                 # Llamada al sistema para imprimir el espacio

    # Avanzamos al siguiente elemento del arreglo
    addi $t0, $t0, 4        # Movemos el puntero $t0 al siguiente elemento (incrementamos 4)

    # Decrementamos el contador y repetimos el loop
    subi $t2, $t2, 1        # Decrementamos el contador $t2
    j loop                  # Volvemos al inicio del loop

end:
    # Fin del programa
    li   $v0, 10            # Código de servicio para terminar el programa
    syscall                 # Llamada al sistema para terminar
