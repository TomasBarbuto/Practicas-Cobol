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
      * 01  NUM PIC 9999.99 VALUE 2000.50.
       01  NUM1 PIC 9(4) VALUE 1000.
       01  NUM2 PIC 9(4) VALUE 2000.
       01  RESULTADO PIC Z(5).
       PROCEDURE DIVISION.

      *    Los valores de pic que esten con . no se usan matematicamente.
      *    COMPUTE NUM = NUM + 10.
      *    DISPLAY NUM.

           COMPUTE RESULTADO = NUM1 + NUM2.
           DISPLAY RESULTADO.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
