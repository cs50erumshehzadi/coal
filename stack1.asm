
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
    ; stack  topic
    ;stack in proc
    ; with user
org 100h

; add your code here

.model small
.stack 100h
.data
.code    


main proc


call swap    


main endp 




swap proc

mov ah , 01
int 21h
xor ah , ah

push ax  

mov ah , 01
int 21h
xor ah , ah
mov bx , ax


push bx

pop ax
pop bx

mov dx , ax
mov ah , 02
int 21h
mov dx , bx
mov ah , 02
int 21h   
mov ah , 4ch
int 21h  
swap endp

end main 

