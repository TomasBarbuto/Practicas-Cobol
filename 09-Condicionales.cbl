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
       01  NUMERO1 PIC 9(4).
       01  NUMERO2 PIC 9(4).
       01  RESULTADO PIC 9(5).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "INGRESE EL PRIMER NUMERO: "
           ACCEPT NUMERO1.
           DISPLAY "INGRESE EL SEGUNDO NUMERO: "
           ACCEPT NUMERO2.

           ADD NUMERO1 TO NUMERO2 GIVING RESULTADO.

           IF RESULTADO > 50
               DISPLAY "El resutaldo es mayor a 50"
           ELSE
               DISPLAY "El resultado es menor a 50"
           END-IF.

           DISPLAY RESULTADO.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
