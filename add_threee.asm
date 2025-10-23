.model small
.stack 100h

.code
main proc
    
    ;input first
    mov ah,1
    int 21h
    mov bl,al
    
    ;intput 2nd
    
    mov ah,1
    int 21h
    mov bh,al 
    
    ;input 3rd
    
    mov ah,1
    int 21h
    mov cl,al
    
    
    
    ;convert ascii
    sub bl,48
    sub bh,48
    sub cl,48
    
     
    
    
    
    ;add three
    
    mov al,bl
    add al,bh
    add al,cl   
    
    
    ;convert result
    add al,48   
    
    
    ;new line   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    ;display
    mov ah,2
    mov dl,al
    int 21h
    
    ;exit
    mov ah,4Ch
    int 21h
    
    main endp
end main


