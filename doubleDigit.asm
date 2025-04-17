.model small 
.stack 100h
.data
.code

main proc
    
    ; Take first digit of the first number input
    
    mov ah,1
    int 21h
     sub al, '0'    
    mov bl,al  
    
    
    ; Take second digit of the first number input
    
    mov ah,1
    int 21h
     sub al, '0'    
    mov bh,al
    
    ; Combine both numbers
    
    mov ax,0 ; Empty the ax register as the multiplication result will be stored here
    
    mov al, bl ; The multiplication will occur on al register, so move first digit there 
    
    mov dl,10 
    
    mul dl ; The bl has 10 which will multiply with al register value. al X bl
    
    add al,bh ; After multiplying add the second digit with al   Ex: 10 + 2 = 12
    
    mov bl, al
    
    ; For the second double digit number ---->
    
                                                 
    ; Take first digit of the second number input
    
    mov ah,1
    int 21h
     sub al, '0'    
    mov cl,al
    
    ; Take second digit of the second number input
    
    mov ah,1
    int 21h
     sub al, '0'    
    mov ch,al
    
    ; Combine both numbers
    
    mov ax,0 ; Empty the ax register as the multiplication result will be stored here
    
    mov al, cl ; The multiplication will occur on al register, so move first digit there 
    
    mov dl,10 
    
    mul dl ; The bl has 10 which will multiply with al register value. al X bl
    
    add al,ch ; After multiplying add the second digit with al   Ex: 10 + 2 = 12
    
    mov cl, al
    
                  
                  
    ; Add the two numbers
    
    
    mov ax,0
    
    mov al, bl
    add al, cl    ; stored the addition in al so that we can split after as we will divide and it will straight do it in al.
    
    ; splitting the digits for printing
    
    mov ah,0 ; empty the ah to avoid error. 
    mov bl,10
    
    div bl     ; This will divide al / bl   
    
    mov bh, ah ; The ones digit is saved in ah, and the tens digit in al. 
    
    
    ; --- Print newline ---
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    int 21h

              
              
    ; Print the result

mov dl, al     ; AL has tens
add dl, '0'
mov ah, 2
int 21h

mov dl, bh     ; BH has ones
add dl, '0'
mov ah, 2
int 21h
    
     ; --- Exit program ---
    mov ah, 4ch
    int 21h 
    
    
    
    
    
    
    
 

    
    
    
     
    