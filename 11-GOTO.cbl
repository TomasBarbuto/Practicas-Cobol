      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  CONTINUAR PIC X.

       PROCEDURE DIVISION.

           PREGUNTA.

           PERFORM CONTINUACION.

           IF CONTINUAR = 'N'
               GO TO FINALIZAR-PROGRAMA.

           IF CONTINUAR = 'S'
               PERFORM PROGRAMA

           ELSE
               DISPLAY "POR FAVOR INTRODUCE UNA N O UNA S".

           FINALIZAR-PROGRAMA.
               STOP RUN.

           CONTINUACION.
               DISPLAY "Desea ejecutar el programa? (S/N)".
               ACCEPT CONTINUAR.

           PROGRAMA.
               DISPLAY "SE EJECUTA EL PROGRAMA".

       END PROGRAM YOUR-PROGRAM-NAME.
