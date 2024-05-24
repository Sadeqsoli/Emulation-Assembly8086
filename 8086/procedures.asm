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

    ; Call delay procedure
    CALL delay

    ; Terminate the program
    MOV AH, 4Ch         ; DOS function to terminate a program
    INT 21h             ; Call DOS interrupt

MAIN ENDP

; Delay procedure
delay PROC
    MOV CX, 2000h      ; Load CX with a large value to create a delay
outer_loop:
    MOV DX, 0FFFFh     ; Load DX with a large value for additional delay
inner_loop:
    DEC DX             ; Decrement DX
    JNZ inner_loop     ; If DX is not zero, continue inner loop

    LOOP outer_loop    ; Decrement CX and continue outer loop if CX is not zero
    RET
delay ENDP

END MAIN
