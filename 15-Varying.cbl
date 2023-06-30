      *El VARYING lo podemos usar como un for le ponemos from 1 = i=1 by 10 como i<10.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAPITULO-14.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  NUMERO PIC 99.
       01  MULTIPLICADOR  PIC 999.
       01  RESULTADO PIC 9999.
       01  SALIDA PIC XXXXX.

       PROCEDURE DIVISION.

           INICIO.
           DISPLAY "Para salir introduce 'salir' en la consola.".
           DISPLAY "Para multiplicar pulsa INTRO.".
           ACCEPT SALIDA.
           IF SALIDA = "salir"
               GO TO FINALIZAR
           ELSE
           PERFORM REINICIA-PROGRAMA.
           PERFORM INTRODUCE-NUMERO.
           PERFORM MOSTRAR-TABLA.

           FINALIZAR.
            STOP RUN.

           REINICIA-PROGRAMA.
                MOVE 0 TO MULTIPLICADOR.

           INTRODUCE-NUMERO.
           DISPLAY "INTRODUCE UN NUMERO.".
               ACCEPT NUMERO.

           MOSTRAR-TABLA.
                DISPLAY "LA TABLA DEL " NUMERO ":".
                PERFORM CALCULOS UNTIL MULTIPLICADOR = 10.

           CALCULOS.
               ADD 1 TO MULTIPLICADOR.
               COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
               DISPLAY NUMERO " * " MULTIPLICADOR " = " RESULTADO.

       END PROGRAM CAPITULO-14.