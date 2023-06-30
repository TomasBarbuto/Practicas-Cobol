      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Procedure_Division.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SALUDO PIC X(50).
       01  TITULO PIC X(40) VALUE "MI PRIMER PROGRAMA EN COBOL".
       01  NUMERO PIC 9(1) VALUE 5.

       PROCEDURE DIVISION.
       DISPLAY 'HOLA MUNDO'.
       MOVE "BIENVENIDO A MI PRIMER PROGRAMA." TO SALUDO.
       DISPLAY "MUY BUENAS, " SALUDO.
       DISPLAY "TITULO: " TITULO.
       DISPLAY "ESTE ES EL VIDEO NUMERO: " NUMERO.
       STOP RUN.

       END PROGRAM Procedure_Division.
