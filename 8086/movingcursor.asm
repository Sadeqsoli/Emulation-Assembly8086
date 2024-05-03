.model small 
.stack 100

.data
row db 15h
col db 16h

.code

mov ax, @data
mov ds, ax
mov ah, 02
mov bh, 00
mov dh, row
mov dl, col
int 10h

