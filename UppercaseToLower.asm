.model small
.stack 100h

.code

main proc
    ;intput uppercase
    mov ah,1
    int 21h 
    mov bl,al
    
    
    ;convert uppercase to lower
    add bl,32
    
    ;display
    
    mov ah,2
                 
                 
    mov dl,bl
    int 21h
    
    ;exit 
    mov ah,4ch
    int 21h
    
    main endp
    end main



