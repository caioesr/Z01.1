; Arquivo: stringLength.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi 
; Data: 28/03/2018
;
; Assuma que uma string é um conjunto de caracteres terminado
; em NULL (0).
; 
; Supondo que temos uma string que começa no endereço 8 da RAM.
; Calcule o seu tamanho e salve o resultado na RAM[0].
;
; Os caracteres estão formatados em ASCII
; http://sticksandstones.kstrom.com/appen.html
; 
; Exemplo:
;
;   Convertido para ASCII
;             |
;             v
;  RAM[8]  = `o`
;  RAM[9]  = `i`
;  RAM[10] = ` `
;  RAM[11] = `b`
;  RAM[12] =  l`
;  RAM[13] = `z`
;  RAM[14] = `?`
;  RAM[15] = NULL = 0x0000
;
;i = 8
;length = 0
;while(Reg[i] != 0):
;   length += 1
;   i += 1

leaw $8, %A     ; Guarda o valor 8 em A e depois o move para D, guardando-o no Reg1
movw %A, %D
leaw $1, %A
movw %D, (%A) 

leaw $0, %A     ; Zera o valor de Reg0
movw $0, (%A)

WHILE:

    leaw $1, %A     ; Move o valor de Reg1 para A, guarda o valor de (%A) em D e checa %D == 0
    movw (%A), %A
    movw (%A), %D
    leaw $END, %A
    je %D
    nop

    leaw $0, %A     ; Incrementa o valor de Reg0 em 1
    movw (%A), %D
    incw %D
    movw %D, (%A)

    leaw $1, %A     ; Incrementa o valor de Reg1 em 1
    movw (%A), %D
    incw %D
    movw %D, (%A)

    leaw $WHILE, %A ; Finaliza com o jmp incondicional
    jmp
    nop

END: