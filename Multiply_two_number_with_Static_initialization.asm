
.model small
.stack 100h  

.data

num1 db 2
num2 db 3
output db ?


.code 

main proc
    
    mov al,num1
    mov bl,num2
    
    
    ;multiply
    
    mul bl
    ;store result
    
    mov output ,al
    
    ;convert
    
    add al,48
    
    ;display
    mov ah,2
    mov dl,al
    int 21h
            
    ;exit
    mov ah,4ch
    int 21h
    
    main endp
    end main




