org 100h

.data

    
    username db 'user$'  ; Change 'user' to your desired username
    password db '123$'   ; Change '123' to your desired password    

    prompt_user db "   Good Day! Ready to serve", 0Dh, 0Ah, "To activate, Please Enter Key: $"
    prompt_pass db "Next, Please Enter your Password: $"
    
    out1 db "Hello Shopper! ", 0Dh, 0Ah, "Welcome to our Kiosk Order System. $" 
    out2 db "Incorrect Login. Access Denied. $"
    logged_out db "Logged out. Please log in again. $"
    verify_new db "Are you sure you want to Create New Order? (Y/N): $"

    intro db "This is our Menu", 0Dh, 0Ah, 0Dh, 0Ah, "1. Chickenjoy - 75.00php ", 0Dh, 0Ah, "2. Burgersteak - 50.00php", 0Dh, 0Ah, "3. Spaghetti - 50.00php", 0Dh, 0Ah, "4. Liempo - 100.00php", 0Dh, 0Ah, 0Dh, 0Ah, "5. Cancel Order$"
    choice db "Select Order <1 - 4 >: $"
    inputPrompt db 10, 13, "Enter Order Quantity [ Maximum of 9 ]: $"
    totalPricePrompt db 10, 13, "Total Price: $"   
    confirm db "Do you want to Confirm Order? (Y/N): $"
    con_cancel db 'Are you sure? <Y/N>: $'
    
    orderNum dw ?
    
    new db 'Do you want to make New Transaction? <Y/N> $'    
    
    invalid db "Your Response is invalid. ", 0Dh, 0Ah, "Pick again: $"
    invalid2 db "Your Response is invalid. $"


a4 db 10,13,'                              /_.--._\          $'
a5 db 10,13,'                            ,  |=   |             $'
a6 db 10,13,'                          ,/ \,|  =-|               $'
a7 db 10,13,'                        ,/ /`\ \,   |                 $'
a8 db 10,13,'                      ,/ /`___`\ \,-|                   $'
a9 db 10,13,'                    ,/ /..-:";-.`\ \|                     $'
a10 db 10,13,'                  ,/ /` //_|_|_\\ `\ \, ,/\,                $'
a11 db 10,13,'                ,/ /`   ||_|_|_||   `\;/ /\ \,                $'
a12 db 10,13,'              ,/ /`     ||_|_|_||   ,/ /`/\`\ \,                $'
a13 db 10,13,'            ,/ /`    ==_`-------. ,/ /` ~\/~ `\ \,                $'
a14 db 10,13,'          ,/ /` __|     _       ,/ /`         =`\ \,                $'
a15 db 10,13,'        ,/ /`==_     __|___-  ,/ /` ==-=|__|     `\ \,                $'
a17 db 10,13,'       /`  |__ ..----.. = ,/ /`()    .-"""""-.     ()`\                 $'
a20 db 10,13,'           |/_|_|_||_|_|_\| |=\::/||  /|_|_|\  || \::/                         $'
a21 db 10,13,'           |-=|| | | || | | || |  || || |_|_|_|_| | |                              $'
a22 db 10,13,'   *********************************************************$'
a23 db 10,13,'   **                     Welcome To Our                  **$'
a24 db 10,13,'   **               Restaurant`s Kiosk Order              **$'
a25 db 10,13,'   **                         System                      **$'
a26 db 10,13,'   **                By: Escote, Nazareno, Mendoza        **$'
a27 db 10,13,'   *********************************************************$'
a28 db 10,13,'           ||_|_|_||_|_|_||-|.    ||   .:::.   ||=__|                              $'


