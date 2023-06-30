
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DELETE-FROM-INDEXED.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
      *Archivo f�sico en modo din�mico.
       COPY
       "C:\Users\barbu\OneDrive\Escritorio\COBOL\CursoYT\28-PhFile.cbl".

       DATA DIVISION.
       FILE SECTION.
      *Archivo l�gico.
       COPY
       "C:\Users\barbu\OneDrive\Escritorio\COBOL\CursoYT\28-LoFile.cbl".

       WORKING-STORAGE SECTION.
       77  SI-A-ELIMINAR PIC X.
       77  REGISTRO-ENCONTRADO PIC X.
       77  CAMPO-EMPLEADOS-ID PIC Z(5).

       PROCEDURE DIVISION.


       EMPIEZA-PROGRAMA.
           OPEN I-O EMPLEADOS-ARCHIVO.
           PERFORM OBTENER-REGISTRO-DE-EMPLEADO.
           PERFORM ELIMINA-REGISTROS
           UNTIL EMPLEADOS-ID = ZEROES.
           CLOSE EMPLEADOS-ARCHIVO.

       FINALIZA-PROGRAMA.
           STOP RUN.

       OBTENER-REGISTRO-DE-EMPLEADO.
           PERFORM INICIA-REGISTRO-DE-EMPLEADOS.
           PERFORM INTRODUCIR-NUMERO-ID-EMPLEADO.
           MOVE "N" TO REGISTRO-ENCONTRADO.
           PERFORM ENCUENTRA-REGISTRO-EMPLEADO
           UNTIL REGISTRO-ENCONTRADO = "S" OR
           EMPLEADOS-ID = ZEROES.

       INICIA-REGISTRO-DE-EMPLEADOS.
           MOVE SPACE TO EMPLEADOS-REGISTRO.
           MOVE ZEROES TO EMPLEADOS-ID.

       INTRODUCIR-NUMERO-ID-EMPLEADO.
           DISPLAY " ".
           DISPLAY "Introduce un numero de ID de empleado." .
           DISPLAY "Introduce un numero del 1 al 99999".
           DISPLAY "Introduce cualquier otra cosa para salir.".
           ACCEPT CAMPO-EMPLEADOS-ID.
           MOVE CAMPO-EMPLEADOS-ID TO EMPLEADOS-ID.

       ENCUENTRA-REGISTRO-EMPLEADO.
           PERFORM LEE-REGISTRO-EMPLEADO.
           IF REGISTRO-ENCONTRADO = "N"
           DISPLAY "No se encontro ningun registro con ese ID."
           PERFORM INTRODUCIR-NUMERO-ID-EMPLEADO.

       LEE-REGISTRO-EMPLEADO.
           MOVE "S" TO REGISTRO-ENCONTRADO.
           READ EMPLEADOS-ARCHIVO RECORD
           INVALID KEY
           MOVE "N" TO REGISTRO-ENCONTRADO.

       ELIMINA-REGISTROS.
           PERFORM MOSTRAR-TODOS-LOS-CAMPOS.
           MOVE "Z" TO SI-A-ELIMINAR.
           PERFORM PREGUNTA-ELIMINAR
           UNTIL SI-A-ELIMINAR = "S" OR "N".
           IF SI-A-ELIMINAR = "S"
               PERFORM ELIMINA-REGISTRO.
               PERFORM OBTENER-REGISTRO-DE-EMPLEADO.

       MOSTRAR-TODOS-LOS-CAMPOS.
           DISPLAY " ".
           PERFORM MOSTRAR-EMPLEADO-ID.
           PERFORM MOSTRAR-EMPLEADO-NOMBRE.
           PERFORM MOSTRAR-EMPLEADO-APELLIDOS.
           PERFORM MOSTRAR-EMPLEADO-EDAD.
           PERFORM MOSTRAR-EMPLEADO-TELEFONO.
           PERFORM MOSTRAR-EMPLEADO-DIRECCION.
           DISPLAY " ".

       MOSTRAR-EMPLEADO-ID.
           DISPLAY "ID: " EMPLEADOS-ID.

       MOSTRAR-EMPLEADO-NOMBRE.
           DISPLAY "NOMBRE: " EMPLEADOS-NOMBRE.

       MOSTRAR-EMPLEADO-APELLIDOS.
           DISPLAY "APELLIDOS: " EMPLEADOS-APELLIDOS.

       MOSTRAR-EMPLEADO-EDAD.
           DISPLAY "EDAD: " EMPLEADOS-EDAD.

       MOSTRAR-EMPLEADO-TELEFONO.
           DISPLAY "TELEFONO: " EMPLEADOS-TELEFONO.

       MOSTRAR-EMPLEADO-DIRECCION.
           DISPLAY "DIRECCION: " EMPLEADOS-DIRECCION.

       PREGUNTA-ELIMINAR.
           DISPLAY "�SEGURO QUE QUIERES ELIMINAR ESTE REGISTRO (S/N)?".
           ACCEPT SI-A-ELIMINAR.
           IF SI-A-ELIMINAR = "s"
               MOVE "S" TO SI-A-ELIMINAR.
           IF SI-A-ELIMINAR = "n"
               MOVE "N" TO SI-A-ELIMINAR.
           IF SI-A-ELIMINAR NOT = "S" AND
           SI-A-ELIMINAR NOT = "N"
               DISPLAY "Debes introducir S/N.".

       ELIMINA-REGISTRO.
           DELETE EMPLEADOS-ARCHIVO RECORD
           INVALID KEY
           DISPLAY "Error eliminando el registro de empleados.".
