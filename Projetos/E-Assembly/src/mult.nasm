; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

leaw $0, %A
movw (%A), %D
leaw $24, %A
je %D
nop
leaw $1, %A
movw (%A), %D
leaw $24, %A
je %D
nop
leaw $0, %A
movw (%A), %D
leaw $3, %A
addw %D, (%A), %D
leaw $3, %A
movw %D, (%A)
leaw $2, %A
movw (%A), %D
incw %D
movw %D, (%A)
leaw $1, %A
subw %D, (%A),  %D
leaw $10, %A
jl %D