0 SCREEN 1:KEY OFF:WIDTH32
20 COLOR 15, 0
30 DIM LB$(14)
40 RESTORE 60
50 ' Leer mapa fijo
60 DATA ***************
70 DATA *             *
80 DATA * *** *** *** *
90 DATA * *** *** *** *
100 DATA *             *
110 DATA * *** *** *** *
120 DATA * *** *** *** *
130 DATA *             *
140 DATA * *** *** *** *
150 DATA * *** *** *** *
160 DATA *             *
170 DATA * *** *** *** *
180 DATA * *** *** *** *
190 DATA *             *
200 DATA ***************
210 FOR I = 0 TO 14
220 READ LB$(I)
230 LOCATE 0,I:PRINT LB$(I)
240 NEXT I
250 X = 2
260 Y = 1
270 LOCATE X,Y:PRINT CHR$(191)
280 ON STICK(0) GOTO 300,270,330,270,360,270,390,270:GOTO 270
290 ' Mover hacia arriba si no hay muro y no está en la fila superior
300 IF Y > 0 THEN IF MID$(LB$(Y - 1), X+1, 1) <> "*" THEN Y = Y - 1:LOCATE X, Y+1: PRINT CHR$(32)
310 GOTO 270
320 ' Mover hacia la derecha si no hay muro y no está en la columna más a la derecha
330 IF X < 13 THEN IF MID$(LB$(Y), X+2, 1) <> "*" THEN X = X + 1:LOCATE X-1, Y: PRINT CHR$(32):LOCATE X, Y
340 GOTO 270
350 ' Mover hacia abajo si no hay muro y no está en la fila inferior
360 IF Y < 13 THEN IF MID$(LB$(Y + 1), X+1, 1) <> "*" THEN Y = Y + 1:LOCATE X, Y-1: PRINT CHR$(32):LOCATE X, Y
370 GOTO 270
380 ' Mover hacia la izquierda si no hay muro y no está en la columna más a la izquierda
390 IF X > 0 THEN IF MID$(LB$(Y), X, 1) <> "*" THEN X = X - 1:LOCATE X+1, Y: PRINT CHR$(32):LOCATE X, Y
400 GOTO 270
410 ' Si no se toca el cursor en ninguna dirección
420 GOTO 280
