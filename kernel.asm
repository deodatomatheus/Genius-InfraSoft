org 0x7e00
jmp 0x0000:start
cxL1 times 16 db 0
cxL2 times 16 db 0

NIVEL times 16 db 0

rand times 16 db 0

A times 8 db 1
B times 8 db 3
C times 8 db 0
D times 8 db 1
E times 8 db 2
F times 8 db 0 
G times 8 db 3
H times 8 db 2

R times 8 db 0

RED:
    mov cx, 400;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 240
        jle .fim3 
        mov [cxL1], cx
        mov cx, 160
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx,0
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 4 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3; 0
ret

GREEN:

    mov cx, 240;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 80
        jle .fim3 
        mov [cxL1], cx
        mov cx, 320
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx,160
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 2 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3

ret

BLUE:
 mov cx, 560;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 400
        jle .fim3 
        mov [cxL1], cx
        mov cx, 320
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx,160
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 1 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3;2

ret

YELLOW:
 mov cx, 400;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 240
        jle .fim3 
        mov [cxL1], cx
        mov cx, 480
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx, 320
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 14 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3;3
ret

REDS:
    mov cx, 400;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 240
        jle .fim3 
        mov [cxL1], cx
        mov cx, 160
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx,0
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 12 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3; 0
ret

GREENS:
    mov cx, 240;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 80
        jle .fim3 
        mov [cxL1], cx
        mov cx, 320
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx,160
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 10 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3;1
ret

BLUES:
 mov cx, 560;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 400
        jle .fim3 
        mov [cxL1], cx
        mov cx, 320
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx,160
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 11 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3;2

ret

YELLOWS:
 mov cx, 400;repetir o L3 do 300x ao 400x

    .L3:;muda as colunas
        cmp cx, 240
        jle .fim3 
        mov [cxL1], cx
        mov cx, 480
            .L4:;repetir L4 de 450y ate 300y 
            cmp cx, 320
            jle .fim4
            mov [cxL2], cx          
            mov ah, 0ch ;pixel na coordenada [dx, cx]
            mov bh, 0
            mov cx, [cxL1]
            mov dx, [cxL2]
            mov al, 15 ;cor do pixel (AMARELO)
            int 10h         
            mov cx, [cxL2]
            .fim4:
        loop .L4
        mov cx, [cxL1]
        .fim3:
    loop .L3;3
ret

printS:    
    cmp ah, 0
    je .R
    cmp ah, 1
    je .Gr
    cmp ah, 2
    je .Br
    cmp ah, 3
    je .Y


    .R:
    call REDS
    jmp .FP
    .Gr:
    call GREENS
    jmp .FP
    .Br:
    call BLUES
    jmp .FP
    .Y:
    call YELLOWS

    .FP:
    
    call modoVideo
    call printNivel
     mov ah, 86h
    mov cx, 4
    mov dx, 4086
    int 15h
ret

print:    
    cmp ah, 0
    je .R
    cmp ah, 1
    je .Gr
    cmp ah, 2
    je .Br
    cmp ah, 3
    je .Y


    .R:
    call RED
    jmp .FP
    .Gr:
    call GREEN

    jmp .FP
    .Br:
    call BLUE
    jmp .FP
    .Y:
    call YELLOW

    .FP:
  
    mov ah, 86h
    mov cx, 4
    mov dx, 4086
    int 15h
    call modoVideo
    call printNivel
     mov ah, 86h
    mov cx, 4
    mov dx, 4086
    int 15h
ret

