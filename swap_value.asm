
.model small
.stack 100h

.code 
main proc
    
    ;input first
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    ;input 2nd
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    ;swap two
    
    xchg bl,bh
    
    
    ;new line
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;display first
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    
    ;display 2nd
    mov ah,2
    mov dl,bh
    int 21h
    
    ;exit
    
    mov ah,4Ch
    int 21h
    main endp
end main
    



