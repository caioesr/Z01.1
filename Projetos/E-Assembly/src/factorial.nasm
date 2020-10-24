; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

; R1 = R0
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)

leaw $CASE0, %A
je %D
nop

leaw $WHILE, %A
jmp
nop

CASE0:
    leaw $1, %A
    movw %A, %D
    movw %D, (%A)
    leaw $END, %A
    jmp
    nop

WHILE:
    ; R2 = 0
    leaw $0, %A
    movw %A, %D
    leaw $2, %A
    movw %D, (%A)

    ; R3 = R0 - 1
    leaw $0, %A
    movw (%A), %D
    decw %D
    leaw $3, %A
    movw %D, (%A)

    MULT:
        ; R2 = R2 + R1
        leaw $1, %A
        movw (%A), %D
        leaw $2, %A
        addw (%A), %D, %D
        movw %D, (%A)

        ; R3 = R3 - 1
        leaw $3, %A
        movw (%A), %D
        decw %D
        movw %D, (%A)

        leaw $STOP, %A
        jle %D
        nop

        leaw $MULT, %A
        jmp
        nop

    STOP:

    ; R1 = R2
    leaw $2, %A
    movw (%A), %D
    leaw $1, %A
    movw %D, (%A)

    ; R0 = R0 - 1
    leaw $0, %A
    movw (%A), %D
    decw %D
    movw %D, (%A)

    leaw $END, %A
    jle %D
    nop

    leaw $WHILE, %A
    jmp
    nop

END: