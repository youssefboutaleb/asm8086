.model small
.stack 100h
.data


T  db 1, 1, 1, 1, 1, 1, 0, 1, 0
.code
main    proc 
        
        mov ax, @data          
        mov ds, ax
        mov dx,0
        mov bx,0 
        boucle:cmp bx,10
            je fin  
            mov dl,T[bx]
            cmp dl,0
                jne non
            cmp bx,9
                je non      
            add dh,1
            non:add bx,1 
                jmp boucle
        
        
            
        




fin:    
        mov ax, 4C00h
        int 21h
main    endp
end main