PS:
    call printNivel
    mov ax, [NIVEL]
    cmp ax, 1
    je .n1
    cmp ax, 2
    je .n2
    cmp ax, 3
    je .n3
    cmp ax, 4
    je .n4
    cmp ax, 5
    je .n5
    cmp ax, 6
    je .n6
    cmp ax, 7
    je .n7
    jne .n8
    .n1:
 
        mov ah, [A]
        call print
        jmp .FNAL
    .n2:        
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        jmp .FNAL
    .n3:        
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        mov ah, [C]
        call print
        jmp .FNAL
    .n4:        
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        mov ah, [C]
        call print
        mov ah, [D]
        call print
        jmp .FNAL
    .n5:        
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        mov ah, [C]
        call print
        mov ah, [D]
        call print
        mov ah, [E]
        call print
        jmp .FNAL
    .n6:        
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        mov ah, [C]
        call print
        mov ah, [D]
        call print
        mov ah, [E]
        call print
        mov ah, [F]
        call print
        jmp .FNAL
    .n7:        
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        mov ah, [C]
        call print
        mov ah, [D]
        call print
        mov ah, [E]
        call print
        mov ah, [F]
        call print
        mov ah, [G]
        call print
        jmp .FNAL
    .n8:
        mov ah, [A]
        call print
        mov ah, [B]
        call print
        mov ah, [C]
        call print
        mov ah, [D]
        call print
        mov ah, [E]
        call print
        mov ah, [F]
        call print
        mov ah, [G]
        call print
        mov ah, [H]
        call print

    .FNAL
   
ret

verif:

    mov ax, [NIVEL]
    cmp ax, 1
    je .n1
    cmp ax, 2
    je .n2
    cmp ax, 3
    je .n3
    cmp ax, 4
    je .n4
    cmp ax, 5
    je .n5
    cmp ax, 6
    je .n6
    cmp ax, 7
    je .n7
    jne .n8
    .n1:
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd
        
        mov ah, [A]
        call printS        
        jmp .FNAL
    .n2:        
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd        
        mov ah, [A]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd
        mov ah, [B]
        call printS
        jmp .FNAL
    .n3:        
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [A]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [B]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [C]
        call printS
        
        jmp .FNAL
    .n4:        
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [A]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [B]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [C]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [D]
        call printS
        jmp .FNAL
    .n5:        
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [A]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [B]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [C]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [D]
        call printS
        call acende
        mov ah, 0
        int 16h
        cmp al, 100
        jne .sfd

        mov ah, [E]
        call printS
        jmp .FNAL
    .n6:        
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [A]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [B]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [C]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [D]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 100
        jne .sfd

        mov ah, [E]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [F]
        call printS
        
        jmp .FNAL
    .n7:        
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [A]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [B]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [C]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [D]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 100
        jne .sfd

        mov ah, [E]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [F]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [G]
        call printS
        
        jmp .FNAL
    .n8:
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [A]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [B]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [C]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 97
        jne .sfd

        mov ah, [D]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 100
        jne .sfd

        mov ah, [E]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 119
        jne .sfd

        mov ah, [F]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 115
        jne .sfd

        mov ah, [G]
        call printS
         call acende
        mov ah, 0
        int 16h
        cmp al, 100
        jne .sfd
        mov ah, [H]
        call printS
        jmp .FNAL
    .sfd
    
    mov al, 0
    mov [R], al
    jmp .F
    .FNAL

    mov al, 1
    mov [R], al
    .F
ret

acende:
    call BLUE
    call RED
    call YELLOW
    call GREEN

ret


telaInicio:
    call acende

    mov AH, 02H
    mov BH, 0 
    mov DH, 12
    mov DL, 35
    int 10h
    mov si, str1
    call imprimirString
    
    mov AH, 02H
    mov BH, 0 
    mov DH, 13
    mov DL, 39
    int 10h


    mov al ,'W'
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
    mov BL, 4
    int 10h
    call pulaLinha
    mov AH, 02H
    mov BH, 0 
    mov DH, 14
    mov DL, 37
    int 10h


    mov al ,'A'
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
    mov BL, 2
    int 10h
    call pulaLinha
 
   mov AH, 02H
    mov BH, 0 
    mov DH, 15
    mov DL, 39
    int 10h

    mov al, 'S'
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
    mov BL, 14
    int 10h
    call pulaLinha
      mov AH, 02H
    mov BH, 0 
    mov DH, 14
    mov DL, 41
    int 10h

    mov al, 'D'
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
    mov BL, 1
    int 10h


    mov AH, 02H
    mov BH, 0 
    mov DH, 17
    mov DL, 32
    int 10h
    mov si, str2
    call imprimirString
    mov AH, 02H
    mov BH, 0 
    mov DH, 18
    mov DL, 31
    int 10h
    mov si, str3
    call imprimirString
     mov ah, 0
    int 16h

