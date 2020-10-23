; Arquivo: isEven.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; par. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.


leaw $1, %A             ; A = 1
movw %A, %D             ; D = A = 1
leaw $5, %A             ; A = 5
andw (%A), %D, %D       ; D = bin(ram[5]) & 1; se D = 1, então é ram[5] é ímpar
leaw $0, %A             ; A = 0
movw %D, (%A)           ; ram[0] = D
leaw $1, %A             ; A = 1
movw %A, %D             ; D = 1
leaw $0, %A             ; A = 0
subw (%A), %D, %D       ; D = ram[0] - 1
leaw $END, %A           ; A = $END
                        ; -1 = 11...11, 0 = 00...00
jge %D                  ; D >= 0 salta para $END
nop                     ; ¯\_(ツ)_/¯

negw %D                 ; D = -D

END:
    leaw $0, %A         ; A = 0
    movw %D, (%A)       ; ram[0] = !D