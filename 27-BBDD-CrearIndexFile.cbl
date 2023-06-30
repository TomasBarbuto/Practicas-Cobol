

       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREATE-FILES-WITH-OUTPUT.


       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      *    Archivo Fisico en Modo DYNAMIC.
       FILE-CONTROL.
       COPY
       "C:\Users\barbu\OneDrive\Escritorio\COBOL\CursoYT\28-PhFile.cbl".

       DATA DIVISION.
       FILE SECTION.
      *    Archivo Logico.
       COPY
       "C:\Users\barbu\OneDrive\Escritorio\COBOL\CursoYT\28-LoFile.cbl".

       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       APERTURA-DE-ARCHIVO.
           OPEN OUTPUT EMPLEADOS-ARCHIVO.

       CIERRE-DE-ARCHIVO.
           CLOSE EMPLEADOS-ARCHIVO.

           DISPLAY "Succes".
           STOP RUN.

       END PROGRAM CREATE-FILES-WITH-OUTPUT.
