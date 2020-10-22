; Arquivo: palindromo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se uma palavra salva na memória
; é um palíndromo ou não. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.
; 
; A palavra possui tamanho fixo de 5 caracteres,
; começando no endereço 10 da RAM e terminando no
; endereço 14 da RAM. A palavra é codificado em
; ASCII.

; exemplo:
;  RAM[10] = a
;  RAM[11] = r
;  RAM[12] = a
;  RAM[13] = r
;  RAM[14] = a
; 
; i = 10
; j = 14
;
; while(Reg[1] - 12 <= 0):
;
;   if(Reg[i] - Reg[j] == 0):
;       Reg[0] = 1
;   else:
;       Reg[0] = 0
;       break
;   i += 1
;   j -= 1
;

leaw $10, %A    ; Move o valor 10 para Reg1
movw %A, %D
leaw $1, %A
movw %D, (%A)

leaw $14, %A    ; Move o valor 14 para Reg2
movw %A, %D
leaw $2, %A
movw %D, (%A)

WHILE:

    leaw $1, %A     ; Guarda o valor de Reg1 em D e 12 em A
    movw (%A), %D
    leaw $12, %A
    
    subw %A, %D, %D ; Subtrai o valor de Reg1 de 12

    leaw $END, %A   ; Sai do WHILE caso Reg1 - 12 <= 0
    jle %D
    nop

    IF:

        leaw $2, %A     ; Move os valores de Reg1 em A e Reg2 em D
        movw (%A), %A
        movw (%A), %D
        leaw $1, %A
        movw (%A), %A
        movw (%A), %A

        subw %D, %A, %D ; Subtrai A - D e guarda em D

        leaw $ELSE, %A  ; Checa se o valor de D é diferente de zero
        jne %D
        nop

        leaw $1, %A     ; Guarda 1 em Reg0
        movw %A, %D
        leaw $0, %A
        movw %D, (%A)

        leaw $INCREMENT, %A
        jmp
        nop

    ELSE:

        leaw $0, %A     ; Guarda 0 em Reg0
        movw %A, (%A)

        leaw $END, %A   ; Finaliza o processo
        jmp
        nop

    INCREMENT:

        leaw $1, %A     ; Incrementa 1 em Reg1
        movw (%A), %D
        incw %D
        movw %D, (%A)

        leaw $2, %A     ; Decrementa 1 em Reg2
        movw (%A), %D
        decw %D
        movw %D, (%A)

        leaw $WHILE, %A
        jmp
        nop
        
END: