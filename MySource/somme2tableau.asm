.model small
.stack 100h
.data

T1 Db 1, 2, 3, 4, 5, 6, 7, 8, 9		
T2 Db 1, 2, 3, 4, 5, 6, 7, 8, 9
T  db 0, 0, 0, 0, 0, 0, 1, 1, 1
.code
main    proc
        mov ax, @data          
        mov ds, ax
        mov bx,0 
        boucle:cmp bx,9
            jg fin  
            mov dl,T1[bx]
            mov T[bx],dl
            mov dl,T2[bx] 
            add T[bx],dl
            inc bx 
            jmp boucle
        
        
            
        




fin:    
        mov ax, 4C00h
        int 21h
main    endp
end main