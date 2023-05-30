10 SCREEN 1
20 COLOR 15, 0
30 DIM LB$(12)
40 ' Leer mapa fijo
50 DATA ***************
60 DATA *             *
70 DATA * *********** *
80 DATA * *         * *
90 DATA * * ******* * *
100 DATA * * *       * *
110 DATA * * * ***** * *
120 DATA * * *   *   * *
130 DATA * * *** * *** *
140 DATA * *   * *   * *
150 DATA * *** * * *** *
160 DATA *   * * *     *
170 DATA ***************
180 FOR I = 0 TO 12
190   READ L$
200   LB$(I) = L$
210 NEXT I
220 FOR I = 0 TO 12
230   PRINT LB$(I)
240 NEXT I
250 X = 2
260 Y = 1
270 LOCATE X,Y:PRINT CHR$(191)
280 ST = STICK(0)
290 ' Mover hacia arriba si no hay muro y no está en la fila superior
300 IF ST = 1 AND Y > 0 AND MID$(LB$(Y - 1), X+1, 1) <> "*" THEN Y = Y - 1:LOCATE X, Y+1: PRINT CHR$(32):LOCATE X, Y: PRINT CHR$(191)
310 ' Mover hacia la derecha si no hay muro y no está en la columna más a la derecha
320 IF ST = 3 AND X < 13 AND MID$(LB$(Y), X+2, 1) <> "*" THEN X = X + 1:LOCATE X-1, Y: PRINT CHR$(32):LOCATE X, Y: PRINT CHR$(191)
330 ' Mover hacia abajo si no hay muro y no está en la fila inferior
340 IF ST = 5 AND Y < 13 AND MID$(LB$(Y + 1), X+1, 1) <> "*" THEN Y = Y + 1:LOCATE X, Y-1: PRINT CHR$(32):LOCATE X, Y: PRINT CHR$(191)
350 ' Mover hacia la izquierda si no hay muro y no está en la columna más a la izquierda
360 IF ST = 7 AND X > 0 AND MID$(LB$(Y), X, 1) <> "*" THEN X = X - 1:LOCATE X+1, Y: PRINT CHR$(32):LOCATE X, Y: PRINT CHR$(191)
370 'LOCATE X, Y: PRINT CHR$(32):LOCATE X, Y: PRINT CHR$(191)
380 GOTO 280
