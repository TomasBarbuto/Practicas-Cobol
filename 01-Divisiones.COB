      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Divisiones.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.
       SOURCE-COMPUTER. Ordenador donde se escribio el codigo.
       OBJECT-COMPUTER. Ordenador donde se ejecutara el codigo.
       SPECIAL-NAMES.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT [OPTIONAL].
      * Nombre-del-archivo.

       ASSIGN TO.
      * tipo-de-dispositivo.

       ORGANIZATION IS.
      * tipo de organizacion.

       ACCESS MODE IS.
      * modo de acceso del archivos.

       RECORD KEY IS.
      * clave del regristo.

       ALTERNATE RECORD KEY IS.
      * Claves alternativas del registro.

       ALTERNATE RECORD KEY IS.
      * Tipo de dispositivo

       WITH DUPLICATES
       FILE STATUS IS.
      * Variable de estado del archivo.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM Divisiones.