a43 db 10,13,'                T~~      $'
a29 db 10,13,'                |          $'
a30 db 10,13,'               /"\           $'
a31 db 10,13,'       T~~     |.| T~~         $'
a32 db 10,13,'   T~~ |    T~ WWWW|             $'
a33 db 10,13,'   |  /"\   |  |  |/\T~~           $'
a34 db 10,13,'  /"\ WWW  /"\ |. |WW|               $'
a35 db 10,13,' WWWWW/\| /   \|./\|/"\                $'
a36 db 10,13,' |   /__\/]WWW[\/__\WWWW                 $'
a37 db 10,13,' |"  WWWW.|I_I|.WWWW.  |                   $'
a38 db 10,13,' |   |. |                     $'
a39 db 10,13,' |.  |  |LI=H=LI|. |   |                       $'
a40 db 10,13,' |   |. | |[_]| |  |.  |                         $'
a41 db 10,13,' |   |  |_|###|_|  |   |                           $'
a42 db 10,13,' .---.--.-/___\-.--.---.                           $'

a66 db 10,13,'+-------------------------------------+ $'
a44 db 10,13,'|                                     |   $'
a45 db 10,13,'|         Please proceed to:          |     $'
a46 db 10,13,'|              PAYMENT                |       $'
a47 db 10,13,'|                                     |         $'
a48 db 10,13,'|    +-------------------------+      |           $'
a49 db 10,13,'|    |   Present this Receipt  |      |             $'
a50 db 10,13,'|    |     to the Cashier      |      |               $'
a51 db 10,13,'|    |   and Claim your Order  |      |                 $'
a52 db 10,13,'|    +-------------------------+      |                   $'
a53 db 10,13,'|                                     |                     $'
a54 db 10,13,'          Order Number:$ '
a55 db 10,13,'|                                                           $'
a56 db 10,13,'|                                     |                           $'
a57 db 10,13,'|       THANK YOU FOR ORDERING        |                             $'
a58 db 10,13,'|                IN                   |                               $'
a59 db 10,13,'|  -MAPUA MALAYAN COLLEGES LAGUNA-    |                                 $'
a60 db 10,13,'|                                     |                                   $'
a61 db 10,13,'|     Pulo-Diezmo Road, Cabuyao       |                                     $'
a62 db 10,13,'|          (4025) Laguna              |                                       $'
a63 db 10,13,'|   Mobile Number: 0922-3333-444      |                                         $'
a64 db 10,13,'|                                     |                                           $'
a65 db 10,13,'+-------------------------------------+                                           $'  


.code
;welcome page
mov ah,9
lea dx,a4
int 21h
lea dx,a5
int 21h
lea dx,a6
int 21h
lea dx,a7
int 21h
lea dx,a8
int 21h
lea dx,a9
int 21h
lea dx,a10
int 21h
lea dx,a11
int 21h
lea dx,a12
int 21h
lea dx,a13
int 21h
lea dx,a14
int 21h
lea dx,a15
int 21h
lea dx,a17
int 21h
lea dx,a20
int 21h
lea dx,a21
int 21h
lea dx,a22
int 21h
lea dx,a23
int 21h
lea dx,a24
int 21h
lea dx,a25
int 21h
lea dx,a26
int 21h
lea dx,a27
int 21h
lea dx,a28
int 21h 

 
         
         
start:
    CALL newline
    CALL newline
     
   ; Display prompt for user to enter username
    MOV AH, 09h
    MOV DX, offset prompt_user
    INT 21h

    MOV BX, 200h                        ; Set BX to the memory location 200h   

    
input_username:
    MOV AH, 01    
    INT 21H
    MOV [BX], AL                        ; Store the entered character in memory
    INC BX                              ; Move to the next memory location
    CMP BX, 205h                        ; Compare BX with the end of the buffer
    JNE input_username                  ; Jump back to input if not yet filled

    CALL newline

    ; Compare entered username with stored username
    MOV SI, offset username
    MOV DI, 200h
    MOV CX, 3                           ; Compare three characters for the username
    REPE CMPSB
    JNE login_failed                    ; Jump to login_failed if not equal

    ; Display prompt for user to enter password
    MOV AH, 09h
    MOV DX, offset prompt_pass
    INT 21h

    MOV BX, 203h                        ; Set BX to the memory location 203h for password input
    
