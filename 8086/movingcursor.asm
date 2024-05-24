.MODEL SMALL
.STACK 100h

.DATA
row DB 15h   ; Define the row position (21 in decimal)
col DB 16h   ; Define the column position (22 in decimal)

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Set cursor position
    MOV AH, 02h         ; Function to set cursor position
    MOV BH, 00h         ; Page number (usually 0)
    MOV DH, row         ; Load row value
    MOV DL, col         ; Load column value
    INT 10h             ; Call BIOS video interrupt

    ; Terminate the program
    MOV AH, 4Ch         ; DOS function to terminate a program
    INT 21h             ; Call DOS interrupt

MAIN ENDP
END MAIN
