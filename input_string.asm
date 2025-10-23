




.model small
.stack 100h 

.data

msg1 db 'Enter number:$'
msg2 db 'the number :$'

.code

main proc
mov ax,@data
mov ds,ax 

;enter number

mov ah,9
lea dx,msg1
int 21h


mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

 ;enter string
 
mov ah,1
int 21h
mov bl,al


mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

 ;display number
 
mov ah,9
lea dx,msg2
int 21h

;display string

mov ah,2
mov dl,bl
int 21h

 ;exit
 
mov ah,4ch
int 21h

main endp

end main


