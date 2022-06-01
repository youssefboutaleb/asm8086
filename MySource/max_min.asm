.model small
.stack 100h
.data


T  db 5, 15, 23, 11, 10, 9, 7, 3, -1 
max db ?
min db  ?
.code
main    proc 
        
        mov ax, @data          
        mov ds, ax
        mov dx,0
        mov bx,0 
        mov dl,T[0]
        mov max,dl
        mov min,dl
        boucle:cmp bx,10
            je fin  
            mov dl,T[bx]
            cmp dl,max
                jg maxi
            cmp dl,min
                jl mini
                jmp skip
            maxi: mov max,dl
                jmp skip
            mini: mov min,dl
                 jmp skip
                
            skip:
                add bx,1 
                jmp boucle
        
        
            
        




fin:    
        mov ax, 4C00h
        int 21h
main    endp
end main