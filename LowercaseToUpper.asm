
.model small
.stack 100h
             
             
.code

main proc
    
    ;input lowrcase
    mov ah,1
    int 21h
    mov bl,al
    
    ;convert lowercase to uppercase
    
    sub bl,32
    
    ;display
    mov ah,2
    
    mov dl,bl 
    int 21h
    
    ;exit
    mov ah,4ch
    int 21h
    
    main endp
    end main



