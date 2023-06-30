
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-TRHU.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  NOMBRE PIC X(40).
       01  APELLIDO PIC X(40).
       01  EDAD PIC 9(2).

       PROCEDURE DIVISION.

           SOLICITAR-DATOS.
               PERFORM SOLICITAR-NOMBRE THRU SOLICITAR-APELLIDO.
               PERFORM SOLICITAR-EDAD.
               DISPLAY "Nombre: " NOMBRE "Apellido: " APELLIDO
                       "Edad: " EDAD.
               STOP RUN.

           SOLICITAR-NOMBRE.
               DISPLAY "Introduzca su nombre".
               ACCEPT NOMBRE.

           SOLICITAR-APELLIDO.
               DISPLAY "Introduzca su apellido".
               ACCEPT APELLIDO.

           SOLICITAR-EDAD.
               DISPLAY "Introduzca su edad".
               ACCEPT EDAD.

       END PROGRAM PERFORM-TRHU.
