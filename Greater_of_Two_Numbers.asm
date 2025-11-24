.model small
.stack 100h

.data
    num1 db 7
    num2 db 9

.code
main proc
    
      
    ; Initialize data segment
    mov ax, @data
    mov ds, ax
    
    mov ah, 2        ; DOS print-character function in AH

    ; Load num1 into BH and compare with num2 
    
    
    mov bh, num1
    cmp bh, num2
    jg num1greater   ; If num1 > num2 ? jump 
    
    

    ; num2 is greater or equal ? print num2 
    
    
    mov dl, num2
    add dl, 48       ; Convert to ASCII
    int 21h
    jmp done         ; Skip printing num1

num1greater:  


    ; Print num1
    mov dl, num1
    add dl, 48       ; Convert to ASCII
    int 21h

done:
    ; Exit the program
    mov ah, 4Ch
    int 21h

main endp
end main
