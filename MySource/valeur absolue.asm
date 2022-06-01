
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h



mov ax,-5
cmp ax,0
JGE   fin
mov bx,ax
mov ax,0 

b:cmp bx,0 
    jl fin
  add ax,1  
  add bx,1
  jmp b
fin:
 

ret




