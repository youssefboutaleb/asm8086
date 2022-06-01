.model small
.stack 100h
.data

a dw 10
T DW 1, 2, 3, 4, 5, 6, 7, 8, 9		

.code
main    proc
        mov ax, @data          
        mov ds, ax
        mov bx,1
        mov dx,a 
        boucle:cmp dx,T[bx]
            je oui
            add bx,1 
            cmp bx,10
            je non
            jmp boucle
        
        
            
        



oui: mov a,1
    jmp fin
non: mov a,-1
fin:    
        mov ax, 4C00h
        int 21h
main    endp
end main