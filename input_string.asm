




.model small
.stack 100h

.data
msg1 db "Enter a string: $"
msg2 db 0Dh,0Ah,"You entered: $" 

buffer db 50           
        db ?           
        db 50 dup('$') 

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Show message: "Enter a string: "
    mov ah, 09h
    mov dx, offset msg1
    int 21h

    ; Take string input
    mov ah, 0Ah
    mov dx, offset buffer
    int 21h

    ; Print new line + "You entered: "
    mov ah, 09h
    mov dx, offset msg2
    int 21h

    ; Show the typed string
    mov ah, 09h
    mov dx, offset buffer + 2   
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp
end main

