      ******************************************************************
      * Tener en cuenta que hay que validar todo sino se rompe todo.
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

      *    ADD NUMERO1 TO NUMERO2 GIVING RESULTADO.
      *    SUBTRACT NUMERO1 FROM NUMERO2 GIVING RESULTADO.
      *    MULTIPLY NUMERO1 BY NUMERO2 GIVING RESULTADO.
           DIVIDE NUMERO1 BY NUMERO2 GIVING RESULTADO.


           DISPLAY "EL RESULTADO ES: " RESULTADO.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
