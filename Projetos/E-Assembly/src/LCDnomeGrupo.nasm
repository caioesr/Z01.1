; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

leaw $16405, %A
movw $-1, (%A)
incw %A
movw $-1,(%A)


leaw $16425, %A
movw $-1, (%A)
icrw %A
incw %A
movw $-1, (%A)

leaw %16445, %A
movw $-1, (%A)
leaw %16446, %A
movw $-1, (%A)

leaw %16465, %A
movw $-1, (%A)

leaw %16487, %A
movw $-1, (%A)
leaw %16467, %A
movw $-1, (%A)
leaw %16507, %A
movw $-1, (%A)
leaw %16527, %A
movw $-1, (%A)
leaw %16647, %A
movw $-1, (%A)
leaw %16567, %A
movw $-1, (%A)
leaw %16587, %A
movw $-1, (%A)
leaw %16607, %A
movw $-1, (%A)
leaw %16627, %A
movw $-1, (%A)
leaw %16647, %A
movw $-1, (%A)
leaw %16667, %A
movw $-1, (%A)
leaw %16687, %A
movw $-1, (%A)
leaw %16707, %A
movw $-1, (%A)
leaw %16727, %A
movw $-1, (%A)
leaw %16747, %A
movw $-1, (%A)
leaw %16767, %A
movw $-1, (%A)
leaw %16787, %A
movw $-1, (%A)
leaw %16807, %A
movw $-1, (%A)
leaw %16827, %A
movw $-1, (%A)
leaw %16847, %A
movw $-1, (%A)
leaw %16867, %A
movw $-1, (%A)
leaw %16887, %A
movw $-1, (%A)
leaw %16907, %A
movw $-1, (%A)
leaw %16927, %A
movw $-1, (%A)
leaw %16947, %A
movw $-1, (%A)


leaw %16946, %A
movw $-1, (%A)
leaw %16966, %A
movw $-1, (%A)
leaw %16986, %A
movw $-1, (%A)


leaw %16485, %A
movw $-1, (%A)

leaw %16505, %A
movw $-1, (%A)

leaw %16525, %A
movw $-1, (%A)

leaw %16545, %A
movw $-1, (%A)

leaw %16565, %A
movw $-1, (%A)

leaw %16585, %A
movw $-1, (%A)

leaw %16605, %A
movw $-1, (%A)

leaw %16625, %A
movw $-1, (%A)

leaw %16645, %A
movw $-1, (%A)

leaw %16665, %A
movw $-1, (%A)

leaw %16685, %A
movw $-1, (%A)

leaw %16705, %A
movw $-1, (%A)

leaw %16725, %A
movw $-1, (%A)

leaw %16745, %A
movw $-1, (%A)

leaw %16765, %A
movw $-1, (%A)

leaw %16785, %A
movw $-1, (%A)

leaw %16805, %A
movw $-1, (%A)

leaw %16825, %A
movw $-1, (%A)

leaw %16845, %A
movw $-1, (%A)

leaw %16865, %A
movw $-1, (%A)

leaw %16885, %A
movw $-1, (%A)

leaw %16905, %A
movw $-1, (%A)

leaw %16925, %A
movw $-1, (%A)

leaw %16945, %A
movw $-1, (%A)

leaw %16965, %A
movw $-1, (%A)

leaw %16985, %A
movw $-1, (%A)







leaw %16409, %A 
movw $-1, (%A)
leaw %16429, %A 
movw $-1, (%A)
leaw %16449, %A 
movw $-1, (%A)
leaw %16469, %A 
movw $-1, (%A)
leaw %16489, %A 
movw $-1, (%A)
leaw %16509, %A 
movw $-1, (%A)
leaw %16529, %A 
movw $-1, (%A)
leaw %16549, %A 
movw $-1, (%A)
leaw %16569, %A 
movw $-1, (%A)
leaw %16589, %A 
movw $-1, (%A)
leaw %16609, %A 
movw $-1, (%A)
leaw %16629, %A 
movw $-1, (%A)
leaw %16649, %A 
movw $-1, (%A)
leaw %16669, %A 
movw $-1, (%A)
leaw %16689, %A 
movw $-1, (%A)
leaw %16709, %A 
movw $-1, (%A)
leaw %16729, %A 
movw $-1, (%A)
leaw %16749, %A 
movw $-1, (%A)
leaw %16769, %A 
movw $-1, (%A)
leaw %16789, %A 
movw $-1, (%A)
leaw %16809, %A 
movw $-1, (%A)
leaw %16829, %A 
movw $-1, (%A)
leaw %16849, %A 
movw $-1, (%A)
leaw %16869, %A 
movw $-1, (%A)
leaw %16889, %A 
movw $-1, (%A)
leaw %16909, %A 
movw $-1, (%A)
leaw %16929, %A 
movw $-1, (%A)
leaw %16949, %A 
movw $-1, (%A)
leaw %16969, %A 
movw $-1, (%A)
leaw %16989, %A 
movw $-1, (%A)
leaw %17009, %A 
movw $-1, (%A)

