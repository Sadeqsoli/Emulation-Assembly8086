.MODEL SMALL
.STACK 100h  ; Use 100h for a stack size of 256 bytes
.DATA  

msg1 DB "This is MY first PROGRAM$"  ; Define the message with a dollar sign terminator

.CODE
MAIN PROC
    ; Initialize the data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Load address of the message into DX
    LEA DX, msg1            
    MOV AH, 09h            ; DOS function to display a string
    INT 21h                ; Call DOS interrupt

    ; Terminate the program
    MOV AH, 4Ch            ; DOS function to terminate a program
    INT 21h                ; Call DOS interrupt

MAIN ENDP
END MAIN
