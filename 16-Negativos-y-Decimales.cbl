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
      *Para numeros con , se usa la V.
      *01  NUM PIC 99V99.
      *Para numeros con el signo ya sea + o -.
      *01  NUMPOS PIC S9999.
      *O podemos combinar ambas.
      *01  NUMFULL PIC S99V99.

       01  NUM1 PIC S99V99.
       01  NUM2 PIC S99V99.
       01  RESULTADO PIC S99V99.

       PROCEDURE DIVISION.

      *     NEGATIVOS-POSITIVOS-DECIMALES.
      *         MOVE 10.40 TO NUM.
      *         MOVE -1040 TO NUMPOS.
      *         MOVE -10.40 TO NUMFULL.
      *
      *         DISPLAY NUM.
      *         DISPLAY NUMPOS.
      *         DISPLAY NUMFULL.

           NEGATIVOS-POSITIVOS-DECIMALES.
               MOVE 10.15 TO NUM1.
               MOVE 2 TO NUM2.
               COMPUTE RESULTADO = NUM1 * NUM2.
               DISPLAY RESULTADO.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
