; Arquivo: multiploDeDois.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; multiplo de dois, se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.

leaw $5, %A
movw (%A), %D

WHILE:
    leaw $1, %A
    movw %D, (%A)

    leaw $5, %A
    movw (%A), %D
    decw %D
    decw %D
    movw %D, (%A)

    leaw $END, %A
    jl %D
    nop

    leaw $WHILE, %A
    jmp
    nop

END:
    leaw $1, %A
    movw (%A), %D
    leaw $0, %A
    movw %D, (%A)