.model small
.stack 100h
.data


s  db 4 dup(?) 
ans db 4 dup(?) 
t db 0
v  db 0
.code
main    proc 
        mov ax, @data          
        mov ds, ax
        mov bx,0
        mov ah,1h
        int 21h
        mov s[bx],al 
        add bx,1
        int 21h
        mov s[bx],al 
        add bx,1
        int 21h
        mov s[bx],al 
        add bx,1
        int 21h
        mov s[bx],al 
        add bx,1
        read:
        mov ah,2h
        mov dl,0ah
        int 21h 
        mov dl,0dh
        int 21h 
        mov dl,'='
        int 21h  ;\n=
        mov bx,0
        mov ah,1h
        int 21h 
        mov ans[bx],al 
        add bx,1
        int 21h
        mov ans[bx],al 
        add bx,1
        int 21h
        mov ans[bx],al 
        add bx,1
        int 21h
        mov ans[bx],al 
        add bx,1 
        calcul:
        mov t,0
        mov v,0  
        mov bx,0
        mov al,s[bx] 
        mov ah,ans[bx]
        cmp ah,al
            jne c1
            add t,1
        c1: add bx,1
        mov al,s[bx] 
        mov ah,ans[bx]
        cmp ah,al
            jne c2
            add t,1
        c2: add bx,1
        mov al,s[bx] 
        mov ah,ans[bx]
        cmp ah,al 
            jne c3
            add t,1
        c3: add bx,1
        mov al,s[bx] 
        mov ah,ans[bx]
        cmp ah,al
            jne c4
            add t,1
        c4:mov bx,0
        boucle:mov al,s[bx]
               mov ah, ans[0]
               cmp al,ah 
               jne  v1
               add v,1
               v1:
               mov ah, ans[1]
               cmp al,ah 
               jne  v2
               add v,1
               v2:
               mov ah, ans[2]
               cmp al,ah 
               jne  v3
               add v,1
               v3:
               mov ah, ans[3]
               cmp al,ah 
               jne  v4
               add v,1
               v4: add bx,1
                    cmp bx,4
                    jne boucle
           
           mov bl,v
           sub bl,t
           mov v,bl   
           
           
        cmp t,4 
         je fin 
           mov ah,2h
           mov dl,0ah
        int 21h 
        mov dl,0dh
        int 21h 
        mov dl,v
        int 21h
        mov dl,'v'
        int 21h
        mov dl,t
        int 21h
        mov dl,'t'
        int 21h
          jmp read
           
   fin: mov ah,2h
        mov dl,0ah
        int 21h 
        mov dl,0dh
        int 21h 
        mov dl,'+'
        int 21h  ;\n=
        mov bx,0
        mov ah,1h
        int 21h 
        
                
            
              
            
    
        mov ax, 4C00h
        int 21h
main    endp
end main