ret

pulaLinha:
    mov al, 10
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
    mov BL, 0xf ;Cor da letra, Branco, apenas em    
    int 10h 
    mov al, 13
    int 10h 
ret
imprimirString: ; vai imprimir a mensagem
    lodsb
    cmp al, 0
    je fimString
    mov ah, 0xe
    mov bh, 0
    mov bl, 6
    int 10h
    jmp imprimirString
    fimString:
    mov al, 10;pula pra proxima linha
    int 10h
    mov al, 13;volta pro começo da linha
    int 10h
ret


str1 : db 'CONTROLE:', 0
str2 : db 'APERTE QUALQUER', 0
str3 : db 'TECLA PARA INICIAR', 0 
str4 : DB 'NIVEL', 0
str5 : db ':( VOCE ERROU :(', 0
str6 : db 'DIGITE ENTER PARA', 0
str7 : db 'SAIR, OU REINICIE', 0
str8 : db 'COM OUTRA TECLA', 0

modoVideo:
    ;modo video
    mov ah, 0
    mov al, 12h
    int 10h
    ;cor da tela
    mov ah, 0xb
    mov bh, 0
    mov bl, 7; cor branca(teoricamente)
    int 10h
ret


modoVideoRED:
    ;modo video
    mov ah, 0
    mov al, 12h
    int 10h
    ;cor da tela
    mov ah, 0xb
    mov bh, 0
    mov bl, 0xb1000; cor branca(teoricamente)
    int 10h
ret

printNivel:
    mov AH, 02H
    mov BH, 0 
    mov DH, 13
    mov DL, 36
    int 10h
    mov si, str4
    call imprimirString
    mov AH, 02H
    mov BH, 0 
    mov DH, 13
    mov DL, 42
    int 10h
    call cachorro
ret

cachorro:
    mov cx, 1
    mov ax, [NIVEL]
    mov dl, 100
    mov bl, 6
    div dl; al = ax/dl, ah = resto  ; al = numero/100
    mov dh, ah
    
    ;printando o primeiro digito, 
    add al, 48;
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
   
    int 10h
    
    mov ah, 0
    mov al, dh; dh tem o valor do resto, agora ax tem o valor do resto, ax = numero%100
    mov dl, 10
    
    div dl; al = ax/dl, ah = resto ; al =  numero/10
    mov dh, ah
    ;printando o segundo digito
    add al, 48;
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
   
    int 10h
    
    mov ah, 0
    mov al, dh; ax tem o valor do resto, ax = numero % 10
    mov dl, 10

    add al, 48
    mov AH, 0xe ;Número da chamada  
    mov BH, 0 ;Número da página.
   
    int 10h 
ret

printErrou
    mov AH, 02H
    mov BH, 0 
    mov DH, 11
    mov DL, 31
    int 10h
    mov si, str5
    call imprimirString
    call printNivel
    mov AH, 02H
    mov BH, 0 
    mov DH, 14
    mov DL, 31
    int 10h

    mov si, str6
    call imprimirString
    mov AH, 02H
    mov BH, 0 
    mov DH, 15
    mov DL, 31
    int 10h

    mov si, str7
    call imprimirString

    mov AH, 02H
    mov BH, 0 
    mov DH, 16
    mov DL, 31
    int 10h

    mov si, str8
    call imprimirString
ret


start:
    mov ax, 0
    mov ds, ax
    mov ax, 1
    mov [NIVEL], ax

    call modoVideo
    call telaInicio
    L:
        call modoVideo
        call PS
        call acende
        call verif
        
        mov al, [R]
        cmp al, 1
        je .UP
        jmp .DOWN

        .UP:
            mov ax, [NIVEL]
            add ax, 1
            mov [NIVEL], ax
            jmp L
        .DOWN:        
            call modoVideoRED
            call acende
            call printErrou
            mov ah, 0
            int 16h 
            cmp al, 13
            je FIM 
            mov ax, 1
            mov [NIVEL], ax
            jmp L
    FIM:
    call acende
jmp $
times 3072-($-$$) db 0 