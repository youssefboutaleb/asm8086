.model small
.stack 100h
.data

a dw 1500
b dw 7		
r dw 1

.code
main    proc
        mov ax, @data          
        mov ds, ax
        
pgcd:cmp r, 0
        je fin
        mov bx,a
     cmp bx,b     
        jl  ls
        gr: mov bx,a
            sub bx,b
            mov a,bx
            mov r,bx
        jmp pgcd               
        ls:mov bx,b
            sub bx,a
            mov b,bx
            mov r,bx
        jmp pgcd               
        
fin:    mov bx,a
        add bx,b
        mov ax, 4C00h
        int 21h
main    endp
end main