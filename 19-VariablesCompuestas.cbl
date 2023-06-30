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
      *    Compuesta es por que tiene variables de segundo nivel, Esto
      *    es muy parecido a las struct en C.

       01  VARIABLE-COMPUESTA.
           02 NUM1 PIC 9 VALUE 2.
           02 NUM2 PIC 9 VALUE 4.
           02 NUM3 PIC 9 VALUE 4.
           02 NUM4 PIC 9 VALUE 9.
       PROCEDURE DIVISION.

           DISPLAY NUM1 SPACE NUM2.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
