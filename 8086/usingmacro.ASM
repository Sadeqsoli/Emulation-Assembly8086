.model small
.stack 100
include c:\masm\print.mac
.data
m1 db "hello$"
m2 db "enter any key$"
m3 db "exiting$"

.code
mov ax, @data
mov ds, ax
print m1
print m2
print m3
end