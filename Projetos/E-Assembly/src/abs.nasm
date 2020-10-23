; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.

leaw $1, %A         ; A = 1
movw (%A), %D       ; D = ram[1]
leaw $2, %A         ; A = 2
movw %D, (%A)       ; ram[2] = D (ram[1])

leaw $1, %A         ; A = 1
movw (%A), %D       ; D = ram[1]
leaw $0, %A         ; A = 0
movw %D, (%A)       ; ram[0] = D (ram[1])

leaw $2, %A         ; A = 2
movw %D, (%A)       ; ram[2] = ram[1]
leaw $END, %A       ; A = $END
jg   %D             ; D > 0 salta pra $END
nop                 ; ¯\_(ツ)_/¯

negw %D             ; D = -D
leaw $0, %A         ; A = 0
movw %D, (%A)       ; ram[0] = -D

END:
nop