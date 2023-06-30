
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  VARIABLE-COMPUESTA.
           05 TEXTO1 PIC X(15) VALUE "Texto 1 - ".
           05 FILLER PIC X(15) VALUE "Texto Filler - ".
           05 TEXTO2 PIC X(15) VALUE "Texto 2.".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY VARIABLE-COMPUESTA.

           MOVE "Nuevo valor - " TO TEXTO1.
           MOVE "Nuevo valor - " TO TEXTO2.

      *    FILLER = CONS no puede cambiar de valor.
      *    MOVE "Nuevo valor - " TO FILLER.

           DISPLAY VARIABLE-COMPUESTA.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
