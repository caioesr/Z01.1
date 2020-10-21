; Arquivo: Max.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares 
; Data: 27/03/2017
; Log :
;     - Rafael Corsi portado para Z01
;
; Calcula R2 = max(R0, R1)  (R0,R1,R2 se referem a  RAM[0],RAM[1],RAM[2])
; ou seja, o maior valor que estiver, ou em R0 ou R1 sera copiado para R2
; Estamos considerando número inteiros
;
;
;pseudo-code
;
;R2 = 0
;
;R2 = R0 - R1
;
;if(R2 > 0):
;   R2 = R0
;
;else:
;
;   R2 = R1

leaw $2, %A     ; Move para Reg2 o valor 0
movw $0, (%A)

leaw $1, %A     ; Move para D o valor de Reg1
movw (%A), %D

leaw $0, %A     ; Move Reg0 para A

subw (%A), %D, %A   ; Subtrai Reg0 de Reg1 e guarda em A

movw %A, %D     ; Move o valor de A para D

IF:

    leaw $ELSE, %A  ; Guarda o valor da label ELSE em A e executa o jmp para a condição  D < 0
    jl %D
    nop

    leaw $0, %A     ; Guarda o valor de Reg0 em D
    movw (%A), %D

    leaw $2, %A     ; Guarda o valor de D em Reg2
    movw %D, (%A)

    leaw $END, %A   ; Termina o if pulando para o fim
    jmp
    nop

ELSE:

    leaw $1, %A     ; Guarda o valor de Reg1 em D
    movw (%A), %D

    leaw $2, %A     ; Guarda em Reg2 o valor de D
    movw %D, (%A)

    leaw $END, %A   ; Termina o else pulando para o fim
    jmp
    nop

END: