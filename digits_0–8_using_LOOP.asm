                                                  .model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 4        ; repeat 9 times ? 0 to 8
    mov dl, 48       ; ASCII '0'
    mov ah, 2        ; DOS print function

next:
    int 21h          ; print character in DL
    inc dl           ; move to next character
    loop next        ; repeat until CX = 0

    mov ah, 4Ch
    int 21h
main endp
end main
