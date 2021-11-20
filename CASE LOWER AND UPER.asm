
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
.model small
.stack 100h
.data
.code
main proc
   ; mov ah,1
   ; int 21h
    ;mov dl ,al
   ; mov ah,1
    ;int 21h
    ;add dl ,al
    ;sub dl ,48
    ;mov ah ,2
    ;int 21h
   ; mov ah ,4ch
   ; int 21h
   ; lower to uper  
    mov ah ,1
    int 21h
    mov dl ,al
    add dl ,32  ; uper to lower we add 32
    mov ah ,2
    int 21h
    
    
    
    
endp
end


ret