leaw %16410, %A 
movw $-1, (%A)
leaw %16430, %A 
movw $-1, (%A)

leaw %16411, %A 
movw $-1, (%A)
leaw %16431, %A 
movw $-1, (%A)
leaw %16451, %A 
movw $-1, (%A)
leaw %16471, %A 
movw $-1, (%A)
leaw %16491, %A 
movw $-1, (%A)
leaw %16511, %A 
movw $-1, (%A)
leaw %16531, %A 
movw $-1, (%A)
leaw %16551, %A 
movw $-1, (%A)
leaw %16571, %A 
movw $-1, (%A)
leaw %16591, %A 
movw $-1, (%A)
leaw %16611, %A 
movw $-1, (%A)
leaw %16631, %A 
movw $-1, (%A)
leaw %16651, %A 
movw $-1, (%A)
leaw %16671, %A 
movw $-1, (%A)
leaw %16691, %A 
movw $-1, (%A)
leaw %16711, %A 
movw $-1, (%A)
leaw %16731, %A 
movw $-1, (%A)
leaw %16751, %A 
movw $-1, (%A)
leaw %16771, %A 
movw $-1, (%A)
leaw %16791, %A 
movw $-1, (%A)
leaw %16811, %A 
movw $-1, (%A)
leaw %16831, %A 
movw $-1, (%A)
leaw %16851, %A 
movw $-1, (%A)
leaw %16871, %A 
movw $-1, (%A)
leaw %16891, %A 
movw $-1, (%A)
leaw %16911, %A 
movw $-1, (%A)
leaw %16931, %A 
movw $-1, (%A)
leaw %16951, %A 
movw $-1, (%A)
leaw %16971, %A 
movw $-1, (%A)
leaw %16991, %A 
movw $-1, (%A)
leaw %17011, %A 
movw $-1, (%A)
leaw %17010, %A 
movw $-1, (%A)
leaw %16990, %A 
movw $-1, (%A)




leaw %16413, %A 
movw $-1, (%A)
leaw %16433, %A 
movw $-1, (%A)
leaw %16453, %A 
movw $-1, (%A)
leaw %16473, %A 
movw $-1, (%A)
leaw %16493, %A 
movw $-1, (%A)
leaw %16513, %A 
movw $-1, (%A)
leaw %16533, %A 
movw $-1, (%A)
leaw %16553, %A 
movw $-1, (%A)
leaw %16573, %A 
movw $-1, (%A)
leaw %16593, %A 
movw $-1, (%A)
leaw %16613, %A 
movw $-1, (%A)
leaw %16633, %A 
movw $-1, (%A)
leaw %16653, %A 
movw $-1, (%A)
leaw %16673, %A 
movw $-1, (%A)
leaw %16693, %A 
movw $-1, (%A)
leaw %16713, %A 
movw $-1, (%A)
leaw %16733, %A 
movw $-1, (%A)
leaw %16753, %A 
movw $-1, (%A)
leaw %16773, %A 
movw $-1, (%A)
leaw %16793, %A 
movw $-1, (%A)
leaw %16813, %A 
movw $-1, (%A)
leaw %16833, %A 
movw $-1, (%A)
leaw %16853, %A 
movw $-1, (%A)
leaw %16873, %A 
movw $-1, (%A)
leaw %16893, %A 
movw $-1, (%A)
leaw %16913, %A 
movw $-1, (%A)
leaw %16933, %A 
movw $-1, (%A)
leaw %16953, %A 
movw $-1, (%A)
leaw %16973, %A 
movw $-1, (%A)
leaw %16993, %A 
movw $-1, (%A)
leaw %17013, %A 
movw $-1, (%A)
leaw %17033, %A 
movw $-1, (%A)

leaw %16414, %A 
movw $-1, (%A)
leaw %16434, %A 
movw $-1, (%A)

leaw %16415, %A 
movw $-1, (%A)
leaw %16435, %A 
movw $-1, (%A)
leaw %16455, %A 
movw $-1, (%A)
leaw %16475, %A 
movw $-1, (%A)
leaw %16495, %A 
movw $-1, (%A)
leaw %16515, %A 
movw $-1, (%A)
leaw %16535, %A 
movw $-1, (%A)
leaw %16555, %A 
movw $-1, (%A)
leaw %16575, %A 
movw $-1, (%A)
leaw %16595, %A 
movw $-1, (%A)








