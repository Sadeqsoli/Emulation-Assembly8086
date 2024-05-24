.MODEL SMALL
.STACK 100h

.DATA
MSG DB "YOUR ENTERED STRING IS",'$'

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Display the message
    LEA DX, MSG
    MOV AH, 09h
    INT 21h

READING:
    ; Read a character from the keyboard
    MOV AH, 01h
    INT 21h
    CMP AL, 13           ; Compare with Enter key (ASCII 13)
    JE EXIT

    ; Display the entered character
    MOV DL, AL
    MOV AH, 02h
    INT 21h
    JMP READING

EXIT:
    ; Terminate the program
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