input_password:
    MOV AH, 01
    INT 21H
    MOV [BX], AL
    INC BX
    CMP BX, 206h                        ; Compare BX with the end of the password buffer
    JNE input_password

    CALL newline

    ; Compare entered password with stored password
    MOV SI, offset password
    MOV DI, 203h
    MOV CX, 3                           ; Compare three characters for the password
    REPE CMPSB
    JNE login_failed                    ; Jump to login_failed if not equal

    ; If we reach here, the login is correct
    CALL newline
    MOV AH, 09h
    MOV DX, offset out1
    INT 21h

    ; Now proceed with the restaurant order system
    CALL newline
    CALL restaurant_order
    
    INT 20h


login_failed:
    ; Display login failed message
    MOV AH, 09h
    MOV DX, offset out2
    INT 21h

    CALL newline
    JMP start

restaurant_order:
mov ah,9
lea dx,a29
int 21h
lea dx,a30
int 21h   
lea dx,a31
int 21h
lea dx,a32
int 21h      
lea dx,a33
int 21h   
lea dx,a34
int 21h
lea dx,a35
int 21h   
lea dx,a36
int 21h   
lea dx,a37
int 21h
lea dx,a38
int 21h  
lea dx,a39
int 21h   
lea dx,a40
int 21h
lea dx,a41
int 21h 
lea dx,a42
int 21h   
lea dx,a43
int 21h 
    ; Display the menu and take orders here
    CALL newline
    MOV AH, 09h
    MOV DX, offset intro
    INT 21h

    CALL newline
    CALL newline

    MOV AH, 09h
    MOV DX, offset choice
    INT 21h

    ; Input
    MOV AH, 01
    INT 21h

    ; Menu
    CMP AL, '1'
    JE Chickenjoy

    CMP AL, '2'
    JE Burgersteak
        
    CMP AL, '3'
    JE Spaghetti
    
    CMP AL, '4'
    JE Liempo
            
    ; Exit
    CMP AL, '5'
    JE exit_verification                ; Check for exit verification prompt

    ; Invalid
    CMP AL, '5'
    JA invalid_course

    JMP restaurant_order                ; Repeat the order process if invalid input

;Food Section
Chickenjoy:
    ; Display prompt for quantity
    MOV AH, 09h
    MOV DX, offset inputPrompt
    INT 21h

    ; Accept user input for quantity
    MOV AH, 01h
    INT 21h
    SUB AL, '0'                         ; Convert ASCII input to numeric value
    MOV BL, AL                          ; Store quantity in BL

    ; Price calculation for Chickenjoy (75.00php)
    MOV AX, 75                          ; Price of Chickenjoy
    MUL BL                              ; Multiply quantity by price
    MOV BX, AX                          ; Store the result in BX

    ; Display total price prompt
    CALL newline
    MOV AH, 09h
    MOV DX, offset totalPricePrompt
    INT 21h

    ; Display total price for Chickenjoy
    MOV AX, BX                          ; Retrieve the total price from BX
    CALL DisplayNumber                  ; Display the total price in AX
    JMP order_confirmation             ; Return to the menu
    
    
Burgersteak:
    ; Display prompt for quantity
    MOV AH, 09h
    MOV DX, offset inputPrompt
    INT 21h

    ; Accept user input for quantity
    MOV AH, 01h
    INT 21h
    SUB AL, '0'                         ; Convert ASCII input to numeric value
    MOV BL, AL                          ; Store quantity in BL

    ; Price calculation for Burgersteak (50.00php)
    MOV AX, 50                          ; Price of Burgersteak
    MUL BL                              ; Multiply quantity by price
    MOV BX, AX                          ; Store the result in BX

    ; Display total price prompt
    CALL newline
    MOV AH, 09h
    MOV DX, offset totalPricePrompt
    INT 21h

    ; Display total price for Burgersteak
    MOV AX, BX                          ; Retrieve the total price from BX
    CALL DisplayNumber                  ; Display the total price in AX
    JMP order_confirmation             ; Return to the menu 
       
