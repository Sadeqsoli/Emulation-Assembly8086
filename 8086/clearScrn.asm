.model small 
.stack 100

.data


.code

mov ax, @data
mov ds, ax
mov ah, 00
mov al, 02
int 10h
mov ah, 4h
int 21h
end
