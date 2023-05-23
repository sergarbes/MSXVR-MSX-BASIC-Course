10 CLS
20 PRINT "Adivina el numero entre 1 y 100"
30 R = RND(-TIME)
40 SC = INT(RND(1) * 100) + 1
50 DIM GS(4)
60 FOR I = 0 TO 4
70   PRINT "Intento "; I + 1; " de 5"
80   LOCATE 0, 2
90   INPUT "Dime un numero: ";GS(I)
100  IF GS(I) = SC THEN GOTO 150
110  IF GS(I) < SC THEN PRINT"":PRINT "El numero secreto es mayor que "; GS(I)
120  IF GS(I) > SC THEN PRINT"":PRINT "El numero secreto es menor que "; GS(I)
130  PRINT ""
140 NEXT I
150 PRINT "":PRINT "Fin del juego."
160 IF GS(I) = SC THEN PRINT "¡Felicidades! Adivinaste el numero secreto: "; SC
170 IF GS(I) <> SC THEN PRINT "Lo siento, no adivinaste el numero secreto. El numero era: "; SC
180 END