Spaghetti:
    ; Display prompt for quantity
    MOV AH, 09h
    MOV DX, offset inputPrompt
    INT 21h

    ; Accept user input for quantity
    MOV AH, 01h
    INT 21h
    SUB AL, '0'                         ; Convert ASCII input to numeric value
    MOV BL, AL                          ; Store quantity in BL

    ; Price calculation for Spaghetti (50.00php)
    MOV AX, 50                          ; Price of Spaghetti
    MUL BL                              ; Multiply quantity by price
    MOV BX, AX                          ; Store the result in BX

    ; Display total price prompt
    CALL newline
    MOV AH, 09h
    MOV DX, offset totalPricePrompt
    INT 21h

    ; Display total price for Spaghetti
    MOV AX, BX                          ; Retrieve the total price from BX
    CALL DisplayNumber                  ; Display the total price in AX
    JMP order_confirmation             ; Return to the menu
    
Liempo:
    ; Display prompt for quantity
    MOV AH, 09h
    MOV DX, offset inputPrompt
    INT 21h

    ; Accept user input for quantity
    MOV AH, 01h
    INT 21h
    SUB AL, '0'                         ; Convert ASCII input to numeric value
    MOV BL, AL                          ; Store quantity in BL

    ; Price calculation for Liempo (100.00php)
    MOV AX, 100                         ; Price of Liempo
    MUL BL                              ; Multiply quantity by price
    MOV BX, AX                          ; Store the result in BX

    ; Display total price prompt
    CALL newline
    MOV AH, 09h
    MOV DX, offset totalPricePrompt
    INT 21h

    ; Display total price for Liempo
    MOV AX, BX                          ; Retrieve the total price from BX
    CALL DisplayNumber                  ; Display the total price in AX
    
    JMP order_confirmation            ; Return to the menu


exit_verification:
    CALL newline
    MOV AH, 09h
    MOV DX, offset con_cancel
    INT 21h

    ; Input for verification
    MOV AH, 01
    INT 21h

    CMP AL, 'Y'  ; Check if input is 'Y' or 'y' (yes)
    JE exit      ; If yes, exit the program  
    
    CMP AL, 'y' 
    JE exit      
         
    CMP AL, 'N'                 ; Check if input is 'N' or 'n' (no)
    JE restaurant_order         
    
    CMP AL, 'n'                 ; Check if input is 'N' or 'n' (no)
    JE restaurant_order         ; If yes, exit the program
    
    CALL newline
    CALL newline
    
    CALL invalid02
    JMP exit_verification

exit:
    ; Exit the program
    MOV ah, 4Ch
    INT 21h    


invalid_course:
    CALL newline
    CALL newline

    MOV AH, 09h
    MOV DX, offset invalid
    INT 21h

    CALL newline
    JMP restaurant_order

    
; Transaction Processes

; Procedure to display a number in AX
DisplayNumber proc
    mov cx, 10                          ; Set up divisor for the ASCII conversion
    mov bx, 0                           ; Clear BX to prepare for the result

    convertLoop:
        xor dx, dx                      ; Clear DX for division
        div cx                          ; Divide by 10
        push dx                         ; Store the remainder on the stack
        inc bx                          ; Increment count

        test ax, ax                     ; Check if quotient is zero
        jnz convertLoop                 ; If not, continue looping

    displayLoop:
        pop dx                          ; Retrieve the remainder from the stack
        add dl, '0'                     ; Convert to ASCII
        mov ah, 02h                     ; Display character function
        int 21h                         ; Display ASCII character

        dec bx                          ; Decrement count
        jnz displayLoop                 ; Loop until all digits are displayed

    ret
DisplayNumber endp


