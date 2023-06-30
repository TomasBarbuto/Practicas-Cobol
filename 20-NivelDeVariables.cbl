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

      *    Con el 01 se puede subdividir.
       01  VARIABLE-COMPUESTA.
           02 ALGO PIC 9.
      *    En la 77 no se puede subdividir.
       77  VARIABLE-SIMPLE PIC X.

      *    En el 88 puedo definir capacidad cuando la declaro.
       01  EDAD PIC 999.
           88 JOVEN VALUE 1 THRU 30.
           88 ADULTO VALUE 31 THRU 65.
           88 ANCIANO VALUE 66 THRU 99.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "Ingrese su edad: "
           ACCEPT EDAD.

           IF JOVEN
               DISPLAY "JOVEN".
           IF ADULTO
               DISPLAY "ADULTO".
           IF ANCIANO
               DISPLAY "ANCIANO".
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
