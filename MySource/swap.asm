.model small
.stack 100h
.data

a db 5
b db 3
c db 0		

.code
main    proc
        mov ax, @data          
        mov ds, ax
        mov al, a      
        mov bl, b               
        mov b, al         
        mov a, bl               
        
Exit_:
        mov ax, 4C00h
        int 21h
main    endp
end main