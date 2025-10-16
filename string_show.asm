.model small
.stack 100h
.data
msg db "Hello, Assembly Language!$"

.code
main proc
    mov ax, @data   ; Load data segment
    mov ds, ax

    mov ah, 09h     ; DOS print string function
    mov dx, offset msg
    int 21h         ; Print

    mov ah, 4Ch     ; Exit program
    int 21h
main endp
end main




