

       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREATE-FILES.


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

       01  IDENTIFICADOR PIC X(36)
           VALUE "Introduce un ID del nuevo empleado: ".
       01  NOMBRE PIC X(33)
           VALUE "Introduce un nombre de empleado: ".
       01  APELLIDOS PIC X(25)
           VALUE "Introduce los apellidos: ".
       01  EDAD PIC X(19)
           VALUE "Introduce la edad: ".
       01  TELEFONO PIC X(33)
           VALUE "Introduce un número de teléfono: ".
       01  DIRECCION PIC X(25)
           VALUE "Introduce una dirección: ".

       01  SI-NO PIC X.
       01  ENTRADA PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

       PERFORM PROCEDIMIENTO-DE-APERTURA.
       MOVE "S" TO SI-NO.
       PERFORM AGREGAR-REGISTROS
       UNTIL SI-NO = "N".
       PERFORM PROCEDIMIENTO-DE-CIERRE.

       PROGRAM-DONE.
       STOP RUN.

       PROCEDIMIENTO-DE-APERTURA.
      * Abrimos el archivo, podemos usar:

      * EXTEND -> Si no existe lo crea y añade
      * I-O -> Si solo existe lo abre y escribe, sino tira ERRROR.
      * INPUT -> Si existe lo abre y podemos LEER.
      * OUTPUT -> Si existe lo remplaza y sino lo crea y añade nuevos registros.

       OPEN I-O EMPLEADOS-ARCHIVO.

       PROCEDIMIENTO-DE-CIERRE.
       CLOSE EMPLEADOS-ARCHIVO.

       AGREGAR-REGISTROS.
       MOVE "N" TO ENTRADA.
       PERFORM OBTENER-CAMPOS
       UNTIL ENTRADA = "S".
       PERFORM ESCRIBIR-REGISTRO.
       PERFORM REINICIAR.

       OBTENER-CAMPOS.
       MOVE SPACE TO EMPLEADOS-REGISTRO.
       DISPLAY IDENTIFICADOR " ? ".
       ACCEPT EMPLEADOS-ID.
       DISPLAY NOMBRE " ? ".
       ACCEPT EMPLEADOS-NOMBRE.
       DISPLAY APELLIDOS " ? ".
       ACCEPT EMPLEADOS-APELLIDOS.
       DISPLAY EDAD " ? ".
       ACCEPT EMPLEADOS-EDAD.
       DISPLAY TELEFONO "?".
       ACCEPT EMPLEADOS-TELEFONO
       DISPLAY DIRECCION.
       ACCEPT EMPLEADOS-DIRECCION.
       PERFORM CONTINUAR.

       CONTINUAR.
       MOVE "S" TO ENTRADA.
       IF  EMPLEADOS-NOMBRE = SPACE
       MOVE "N" TO ENTRADA.

       ESCRIBIR-REGISTRO.
       WRITE EMPLEADOS-REGISTRO.

       REINICIAR.
       DISPLAY "¿Desea almacenar otro registro en la base de datos?".
       ACCEPT SI-NO.
       IF SI-NO = "s"
       MOVE "S" TO SI-NO.
       IF SI-NO NOT = "S"
       MOVE "N" TO SI-NO.

       END PROGRAM CREATE-FILES.
