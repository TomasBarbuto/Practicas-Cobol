
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  VARIABLE-COMPUESTA.
           05 TEXTO01 PIC X(11) VALUE "Este texto ".
           05 TEXTO02 PIC X(36) VALUE
           "Pertenece a la estructura principal.".
           05 SUB-VARIABLE-COMPUESTA.
               10 TEXTO01 PIC X(11) VALUE "Este texto ".
               10 TEXTO02 PIC X(37) VALUE
               "Pertenece a la estructura Secundaria.".
               10 SUB-SUB-VARIABLE-COMPUESTA.
                   15 TEXTO01 PIC X(11) VALUE "Este texto ".
                   15 TEXTO02 PIC X(37) VALUE
                   "Pertenece a la estructura Terciaria.".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY VARIABLE-COMPUESTA.
           DISPLAY SUB-VARIABLE-COMPUESTA.
           DISPLAY SUB-SUB-VARIABLE-COMPUESTA.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
