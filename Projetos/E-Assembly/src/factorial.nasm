; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

; R1 = R0
leaw $0, %A         ; A = 0
movw (%A), %D       ; D = R0
leaw $1, %A         ; A = 1
movw %D, (%A)       ; R1 = R0

leaw $CASE0, %A     ; A = $CASE0
je %D               ; D == 0 => jump CASE0
nop                 

leaw $WHILE, %A     ; A = $WHILE
jmp                 ; jump WHILE
nop

CASE0:
    leaw $1, %A     ; A = 1
    movw %A, %D     ; D = 1
    movw %D, (%A)   ; R1 = 1
    leaw $END, %A   ; a = $END
    jmp             ; jump END
    nop

WHILE:
    ; R2 = 0
    leaw $0, %A                 ; A = 0
    movw %A, %D                 ; D = 0
    leaw $2, %A                 ; A = 2
    movw %D, (%A)               ; R2 = 0

    ; R3 = R0 - 1
    leaw $0, %A                 ; A = 0
    movw (%A), %D               ; D = R0
    decw %D                     ; D = R0 - 1
    leaw $3, %A                 ; A = 3
    movw %D, (%A)               ; R3 = R0 - 1

    MULT:
        ; R2 = R2 + R1
        leaw $1, %A             ; A = 1
        movw (%A), %D           ; D = R1
        leaw $2, %A             ; A = 2
        addw (%A), %D, %D       ; D = R1 + R2
        movw %D, (%A)           ; R2 = R1 + R2

        ; R3 = R3 - 1
        leaw $3, %A             ; A = 3
        movw (%A), %D           ; D = R3
        decw %D                 ; D = R3 - 1
        movw %D, (%A)           ; R3 = R3 - 1

        leaw $STOP, %A          ; A = $STOP
        jle %D                  ; D <= 0 => jump STOP
        nop

        leaw $MULT, %A          ; A = $MULT
        jmp                     ; jump MULT
        nop

    STOP:

    ; R1 = R2
    leaw $2, %A                 ; A = 2
    movw (%A), %D               ; D = R2
    leaw $1, %A                 ; A = 1
    movw %D, (%A)               ; R1 = R2

    ; R0 = R0 - 1
    leaw $0, %A                 ; A = 0
    movw (%A), %D               ; D = R0
    decw %D                     ; D = R0 - 1
    movw %D, (%A)               ; R0 = R0 - 1

    leaw $END, %A               ; A = $END
    jle %D                      ; D <= 0 => jump END
    nop

    leaw $WHILE, %A             ; A = $WHILE
    jmp                         ; jump WHILE
    nop

END: