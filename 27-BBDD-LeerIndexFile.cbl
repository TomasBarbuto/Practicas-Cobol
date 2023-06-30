
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAPITULO-27.

       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *Archivo físico en modo dinámico.
       COPY
       "C:\Users\barbu\OneDrive\Escritorio\COBOL\CursoYT\28-PhFile.cbl".

       DATA DIVISION.
       FILE SECTION.
      *Archivo lógico.
       COPY
       "C:\Users\barbu\OneDrive\Escritorio\COBOL\CursoYT\28-LoFile.cbl".

       WORKING-STORAGE SECTION.
       77  LEE-TODO             PIC X.

       PROCEDURE DIVISION.

       EMPIEZA-PROGRAMA.
       PERFORM PROCEDIMIENTO-DE-APERTURA.
       MOVE "0" TO LEE-TODO.
       PERFORM LEE-SIGUIENTE-REGISTRO.

       IF LEE-TODO = "1"
           DISPLAY "No se encontraron registros en el archivo."
             ELSE
               PERFORM MUESTRA-CAMPOS
               UNTIL LEE-TODO = "1".
               PERFORM PROCEDIMIENTO-DE-CIERRE.
           FINALIZA-PROGRAMA.
               STOP RUN.

           PROCEDIMIENTO-DE-APERTURA.
               OPEN INPUT EMPLEADOS-ARCHIVO.

           PROCEDIMIENTO-DE-CIERRE.
               CLOSE EMPLEADOS-ARCHIVO.

           MUESTRA-CAMPOS.
               DISPLAY "ID: " EMPLEADOS-ID
               " Nombre: " EMPLEADOS-NOMBRE
               " Apellidos: " EMPLEADOS-APELLIDOS
               " Edad: " EMPLEADOS-EDAD
               " Telefono: " EMPLEADOS-TELEFONO
               " Direccion: " EMPLEADOS-DIRECCION.
               PERFORM LEE-SIGUIENTE-REGISTRO.

           LEE-SIGUIENTE-REGISTRO.
             READ EMPLEADOS-ARCHIVO NEXT RECORD
             AT END
             MOVE "1" TO LEE-TODO.

       END PROGRAM CAPITULO-27.
