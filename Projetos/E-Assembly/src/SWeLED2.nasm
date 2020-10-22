; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!
;
;
;   LED = Reg[21184]
;   SW  = Reg[21185]
;

leaw $0, %A     ; Move 0 para Reg21184
movw %A, %D
leaw $21184, %A
movw %D, (%A)

leaw $1, %A     ; Faz a operação Reg21185 AND 0000000000000001
movw %A, %D
leaw $21185, %A
movw (%A), %A
andw %A, %D, %D

IF1:

    leaw $1, %A     ; Faz a operação A - D
    subw %A, %D, %D

    leaw $END1, %A ; Faz a comparação D != 0
    jne %D
    nop

    leaw $2, %A     ; Adiciona 0000000000000010 em Reg21184
    movw %A, %D
    leaw $21184, %A
    movw (%A), %A
    addw %A, %D, %D
    leaw $21184, %A
    movw %D, (%A)

END1:

leaw $4, %A     ; Adiciona 0000000000000100 em Reg21184
movw %A, %D
leaw $21184, %A
movw (%A), %A
addw %A, %D, %D
leaw $21184, %A
movw %D, (%A)

leaw $8, %A     ; Faz a operação Reg5 AND 0000000000001000
movw %A, %D
leaw $5, %A
movw (%A), %A
andw %A, %D, %D

IF2:

    leaw $8, %A     ; Faz a operação A - D
    subw %A, %D, %D

    leaw $END2, %A ; Faz a comparação D != 0
    jne %D
    nop

    leaw $8, %A     ; Adiciona 0000000000001000 em Reg21184
    movw %A, %D
    leaw $21184, %A
    movw (%A), %A
    addw %A, %D, %D
    leaw $21184, %A
    movw %D, (%A) 

END2:

leaw $16, %A     ; Adiciona 0000000000010000 em Reg21184
movw %A, %D
leaw $21184, %A
movw (%A), %A
addw %A, %D, %D
leaw $21184, %A
movw %D, (%A)

leaw $32, %A     ; Adiciona 0000000000100000 em Reg21184
movw %A, %D
leaw $21184, %A
movw (%A), %A
addw %A, %D, %D
leaw $21184, %A
movw %D, (%A)

; 128
leaw $128, %A   ; Faz a operação NOT(Reg21185 AND 0000000010000000) e guarda em D
movw %A, %D
leaw $21185, %A
movw (%A), %A
andw %A, %D, %D

IF3:

    leaw $128, %A     ; Faz a operação A - D
    subw %A, %D, %D

    leaw $END3, %A ; Faz a comparação D == 0
    je %D
    nop

    leaw $128, %A     ; Adiciona 0000000010000000 em Reg21184
    movw %A, %D
    leaw $21184, %A
    movw (%A), %A
    addw %A, %D, %D
    leaw $21184, %A
    movw %D, (%A)

END3: 

leaw $256, %A   ; Faz a operação NOT(Reg21185 AND 0000000100000000) e guarda em D
movw %A, %D
leaw $21185, %A
movw (%A), %A
andw %A, %D, %D

IF4:

    leaw $256, %A     ; Faz a operação A - D
    subw %A, %D, %D

    leaw $END4, %A ; Faz a comparação D == 0
    jne %D
    nop

    leaw $256, %A     ; Adiciona 0000000100000000 em Reg21184
    movw %A, %D
    leaw $21184, %A
    movw (%A), %A
    addw %A, %D, %D
    leaw $21184, %A
    movw %D, (%A)

END4: 
