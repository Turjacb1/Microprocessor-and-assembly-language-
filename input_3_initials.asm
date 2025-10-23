.model
.stack 100h


  .data
  a db 'enter three number: $'
  
 .code
 main proc
    
    mov ax,@data
    mov ds,ax
    
    
    ;display db
    
    mov ah,9
    lea dx,a
    int 21h
    
    
    ;input first string
    
    
    mov ah,1
    int 21h
    mov bl,al   
    
    
    ;input 2nd string
    
    mov ah,1
    int 21h
    mov bh,al     
    
    ;intput 3rd string
    
    mov ah,1
    int 21h
    mov cl,al
    
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
            ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
              
              ;display 2nd
    mov ah,2
    mov dl,bh
    int 21h
    
              ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
              ;display 3rd
    mov ah,2
    mov dl,cl
    int 21h
              ;exit
             
    mov ah,4Ch
    int 21h
    
    main endp
 end main
    