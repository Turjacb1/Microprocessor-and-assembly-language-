                       .model small
.stack 100h
.data
sum dw ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 3        ; we want to add 3 + 2 + 1
    mov ax, 0        ; result will be stored here

next:
    add ax, cx
    loop next

    mov sum, ax      ; store final result

    ; convert AX (result) to ASCII to print only last digit
    add al, 48       ; ASCII convert
    mov dl, al
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
