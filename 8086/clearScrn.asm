.model small
.stack 100h

.data
; No data is actually used in this example

.code
main proc
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Set cursor position (AH = 02h, BH = page number, DH = row, DL = column)
    mov ah, 02h         ; Function to set cursor position
    mov bh, 00h         ; Page number (usually 0)
    mov dh, 10h         ; Row (example: row 16)
    mov dl, 10h         ; Column (example: column 16)
    int 10h             ; Call BIOS video interrupt

    ; Terminate program (AH = 4Ch)
    mov ah, 4Ch         ; DOS function to terminate a program
    int 21h             ; Call DOS interrupt

main endp
end main
