.MODEL SMALL
.STACK 100h

.DATA
m1 DB "hello$"
m2 DB "enter any key$"
m3 DB "exiting$"

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Print messages
    print m1
    print m2

    ; Read a key press
    read

    ; Print exit message
    print m3

    ; Terminate the program
    MOV AH, 4Ch
    INT 21h
MAIN ENDP

; Print macro
print MACRO msg
    LEA DX, msg
    MOV AH, 09h
    INT 21h
ENDM

; Read macro
read MACRO
    MOV AH, 01h
    INT 21h
ENDM

END MAIN
