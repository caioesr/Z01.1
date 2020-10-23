; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

; R0 = N
; R1 = R0
; while R0 > 1:
;     R2 = R0 - 1
;     R3 = R2
;     R4 = 0
;     while R3 > 0:
;         R4 = R4 + R1
;         R3 = R3 - 1
;     R1 = R4
;     R0 = R0 - 1
;     print(f"{R0} {R1} {R2}")
;
; R1 should be N!

; se R0 >= 1 <=> R0 - 1 >= 0 => caso 1
leaw $0, %A         ; A = 0
movw (%A), %D       ; D = R0
leaw $CASE1, %A     ; A = $CASE1
decw %D             ; D = D - 1  (R0 - 1)
jge %D              ; (R0 - 1) >= 0 ? go to case1
nop

; caso contrário, case 2 (R1 = 1)
leaw $1, %A         ; A = 1
movw %A, %D         ; D = 1
movw %D, (%A)       ; R1 = 1

leaw $END, %A       ; A = $END
jmp                 ; go to $END
nop



CASE1:
    ; R1 = R0
    leaw $0, %A         ; A = 0
    movw (%A), %D       ; D = R0
    leaw $1, %A         ; A = 1
    movw %D, (%A)       ; R1 = R0

    ; R3 = 0
    leaw $0, %A         ; A = 0
    movw %A, %D         ; D = 0
    leaw $3, %A         ; A = 3
    movw %D, (%A)       ; R3 = 0
    
    WHILE: ;
        ; se R0 <= 1 <=> R0 - 1 <= 0  (break) 
        leaw $0, %A         ; A = 0
        movw (%A), %D       ; D = R0
        leaw $END, %A       ; A = $END
        decw %D             ; D = R0 - 1
        jle %D              ; R0 - 1 <= 0 ? (break)
        nop                 ; ¯\_(ツ)_/¯

        ; caso contrário (se R0 > 1)
        ; R2 = R0 - 1
        leaw $2, %A         ; A = 2
        movw %D, (%A)       ; R2 = R0 - 1 (linha 59)

        ; R3 = R2
        movw (%A), %D       ; D = R2 (linha 65)
        leaw $3, %A         ; A = 3
        movw %D, (%A)       ; R3 = R2

        ; R4 = 0
        leaw $0, %A         ; A = 0
        movw %A, %D         ; D = 0
        leaw $4, %A         ; A = 4
        leaw %D, (%A)       ; R4 = 0
        
        ; R4 = R1*R2 = R1*(R0 - 1)
        MULTI:
            ; R3 <= 0 ? leave
            leaw $3, %A         ; A = 3
            movw (%A), %D       ; D = R3
            leaw $LEAVE, %A     ; A = $LEAVE
            jle  %D             ; R3 <= 0 ? LEAVE
            nop

            ; caso contrário (R3 > 0)

            ; R4 = R4 + R1
            leaw $4, %A         ; A = 4
            movw (%A), %D       ; D = R4
            leaw $1, %A         ; A = 1
            addw (%A), %D, %D   ; D = D + R1  (R4 + R1)
            leaw $4, %A         ; A = 4
            movw %D, (%A)       ; R4 = D      (R4 + R1)

            ; R3 = R3 - 1
            leaw $3, %A         ; A = 3
            movw (%A), %D       ; D = R3
            decw %D             ; D = D - 1   (R3 - 1)
            movw %D, (%A)       ; R3 = D      (R3 - 1)

            ; MULTI AGAIN
            leaw $MULTI, %A     ; A = $MULTI
            jmp                 ; go to MULTI
            nop

        LEAVE:
        ; R1 = R4
        leaw $4, %A         ; A = 4
        movw %A, %D         ; D = 4
        leaw $1, %A         ; A = 1
        movw %D, (%A)       ; R1 = R4

        ; R0 = = R0 - 1
        leaw $0, %A         ; A = 0
        movw (%A), %D       ; D = R0
        decw %D             ; D = D - 1   (R0 - 1)
        movw %D, (%A)       ; R0 = D      (R0 - 1)

        ; loop again
        leaw $WHILE, %A     ; A = $WHILE
        jmp                 ; go to WHILE
        nop





END:
nop