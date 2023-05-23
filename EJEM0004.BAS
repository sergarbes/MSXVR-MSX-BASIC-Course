1 ' combinacion de variable alfa, print, locate, for-next, step
2 ' el texto MSXVR se desplaza hasta la posicion 30,10
3 ' el modo screen0 tienen 40x24 caracteres
10 CLS
20 a$="MSXVR"
30 FOR R=1 TO 30
40 LOCATE R,10
50 PRINT A$
60 LOCATE R-1,10
70 PRINT " "
80 NEXT R
88 '
90 ' lo mismo pero al reves
91 '
100 FOR R=30 TO 0 STEP -1
110 LOCATE R,10
120 PRINT A$
130 LOCATE R+5,10
140 PRINT " "
150 NEXT R