order_confirmation:
    CALL newline
    MOV AH, 09h
    MOV DX, offset confirm
    INT 21h

    ; Input for verification
    MOV AH, 01
    INT 21h

    CMP AL, 'Y'                         ; Check if input is 'Y' or 'y' (yes)
    JE payment                          ; If yes, proceed to payment  
    CMP AL, 'y'             
    JE payment
    
    
    CMP AL, 'N'             
    JE cancel_order
    CMP AL, 'n'             
    JE cancel_order   
    
    CALL invalid02
    JMP order_confirmation
    
payment:

mov ah,9
lea dx,a66
int 21h   
lea dx,a44
int 21h 
lea dx,a45
int 21h   
lea dx,a46
int 21h 
lea dx,a47
int 21h 
lea dx,a48
int 21h   
lea dx,a49
int 21h 
lea dx,a50
int 21h 
lea dx,a51
int 21h   
lea dx,a52
int 21h    
lea dx,a53
int 21h 
lea dx,a54
int 21h   
; lea dx,a55
; int 21h
CALL order_number

cont_receipt:
mov ah, 9
lea dx,a56
int 21h 
lea dx,a57
int 21h   
lea dx,a58
int 21h 
lea dx,a59
int 21h   
lea dx,a60
int 21h 
lea dx,a61
int 21h 
lea dx,a62
int 21h     
lea dx,a65
int 21h    

JMP final_prompt               
                   
                   
;order number code block
order_number:
    mov ax, @data
    mov ds, ax

    call generateRandomNum

    mov ax, orderNum
    call displayOrderNumber

    mov ah, 4Ch
    int 21h
    
    ret
    
generateRandomNum:
    mov ah, 2Ch
    int 21h

    mov orderNum, dx

    ret
    
displayOrderNumber:
    push ax
    push bx
    push cx
    push dx

    mov bx, 10
    mov cx, 0

displayRandLoop:
    xor dx, dx
    div bx
    add dl, '0'
    push dx
    inc cx
    cmp ax, 0
    jnz displayRandLoop

printLoop:
    pop dx
    mov ah, 02h
    int 21h
    loop printLoop

    pop dx
    pop cx
    pop bx
    pop ax
    
    JMP cont_receipt

    
cancel_order:
    CALL newline
    MOV AH, 09h
    MOV DX, offset con_cancel
    INT 21h
    ; Input for verification
    MOV AH, 01
    INT 21h
    
    CMP AL, 'Y'                       
    JE restaurant_order                           
    CMP AL, 'y'             
    JE restaurant_order
    
    CMP AL, 'N'             
    JE order_confirmation
    CMP AL, 'n'             
    JE order_confirmation
    
    CALL invalid02
    JMP cancel_order
    
final_prompt:
    CALL newline
    CALL newline    
    MOV AH, 09h
    MOV DX, offset new
    INT 21h
    ; Input for verification
    MOV AH, 01
    INT 21h
   
    CMP AL, 'Y'                       
    JE restaurant_order                           
    CMP AL, 'y'             
    JE restaurant_order
    
    CMP AL, 'N'             
    JE end_confirm
    CMP AL, 'n'             
    JE end_confirm
    
    
    CALL invalid02
    JMP final_prompt
    
end_confirm: 
    CALL newline
    MOV AH, 09h
    MOV DX, offset con_cancel
    INT 21h
    ; Input for verification
    MOV AH, 01
    INT 21h
    
    CMP AL, 'Y'                       
    JE exit                           
    CMP AL, 'y'             
    JE exit
    
    CMP AL, 'N'             
    JE final_prompt
    CMP AL, 'n'             
    JE final_prompt
    
    CALL invalid02
    JMP final_prompt
    
invalid02:
    CALL newline
    CALL newline    
    MOV AH, 09h
    MOV DX, offset invalid2
    INT 21h
    RET

newline:
    ; Display newline characters
    MOV AH, 02h
    MOV DL, 0Ah
    INT 21h
    MOV DL, 0Dh
    INT 21h
    RET     