                                          .model small
.stack 64   
.data  
posx1 dw 0
posy1 dw 0 
posx2 dw 0
posy2 dw 0
color db ?      
check db 0    
checks db 0 
checke db 0
lword db 20h
.code
main proc far
           

       mov posx2,300   
       mov posy2,30
       mov color,01h 
       mov ah,0
       mov al,13h 
       int 10h


start:  
       
       mov ah,0ch
       mov al,07h
       int 21h
   
       cmp al,'h'
       je alef 
       cmp al,'f' 
       je bel
       cmp al,20h
       je space
       cmp al,'[' 
        je jim
   
       cmp al,']' 
        je che  
       cmp al,'p' 
        je hej
       cmp al,'n' 
        je dal
   
        cmp al,'b' 
        je zal
        cmp al,'v' 
        je re
        cmp al,'c'
        je ze   
        cmp al,'C'
        je zhe
        cmp al,'s'
        je sin
        cmp al,'a'
        je shin
        cmp al,'w'
        je sad
        cmp al,'q'
        je zad
        cmp al,'x'
        je ta
        cmp al,'z'
        je za
        cmp al,'t'
        je fe
        cmp al,'r'
        je ghaf
        cmp al,';'
        je kaf
        cmp al,27h
        je gaf
        cmp al,'g'
        je lam
        cmp al,'l'
        je mim
        cmp al,'k'
        je noon
        
         cmp al,'6' 
       je right
       cmp al,'4'
       je left
        
        
        cmp al,','
        je vav
         cmp al,'d'
        je ye
        cmp al,'\'
        je pel
        cmp al,'j'
        je tel
        cmp al,'e'
        je sel
        cmp al,'o'
        je khe      
       cmp al,'u'
        je eina
       cmp al,'y'
        je gheina
       cmp al,'i'
        je he
       cmp al,'6' 
       je right
       cmp al,'4'
       je left
         
         
       
       cmp al,0dh
       je enter
       
       cmp al,1bh
       je quit  
         
           
       jmp start 
       

enter:  mov posx2,300   
        add posy2,40



        jmp start

right:  
       add posx2,20   
       
        jmp start
left:  sub posx2,20   
       
        jmp start       
       
       
space:  mov al,check
        cmp al,0
        je spacen2
        mov color,00h
        mov cx,posx1
        mov dx,posy1
        mov posx2,cx
        mov posy2,dx
        mov checks,1
        mov al,lword
        cmp al,'h'
        je alef 
        cmp al,'f' 
        je bel 
        cmp al,'[' 
        je jim 
        cmp al,']' 
        je che
         cmp al,'p' 
        je hej
        cmp al,'n' 
        je dal
        cmp al,'b' 
        je zal
        cmp al,'v' 
        je re
        cmp al,'c'
        je ze 
        cmp al,'C'
        je zhe
        cmp al,'s'
        je sin
        cmp al,'a'
        je shin
        cmp al,'w'
        je sad
        cmp al,'q'
        je zad
        cmp al,'x'
        je ta
        cmp al,'z'
        je za
        cmp al,'t'
        je fe
         cmp al,'r'
        je ghaf
        cmp al,';'
        je kaf
        cmp al,27h
        je gaf
        cmp al,'g'
        je lam
        cmp al,'l'
        je mim
        cmp al,'k'
        je noon
        cmp al,','
        je vav
        cmp al,'d'
        je ye
         cmp al,'\'
        je pel 
        cmp al,'j'
        je tel
        cmp al,'e'
        je sel
        cmp al,'o'
        je khe
        cmp al,'u'
        je eina
        cmp al,'y'
        je gheina
        cmp al,'i'
        je he
        
          
spacen: mov color,01h
        mov checke,1
        mov cx,posx1
        mov dx,posy1
        mov posx2,cx
        mov posy2,dx
        mov checks,2
        
        mov al,lword
        cmp al,'h'
        je alef 
        cmp al,'f' 
        je bel 
        cmp al,'[' 
        je jim
        cmp al,']' 
        je che   
               cmp al,'p' 
        je hej
       cmp al,'n' 
        je dal        
        cmp al,'b' 
        je zal
        cmp al,'v' 
        je re
        cmp al,'c'
        je ze 
        cmp al,'C'
        je zhe
        cmp al,'s'
        je sin
        cmp al,'a'
        je shin
        cmp al,'w'
        je sad
        cmp al,'q'
        je zad
        cmp al,'x'
        je ta 
        cmp al,'z'
        je za 
        cmp al,'t'
        je fe 
        cmp al,'r'
        je ghaf
        cmp al,';'
        je kaf 
        cmp al,27h
        je gaf 
        cmp al,'g'
        je lam 
        cmp al,'l'
        je mim 
        cmp al,'k'
        je noon 
        cmp al,','
        je vav
         cmp al,'d'
        je ye
         cmp al,'\'
        je pel
        cmp al,'j'
        je tel
       cmp al,'e'
        je sel
        cmp al,'o'
        je khe
        cmp al,'u'
        je eina
        cmp al,'y'
        je gheina
        cmp al,'i'
        je he 
    
        
spacen2:mov checks,0
        mov checke,0
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx

space1:   
        sub cx,10
        mov posx2,cx
        mov posy2,dx 
        mov check,0
        mov checks,0
        jmp start            
       
       
       
         

alef:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        mov al,check
        cmp al,0
        jne alefn
        sub cx,2
alefn:
        
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color

alef1:  
        int 10h 
        inc si
        dec dx
        cmp si,20
        jne alef1
        add dx,20
        mov posx2,cx
        mov posy2,dx
        mov check,0
        mov al,checks
        cmp al,1
        je spacen 
        mov al,checks
        cmp al,2
        je spacen2
         jmp start
         

  
        
be:     mov lword,al     
                  
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
       
       
be1:   int 10h
       inc si
       dec dx 
       cmp si,5
       jne be1
       add dx,5 
       mov si,0 
         
be2:   int 10h
       inc si
       dec cx
       cmp si,25
       jne be2 
       mov si,0
       
be3:   int 10h
       inc si
       dec dx
       cmp si,5  
       jne be3
       add dx,5 
        
       mov si,0
       
be4:  add cx,12 
      add dx,3
      mov ah,0ch
      mov al,0fh
      int 10h
      sub cx,12
      sub dx,3
        mov posx2,cx
        mov posy2,dx
        mov check,0
        mov al,checks    
        cmp al,1             
        je spacen   
        
        mov al,checks
        cmp al,2
        je spacen2
        
        
         jmp start
         
          
bel:   mov lword,al
       mov al,checke 
        cmp al,1             
        je be 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov al,check
        cmp al,0
        jne beln
        sub cx,2
beln:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

bel1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne bel1
       add dx,5 
       mov si,0   
                 
                 
                 
bel2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne bel2 
       mov si,0 
       
       
bel3: add cx,8 
      add dx,3
      int 10h
      sub cx,8
      sub dx,3
      mov posx2,cx
      mov posy2,dx
      mov check,1
      mov al,checks     
      cmp al,1                 
      je spacen                  
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

          
 
   
        
pe:     mov lword,al     
                  
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
       
       
pe1:   int 10h
       inc si
       dec dx 
       cmp si,5
       jne pe1
       add dx,5 
       mov si,0 
         
pe2:   int 10h
       inc si
       dec cx
       cmp si,25
       jne pe2 
       mov si,0
       
pe3:   int 10h
       inc si
       dec dx
       cmp si,5  
       jne pe3
       add dx,5 
        
       mov si,0
       
pe4:  add cx,12 
      add dx,3
      mov ah,0ch
      mov al,0fh
      int 10h 
      dec cx
      inc dx
      int 10h
      dec cx
      dec dx
      int 10h
      sub cx,10
      sub dx,3
        mov posx2,cx
        mov posy2,dx
        mov check,0
        mov al,checks                  
        cmp al,1             
        je spacen   
        
        mov al,checks
        cmp al,2
        je spacen2
        
        
         jmp start
         
          
pel:   mov lword,al
       mov al,checke 
        cmp al,1             
        je pe 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov al,check
        cmp al,0
        jne peln
        sub cx,2
peln:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

pel1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne pel1
       add dx,5 
       mov si,0   
                 
                 
                 
pel2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne pel2 
       mov si,0 
       
       
pel3: add cx,8 
      add dx,3
      int 10h
      dec cx
      inc dx
      int 10h
      dec cx
      dec dx
      int 10h
      
      
      sub cx,6
      sub dx,3
      mov posx2,cx
      mov posy2,dx
      mov check,1
      mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

          
        
te:     mov lword,al     
                  
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
       
       
te1:   int 10h
       inc si
       dec dx 
       cmp si,5
       jne te1
       add dx,5 
       mov si,0 
         
te2:   int 10h
       inc si
       dec cx
       cmp si,25
       jne te2 
       mov si,0
       
te3:   int 10h
       inc si
       dec dx
       cmp si,5  
       jne te3
       add dx,5 
        
       mov si,0
       
te4:  add cx,12 
      sub dx,6
      mov ah,0ch
      mov al,0fh
      int 10h 
      dec cx
      dec cx
      int 10h
      sub cx,10
      add dx,6
        mov posx2,cx
        mov posy2,dx
        mov check,0
        mov al,checks                   
        cmp al,1             
        je spacen    
        
        mov al,checks
        cmp al,2
        je spacen2
        
        
         jmp start
         
          
tel:   mov lword,al
       mov al,checke 
        cmp al,1             
        je te 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov al,check
        cmp al,0
        jne teln
        sub cx,2
teln:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

tel1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne tel1
       add dx,5 
       mov si,0   
                 
                 
                 
tel2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne tel2 
       mov si,0 
       
       
tel3: add cx,8 
      sub dx,6
      int 10h
      dec cx
     
      dec cx
      
      int 10h
      
      
      sub cx,6
      add dx,6
      mov posx2,cx
      mov posy2,dx
      mov check,1
      mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

          
          
 
  
        
se:     mov lword,al     
                  
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
       
       
se1:   int 10h
       inc si
       dec dx 
       cmp si,5
       jne se1
       add dx,5 
       mov si,0 
         
se2:   int 10h
       inc si
       dec cx
       cmp si,25
       jne se2 
       mov si,0
       
se3:   int 10h
       inc si
       dec dx
       cmp si,5  
       jne se3
       add dx,5 
        
       mov si,0
       
se4:  add cx,12 
      sub dx,6
      mov ah,0ch
      mov al,0fh
      int 10h 
      dec cx
      dec dx
      int 10h
      dec cx
      inc dx
      int 10h
      sub cx,10
      add dx,6
        mov posx2,cx
        mov posy2,dx
        mov check,0
        mov al,checks                   
        cmp al,1             
        je spacen    
        
        mov al,checks
        cmp al,2
        je spacen2
        
        
         jmp start
         
          
sel:   mov lword,al
       mov al,checke 
        cmp al,1             
        je se 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov al,check
        cmp al,0
        jne seln
        sub cx,2
seln:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

sel1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sel1
       add dx,5 
       mov si,0   
                 
                 
                 
sel2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne sel2 
       mov si,0 
       
       
sel3: add cx,8 
      sub dx,6
      int 10h
      dec cx
      dec dx
      int 10h
      dec cx
      inc dx
      int 10h
      
      
      sub cx,6
      add dx,6
      mov posx2,cx
      mov posy2,dx
      mov check,1
      mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

          
     
 
 
          
          
jim:   
        mov lword,al
         mov al,checke 
        cmp al,1             
        je jimb

        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        mov al,check
        cmp al,0
        jne jimn
        sub cx,2
jimn:
        
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
jim1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne jim1 
       mov si,0                      
      
       
       
jim2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne jim2 
       mov si,0      
       
     
jim3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne jim3
       mov si,0
       add dx,2
       
jim4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne jim4
       mov si,0
       sub cx,10 
       
jim5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne jim5
       mov si,0
               
       
jim6: add cx,8 
      add dx,3
      int 10h
      sub cx,8
      sub dx,3
      mov posx2,cx
      mov posy2,dx
      mov check,1 
            mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2
        jmp start
      
      
      
        
        
        
        
        
        
        
        
        
jimb:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
jimb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne jimb1 
       mov si,0                      
      
       
       
jimb2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne jimb2 
       mov si,0      
       
     
jimb3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne jimb3
       mov si,0
       add dx,2
       
jimb4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne jimb4
       mov si,0
       sub cx,10 
       
jimb5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne jimb5
       mov si,0
               
       
jimb6: add cx,8 
      add dx,3
      int 10h
      sub cx,8
      sub dx,3
      mov posx2,cx
      mov posy2,dx ;
       
        
jimb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne jimb7
      mov si,0
      
jimb8:int 10h
      inc si
      inc cx
      cmp si,14
      jne jimb8
      mov si,0
      mov check,0
            mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2
        jmp start

                     
      
      
      
            
  
 
    
       
  
  
che:    
        mov lword,al
         mov al,checke 
        cmp al,1             
        je cheb


        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        mov al,check
        cmp al,0
        jne chen
        sub cx,2
chen:
        
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
che1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne che1 
       mov si,0                      
      
       
       
che2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne che2 
       mov si,0      
       
     
che3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne che3
       mov si,0
       add dx,2
       
che4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne che4
       mov si,0
       sub cx,10 
       
che5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne che5
       mov si,0
               
       
che6: add cx,8 
      add dx,3
      int 10h
      inc cx
      inc dx
      int 10h
      inc cx
      dec dx
      int 10h
      
      sub cx,10
      sub dx,3
      mov posx2,cx
      mov posy2,dx
      mov check,1 
      
      
                   mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2
      
        
      jmp start  
        
        
        
        
        
        
        
cheb:   mov lword,al
         mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
cheb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne cheb1 
       mov si,0                      
      
       
       
cheb2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne cheb2 
       mov si,0      
       
     
cheb3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne cheb3
       mov si,0
       add dx,2
       
cheb4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne cheb4
       mov si,0
       sub cx,10 
       
cheb5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne cheb5
       mov si,0
               
       
cheb6: add cx,8 
      add dx,3
      int 10h
      inc cx
      inc dx
      int 10h
      inc cx
      dec dx
      int 10h
      
      sub cx,10
      sub dx,3
      mov posx2,cx
      mov posy2,dx ;
       
        
cheb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne cheb7
      mov si,0
      
cheb8:int 10h
      inc si
      inc cx
      cmp si,14
      jne cheb8
      mov si,0
      mov check,0
      

                  mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2               
      
      
      
            
  
      jmp start

          
          
       
  
  
hej:    mov lword,al
         mov al,checke 
        cmp al,1             
        je hejb

        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        
                mov al,check
        cmp al,0
        jne hejn
        sub cx,2
hejn:
        
       
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
hej1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne hej1 
       mov si,0                      
      
       
       
hej2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne hej2 
       mov si,0      
       
     
hej3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne hej3
       mov si,0
       add dx,2
       
hej4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne hej4
       mov si,0
       sub cx,10 
       
hej5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne hej5
       mov si,0
               
       
hej6: 
      mov posx2,cx
      mov posy2,dx
      mov check,1 
      
      
               

                  mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2               
      
      
      
      
        
        
        jmp start
        
        
        
        
        
        
hejb:   mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
hejb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne hejb1 
       mov si,0                      
      
       
       
hejb2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne hejb2 
       mov si,0      
       
     
hejb3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne hejb3
       mov si,0
       add dx,2
       
hejb4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne hejb4
       mov si,0
       sub cx,10 
       
hejb5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne hejb5
       mov si,0
               
       
hejb6:
      mov posx2,cx
      mov posy2,dx ;
       
        
hejb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne hejb7
      mov si,0
      
hejb8:int 10h
      inc si
      inc cx
      cmp si,14
      jne hejb8
      mov si,0
      mov check,0
      
             

                  mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2               
      
      
      
                     
      
      jmp start     
          
         
          
khe:   
        mov lword,al
         mov al,checke 
        cmp al,1             
        je kheb

        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        mov al,check
        cmp al,0
        jne khen
        sub cx,2
khen:
        
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
khe1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne khe1 
       mov si,0                      
      
       
       
khe2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne khe2 
       mov si,0      
       
     
khe3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne khe3
       mov si,0
       add dx,2
       
khe4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne khe4
       mov si,0
       sub cx,10 
       
khe5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne khe5
       mov si,0
               
       
khe6: add cx,8 
      sub dx,8
      int 10h
      sub cx,8
      add dx,8
      mov posx2,cx
      mov posy2,dx
      mov check,1 
            mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2
        jmp start
      
      
      
        
        
        
        
        
        
        
        
        
kheb:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
           
kheb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne kheb1 
       mov si,0                      
      
       
       
kheb2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne kheb2 
       mov si,0      
       
     
kheb3:  int 10h
       inc si
       inc dx
       cmp si,3
       jne kheb3
       mov si,0
       add dx,2
       
kheb4:  int 10h
       inc si
       inc cx
       cmp si,10
       jne kheb4
       mov si,0
       sub cx,10 
       
kheb5:  int 10h
       inc si
       dec cx
       cmp si,3
       jne kheb5
       mov si,0
               
       
kheb6: add cx,8 
      sub dx,8
      int 10h
      sub cx,8
      add dx,8
      mov posx2,cx
      mov posy2,dx ;
       
        
kheb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne kheb7
      mov si,0
      
kheb8:int 10h
      inc si
      inc cx
      cmp si,14
      jne kheb8
      mov si,0
      mov check,0
            mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2
        jmp start

                     
      
            
 
 
 
 
          
       
dal:    mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        mov al,check
        cmp al,0
        jne daln
        sub cx,2
daln:
        
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

dal1:  int 10h
       inc si
       dec dx
       dec cx 
       cmp si,5
       jne dal1
       add dx,5
       add cx,5 
       mov si,0 
       
       
dal2:int 10h
     inc si
     inc dx
     dec cx
     cmp si,5
     jne dal2
     sub dx,5
     mov si,0
       
                 
   
 
                 

       
       
dal3: mov posx2,cx
      mov posy2,dx
      mov check,0 
            
           
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
    
        

     
      jmp start
 
 
 
       
zal:    mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
         mov al,check
        cmp al,0
        jne zaln
        sub cx,2
zaln:
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

zal1:  int 10h
       inc si
       dec dx
       dec cx 
       cmp si,5
       jne zal1
       add dx,5
       add cx,5 
       mov si,0 
       
       
zal2:int 10h
     inc si
     inc dx
     dec cx
     cmp si,5
     jne zal2
     sub dx,5
     mov si,0
       
                 
   
zal22:
        sub dx,8
        int 10h
        add dx,8 
                 

       
       
zal3: mov posx2,cx
      mov posy2,dx
      mov check,0 
            
                mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
    
              
          
     jmp start     
          
re:     mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
         mov al,check
        cmp al,0
        jne ren
        sub cx,2
ren:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
re4:  int 10h
       inc si
       inc dx
       cmp si,7
       jne re4
       mov si,0
         
re5:int 10h
     inc si
     dec cx
     cmp si,5
     jne re5
     mov si,0
     sub dx,7 
      
                      
       
re7:  inc cx
       mov posx2,cx
       mov posy2,dx
       mov check,0 
      
      mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
     
     jmp start  
       

          
         
ze:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        
        mov al,check
        cmp al,0
        jne zen
        sub cx,2
zen:
        
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
ze4:  int 10h
       inc si
       inc dx
       cmp si,7
       jne ze4
       mov si,0
         
ze5:int 10h
     inc si
     dec cx
     cmp si,5
     jne ze5
     mov si,0
     sub dx,7 
      
ze6:
        add cx,5
        sub dx,3
        int 10h
        sub cx,5
        add dx,3                      
       
ze7:  inc cx
       mov posx2,cx
       mov posy2,dx
       mov check,0 
      
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       
       
         
     jmp start    
         
         
          
         
         
         
zhe:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
                
        mov al,check
        cmp al,0
        jne zhen
        sub cx,2
zhen:
       
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
zhe4:  int 10h
       inc si
       inc dx
       cmp si,7
       jne zhe4
       mov si,0
         
zhe5:int 10h
     inc si
     dec cx
     cmp si,5
     jne zhe5
     mov si,0
     sub dx,7 
      
zhe6:
        add cx,6
        sub dx,3
        int 10h
        dec cx
        dec dx
        int 10h
        dec cx
        inc dx
        int 10h
        
        sub cx,4
        add dx,3                      
       
zhe7:  inc cx
       mov posx2,cx
       mov posy2,dx
       mov check,0 
      mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       
       
      
       
       
      jmp start   
         
         
             
         
      
sin:    mov lword,al
          mov al,checke 
        cmp al,1             
        je sinb

        mov si,0 
        mov cx,posx2
        mov dx,posy2
         mov al,check
        cmp al,0
        jne sinn
        sub cx,2
sinn:
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

sin1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sin1
       add dx,5 
       mov si,0   
                 
                 
                 
sin2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sin2 
       mov si,0  
       
       
       
       
sin3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sin3
       add dx,5 
       mov si,0   
                 
                 
                 
sin4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sin4 
       mov si,0
       
       
       
       
       
sin5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sin5
       add dx,5 
       mov si,0   
                 
                 
                 
sin6:  int 10h
       inc si
       dec cx
       cmp si,7
       jne sin6 
       mov si,0
       
       
       
sin7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
        mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
     
            
 sinb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

sinb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sinb1
       add dx,5 
       mov si,0   
                 
                 
                 
sinb2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sinb2 
       mov si,0  
       
       
       
       
sinb3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sinb3
       add dx,5 
       mov si,0   
                 
                 
                 
sinb4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sinb4 
       mov si,0
       
       
       
       
       
sinb5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sinb5
       add dx,5 
       mov si,0   
                 
                 
                 
sinb6:int 10h
      inc si
      inc dx
      cmp si,10
      jne sinb6
      mov si,0 
    
sinb7:int 10h
      inc si
      dec cx
      cmp si,15
      jne sinb7
      mov si,0
       
sinb8:int 10h
      inc si
      dec dx
      cmp si,10
      jne sinb8
      mov si,0
       
       
       
sinb9: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start      
          
     
       
shin:    mov lword,al
          mov al,checke 
        cmp al,1             
        je shinb

        mov si,0 
        mov cx,posx2
        mov dx,posy2 
        
             mov al,check
        cmp al,0
        jne shinn
        sub cx,2
shinn:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

shin1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne shin1
       add dx,5 
       mov si,0   
                 
                 
                 
shin2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne shin2 
       mov si,0  
       
       
       
       
shin3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne shin3
       add dx,5 
       mov si,0   
                 
                 
                 
shin4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne shin4 
       mov si,0
       
       
       
       
       
shin5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne shin5
       add dx,5 
       mov si,0   
shin55:
        add cx,7
        sub dx,7
         int 10h
         dec cx
         dec dx
         int 10h
         dec cx
         inc dx
         int 10h
         sub cx,5
         add dx,7
                 
                 
                 
shin6:  int 10h
       inc si
       dec cx
       cmp si,7
       jne shin6 
       mov si,0
       
       
       
shin7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start      
       
      
       
     
            
 shinb: mov lword,al  
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

shinb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne shinb1
       add dx,5 
       mov si,0   
                 
                 
                 
shinb2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne shinb2 
       mov si,0  
       
       
       
       
shinb3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne shinb3
       add dx,5 
       mov si,0   
                 
                 
                 
shinb4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne shinb4 
       mov si,0
       
       
       
       
       
shinb5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne shinb5
       add dx,5 
       mov si,0   
shin55b:
        add cx,7
        sub dx,7
         int 10h
         dec cx
         dec dx
         int 10h
         dec cx
         inc dx
         int 10h
         sub cx,5
         add dx,7


                 
                 
                 
shinb6:int 10h
      inc si
      inc dx
      cmp si,10
      jne shinb6
      mov si,0 
    
shinb7:int 10h
      inc si
      dec cx
      cmp si,15
      jne shinb7
      mov si,0
       
shinb8:int 10h
      inc si
      dec dx
      cmp si,10
      jne shinb8
      mov si,0
       
       
       
shinb9: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
            
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start      
             
            
sad:    mov lword,al
          mov al,checke 
        cmp al,1             
        je sadb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
             mov al,check
        cmp al,0
        jne sadn
        sub cx,2
sadn:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

sad1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sad1
       add dx,5 
       mov si,0   
                 
                 
                 
sad2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sad2 
       mov si,0  
       
       
       
       
sad3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sad3 
       mov si,0
       
       
       
       
       
       
sad33: int 10h
       inc si
       inc cx
       cmp si,6
       jne sad33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
sad4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sad4 
       mov si,0
       
       
       
       
       
sad5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sad5
       add dx,5 
       mov si,0   
                 
                 
                 
sad6:  int 10h
       inc si
       dec cx
       cmp si,7
       jne sad6 
       mov si,0
       
       
       
sad7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
         
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start       
            
            
            
            
            
            
            
            
            
            
            
sadb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

sadb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sadb1
       add dx,5 
       mov si,0   
                 
                 
                 
sadb2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sadb2 
       mov si,0  
       
       
       
       
sadb3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sadb3 
       mov si,0 
       
       
       
       
       
sadb33: int 10h
       inc si
       inc cx
       cmp si,6
       jne sadb33
       sub cx,6
       mov si,0   
       add dx,5  
                 
                 
                 
sadb4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne sadb4 
       mov si,0
       
       
       
       
       
sadb5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne sadb5
       add dx,5 
       mov si,0   
                 
                 
                 
sadb6:int 10h
      inc si
      inc dx
      cmp si,10
      jne sadb6
      mov si,0 
    
sadb7:int 10h
      inc si
      dec cx
      cmp si,15
      jne sadb7
      mov si,0
       
sadb8:int 10h
      inc si
      dec dx
      cmp si,10
      jne sadb8
      mov si,0
       
       
       
sadb9: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
            
              
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start       
      
      
       
zad:   mov lword,al
         mov al,checke 
        cmp al,1             
        je zadb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
           
             mov al,check
        cmp al,0
        jne zadn
        sub cx,2
zadn:
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

zad1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne zad1
       add dx,5 
       mov si,0   
                 
                 
                 
zad2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne zad2 
       mov si,0  
       
       
       
       
zad3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne zad3 
       mov si,0
       
       
       
       
       
       
zad33: int 10h
       inc si
       inc cx
       cmp si,6
       jne zad33
       sub cx,6
       mov si,0   
       add dx,5          
                 
zad333:
        add cx,3
        sub dx,8
        int 10h
        sub cx,3
        add dx,8



                 
zad4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne zad4 
       mov si,0
       
       
       
       
       
zad5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne zad5
       add dx,5 
       mov si,0   
                 
                 
                 
zad6:  int 10h
       inc si
       dec cx
       cmp si,7
       jne zad6 
       mov si,0
       
       
       
zad7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
      
               
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start  
       
       
            
            
            
            
            
            
            
            
            
            
            
            
zadb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

zadb1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne zadb1
       add dx,5 
       mov si,0   
                 
                 
                 
zadb2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne zadb2 
       mov si,0  
       
       
       
       
zadb3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne zadb3 
       mov si,0 
       
       
       
       
zadb33: int 10h
       inc si
       inc cx
       cmp si,6
       jne zadb33
       sub cx,6
       mov si,0   
       add dx,5  
                 
zad333b:
        add cx,3
        sub dx,8
        int 10h
        sub cx,3
        add dx,8



                 
zadb4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne zadb4 
       mov si,0
       
       
       
       
       
zadb5:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne zadb5
       add dx,5 
       mov si,0   
                 
                 
                 
zadb6:int 10h
      inc si
      inc dx
      cmp si,10
      jne zadb6
      mov si,0 
    
zadb7:int 10h
      inc si
      dec cx
      cmp si,15
      jne zadb7
      mov si,0
       
zadb8:int 10h
      inc si
      dec dx
      cmp si,10
      jne zadb8
      mov si,0
       
       
       
zadb9: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
            
            
              
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start         
            
   
        
       
ta:    mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
                mov al,check
        cmp al,0
        jne tan
        sub cx,2
tan:
       
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

ta1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ta1
       add dx,5 
       mov si,0   
                 
                 
                 
ta2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ta2 
       mov si,0  
       
       
       
       
ta3:  int 10h
       inc si
       dec dx 
       cmp si,20
       jne ta3 
       mov si,0
       
       add dx,15
       
       
       
       
ta33: int 10h
       inc si
       inc cx
       cmp si,6
       jne ta33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
ta4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ta4 
       mov si,0
                 

       
       
       
ta7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
      
        mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start         
             

       
za:    mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
                mov al,check
        cmp al,0
        jne zan
        sub cx,2
zan:
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

za1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne za1
       add dx,5 
       mov si,0   
                 
                 
                 
za2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne za2 
       mov si,0  
       
       
       
       
za3:  int 10h
       inc si
       dec dx 
       cmp si,20
       jne za3 
       mov si,0
       
       add dx,15
       
       
       
       
za33: int 10h
       inc si
       inc cx
       cmp si,6
       jne za33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
za4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne za4 
       mov si,0
         
                 
za5:
        add cx,8
        sub dx,8
        int 10h
        sub cx,8
        add dx,8
                         

       
       
       
za7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
        mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
         
       
eina:  mov lword,al
         mov al,check
        cmp al,0
        je ein
        
         
        mov al,checke 
        cmp al,1             
        je einb 
 

        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
                 
eina2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne eina2 
       mov si,0  
       
       
       
       
eina3:  int 10h
       inc si
       dec dx
       inc cx 
       cmp si,4
       jne eina3 
       mov si,0
       
       
       
       
        
                 
                 
eina4:  int 10h
       inc si
       dec cx
       cmp si,8
       jne eina4 
       mov si,0
                 
                 
                 
                 
                 
eina44: int 10h
       inc si
       inc cx
       inc dx
       cmp si,4
       jne eina44 
       mov si,0 
       
       
       
eina22: int 10h
       inc si
       dec cx
       cmp si,7
       jne eina22 
       mov si,0        
                          
                 
    
       
       
eina7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     
   
      
      
       
       
ein:    mov al,checke 
        cmp al,1             
        je eine
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        sub cx,2
        mov ah,0ch        
        mov al,color
      
 
                 
                 
ein2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ein2 
       mov si,0  
       
       
       
       
ein3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ein3 
       mov si,0
       
       
       
       
       
       
ein33: int 10h
       inc si
       inc cx
       cmp si,6
       jne ein33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
ein4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ein4 
       mov si,0
         
                 

       
ein7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1
        
      
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

            
           
    
    
einb:   mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
                 
ein2b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ein2b 
       mov si,0  
       
       
       
       
ein3b:  int 10h
       inc si
       dec dx
       inc cx 
       cmp si,4
       jne ein3b 
       mov si,0
       
       
       
       
        
                 
                 
ein4b:  int 10h
       inc si
       dec cx
       cmp si,8
       jne ein4b 
       mov si,0
                 
                 
                 
                 
                 
ein44b: int 10h
       inc si
       inc cx
       inc dx
       cmp si,4
       jne ein44b 
       mov si,0 
       
       
       
ein22b: int 10h
       inc si
       dec cx
       cmp si,7
       jne ein22b 
       mov si,0        
                          
                 

        
      mov posx2,cx
      mov posy2,dx
               

            
einb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne einb7
      mov si,0
           
      
einb8:int 10h
      inc si
      inc cx
      cmp si,10
      jne einb8
      mov si,0
      
      
           
       
       
ein7b:
      mov check,0   

      
         
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     
     
         
           
    
    
    
    
eine: 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
                 
eine2b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne eine2b
       mov si,0  
       
       
       
       
eine3b:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne eine3b 
       mov si,0
       
       
       
       
       
       
eine33b: int 10h
       inc si
       inc cx
       cmp si,6
       jne eine33b
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
eine4b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne eine4b 
       mov si,0 
       mov posx2,cx
       mov posy2,dx 

         
   
      
                 
           
eineb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne eineb7
      mov si,0
           
      
eineb8:int 10h
      inc si
      inc cx
      cmp si,10
      jne eineb8
      mov si,0
      
      
       
       
eine7b: 
      mov check,0
       
      
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     


    
         
       
gheina:  mov lword,al
         mov al,check
        cmp al,0
        je ghein
        
         
        mov al,checke 
        cmp al,1             
        je gheinb 
 

        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
                 
gheina2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne gheina2 
       mov si,0  
       
       
       
       
gheina3:  int 10h
       inc si
       dec dx
       inc cx 
       cmp si,4
       jne gheina3 
       mov si,0
       
       
       
       
        
                 
                 
gheina4:  int 10h
       inc si
       dec cx
       cmp si,8
       jne gheina4 
       mov si,0
                 
                 
                 
                 
                 
gheina44: int 10h
       inc si
       inc cx
       inc dx
       cmp si,4
       jne gheina44 
       mov si,0 
       
       
       
gheina22: int 10h
       inc si
       dec cx
       cmp si,7
       jne gheina22 
       mov si,0        
                          
                 
gheina5:
        add cx,7
        sub dx,8
        int 10h
        sub cx,7
        add dx,8
                         
                 
    
       
       
gheina7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     
   
      
      
       
       
ghein:    mov al,checke 
        cmp al,1             
        je gheine
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        sub cx,2
        mov ah,0ch        
        mov al,color
      
 
                 
                 
ghein2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ghein2 
       mov si,0  
       
       
       
       
ghein3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ghein3 
       mov si,0
       
       
       
       
       
       
ghein33: int 10h
       inc si
       inc cx
       cmp si,6
       jne ghein33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
ghein4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ghein4 
       mov si,0
         
ghein5:
        add cx,8
        sub dx,8
        int 10h
        sub cx,8
        add dx,8                 

       
ghein7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1
        
      
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

            
           
    
    
gheinb:   mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
                 
ghein2b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ghein2b 
       mov si,0  
       
       
       
       
ghein3b:  int 10h
       inc si
       dec dx
       inc cx 
       cmp si,4
       jne ghein3b 
       mov si,0
       
       
       
       
        
                 
                 
ghein4b:  int 10h
       inc si
       dec cx
       cmp si,8
       jne ghein4b 
       mov si,0
                 
                 
                 
                 
                 
ghein44b: int 10h
       inc si
       inc cx
       inc dx
       cmp si,4
       jne ghein44b 
       mov si,0 
       
       
       
ghein22b: int 10h
       inc si
       dec cx
       cmp si,7
       jne ghein22b 
       mov si,0        
ghein5b:
        add cx,7
        sub dx,8
        int 10h
        sub cx,7
        add dx,8                         
                 

      mov posx2,cx
      mov posy2,dx
               

            
gheinb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne gheinb7
      mov si,0
           
      
gheinb8:int 10h
      inc si
      inc cx
      cmp si,10
      jne gheinb8
      mov si,0
      
      
           
       
       
ghein7b:
      mov check,0   

      
         
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     
     
         
           
    
    
    
    
gheine: 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      
 
                 
                 
gheine2b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne gheine2b
       mov si,0  
       
       
       
       
gheine3b:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne gheine3b 
       mov si,0
       
       
       
       
       
       
gheine33b: int 10h
       inc si
       inc cx
       cmp si,6
       jne gheine33b
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
gheine4b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne gheine4b 
       mov si,0 
       mov posx2,cx
       mov posy2,dx 

         
gheine5b:
        add cx,8
        sub dx,8
        int 10h
        sub cx,8
        add dx,8
                   
      
                 
           
gheineb7:int 10h
      inc si
      inc dx
      cmp si,7
      jne gheineb7
      mov si,0
           
      
gheineb8:int 10h
      inc si
      inc cx
      cmp si,10
      jne gheineb8
      mov si,0
      
      
       
       
gheine7b: 
      mov check,0
       
      
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     


    

 
              
       
 



       
fe:    mov lword,al
        mov al,checke 
        cmp al,1             
        je feb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
        mov al,check
        cmp al,0
        jne fen
        sub cx,2
fen:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

fe1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne fe1
       add dx,5 
       mov si,0   
                 
                 
                 
fe2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne fe2 
       mov si,0  
       
       
       
       
fe3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne fe3 
       mov si,0
       
       
       
       
       
       
fe33: int 10h
       inc si
       inc cx
       cmp si,6
       jne fe33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
fe4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne fe4 
       mov si,0
         
                 
fe5:
        add cx,8
        sub dx,8
        int 10h
        sub cx,8
        add dx,8
                         

       
       
       
fe7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
         mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
      
       
       
            
            
            
            
            
            
            
            
            
            
            
            
feb:   mov lword,al
        
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

feb1: int 10h
       inc si
       dec dx 
       cmp si,5
       jne feb1
       add dx,5 
       mov si,0   
                 
                 
                 
feb2: int 10h
       inc si
       dec cx
       cmp si,5
       jne feb2 
       mov si,0  
       
       
       
       
feb3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne feb3 
       mov si,0 
       
       
       
       
       
feb33: int 10h
       inc si
       inc cx
       cmp si,6
       jne feb33
       sub cx,6
       mov si,0   
       add dx,5           
                 
                 

    
feb7:int 10h
      inc si
      dec cx
      cmp si,15
      jne feb7
      mov si,0
       
feb8:int 10h
      inc si
      dec dx
      cmp si,5
      jne feb8
      mov si,0
      add dx,5 
      
      
      
      
feb5:
        add cx,18
        sub dx,8
        int 10h
        sub cx,18
        add dx,8      
       
       
feb9: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
            
            
         mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
           
            
  


       
      
       
ghaf:  mov lword,al
        mov al,checke 
        cmp al,1             
        je ghafb 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
            
        mov al,check
        cmp al,0
        jne ghafn
        sub cx,2
ghafn:
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

ghaf1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ghaf1
       add dx,5 
       mov si,0   
                 
                 
                 
ghaf2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ghaf2 
       mov si,0  
       
       
       
       
ghaf3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ghaf3 
       mov si,0
       
       
       
       
       
       
ghaf33: int 10h
       inc si
       inc cx
       cmp si,6
       jne ghaf33
       sub cx,6
       mov si,0   
       add dx,5          
                 
                 
ghaf4:  int 10h
       inc si
       dec cx
       cmp si,5
       jne ghaf4 
       mov si,0
         
                 
ghaf5:
        add cx,8
        sub dx,8
        int 10h 
        sub cx,2
        int 10h
        sub cx,6
        add dx,8
                         

       
       
       
ghaf7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
      
      
         mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start 
       
            
            
            
            
            
            
            
            
            
            
            
            
ghafb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

ghafb1: int 10h
       inc si
       dec dx 
       cmp si,5
       jne ghafb1
       add dx,5 
       mov si,0   
                 
                 
ghafb2: int 10h
       inc si
       dec cx
       cmp si,5
       jne ghafb2 
       mov si,0  
       
       
       
       
ghafb3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ghafb3 
       mov si,0 
       
       
       
       
       
ghafb33: int 10h
       inc si
       inc cx
       cmp si,6
       jne ghafb33
       sub cx,6
       mov si,0   
       add dx,5           
                 
                 

    
ghafb7:int 10h
      inc si
      dec cx
      cmp si,15
      jne ghafb7
      mov si,0
       
ghafb8:int 10h
      inc si
      dec dx
      cmp si,5
      jne ghafb8
      mov si,0
      add dx,5 
      
      
      
      
ghafb5:
        add cx,18
        sub dx,8
        int 10h
        sub cx,2
        int 10h
        sub cx,16
        add dx,8      
       
       
ghafb9: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
            
            
         mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start      
            
            
        
       
kaf:    mov lword,al
        mov al,checke 
        cmp al,1             
        je kafb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
                
        mov al,check
        cmp al,0
        jne kafn
        sub cx,2
kafn:
      
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

kaf1:  int 10h
       inc si
       dec dx
       dec cx 
       cmp si,10
       jne kaf1
       add dx,10
       add cx,10 
       mov si,0   
                 
                 
                 
kaf2:  int 10h
       inc si
       dec cx
       cmp si,15
       jne kaf2 
       mov si,0 
       mov posx2,cx
       mov posy2,dx
       add cx,5
       sub dx,10
kaf22: int 10h
       inc si
       inc cx
       cmp si,8
       jne kaf22 
       mov si,0 
             
        mov cx,posx2
        mov dx,posy2
       
kaf3: 
      mov check,1 
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start      
      
      
      
      
        
      
kafb:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

kafb1:  int 10h
       inc si
       dec dx
       dec cx 
       cmp si,10
       jne kafb1
       add dx,10
       add cx,10 
       mov si,0   
                 
                 
                 
kafb2:  int 10h
       inc si
       dec cx
       cmp si,15
       jne kafb2 
       mov si,0 
       mov posx2,cx
       mov posy2,dx
       add cx,5
       sub dx,10
kafb22: int 10h
       inc si
       inc cx
       cmp si,8
       jne kafb22 
       mov si,0 
             
        mov cx,posx2
        mov dx,posy2
        
        
kafbb2:  int 10h
       inc si
       dec cx
       cmp si,7
       jne kafbb2 
       mov si,0 
kafbc2:  int 10h
       inc si
       dec dx
       cmp si,5
       jne kafbc2 
       mov si,0                
       add dx,5
       
        
        
        
       
kafb3:
       mov posx2,cx
       mov posy2,dx 
       mov check,0 
            mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start      
      
      
  
        
    
       
gaf:    mov lword,al
        mov al,checke 
        cmp al,1             
        je gafb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
                   
        mov al,check
        cmp al,0
        jne gafn
        sub cx,2
gafn:
      
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

gaf1:  int 10h
       inc si
       dec dx
       dec cx 
       cmp si,10
       jne gaf1
       add dx,10
       add cx,10 
       mov si,0   
                 
                 
                 
gaf2:  int 10h
       inc si
       dec cx
       cmp si,15
       jne gaf2 
       mov si,0 
       mov posx2,cx
       mov posy2,dx
       add cx,5
       sub dx,10
gaf22: int 10h
       inc si
       inc cx
       cmp si,8
       jne gaf22 
       mov si,0 
       
       sub dx,2
       sub cx,6
       
gaf222:int 10h
       inc si
       inc cx
       cmp si,6
       jne gaf222 
       mov si,0
             
gaf3: 
      mov check,1 
            mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
      
      
        
      
gafb:   mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

gafb1:  int 10h
       inc si
       dec dx
       dec cx 
       cmp si,10
       jne gafb1
       add dx,10
       add cx,10 
       mov si,0   
                 
                 
                 
gaf2b:  int 10h
       inc si
       dec cx
       cmp si,15
       jne gaf2b 
       mov si,0 
       mov posx2,cx
       mov posy2,dx
       add cx,5
       sub dx,10
       

       
       
       
gaf22b: int 10h
       inc si
       inc cx
       cmp si,8
       jne gaf22b 
       mov si,0 
       
       
       sub dx,2
       sub cx,6

gaf222b:int 10h
       inc si
       inc cx
       cmp si,6
       jne gaf222b 
       mov si,0
       
       


             
        mov cx,posx2
        mov dx,posy2
        
        
gaf2bb:  int 10h
       inc si
       dec cx
       cmp si,7
       jne gaf2bb 
       mov si,0 
gaf2bc:  int 10h
       inc si
       dec dx
       cmp si,5
       jne gaf2bc 
       mov si,0                
       add dx,5
       
        
        
        
       
gaf3b:
       mov posx2,cx
       mov posy2,dx 
       mov check,0 
         mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
      
         
       
lam:    mov lword,al
        mov al,checke 
        cmp al,1             
        je lamb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
                        
        mov al,check
        cmp al,0
        jne lamn
        sub cx,2
lamn:
      
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

lam1:  int 10h
       inc si
       dec dx 
       cmp si,20
       jne lam1
       add dx,20 
       mov si,0   
                 
                 
                 
lam2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne lam2 
       mov si,0 
       
       
lam3: mov posx2,cx
      mov posy2,dx
      mov check,1 
      
          mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
      
      
      
        
      
          
         
         
         
lamb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
        
     
lamb3:int 10h
     inc si
     dec dx
     cmp si,20
     jne lamb3
     mov si,0
     add dx,20
            
lamb5:int 10h
     inc si
     inc dx
     cmp si,10
     jne lamb5
     mov si,0
     
lamb6:int 10h
     inc si
     dec cx
     cmp si,10
     jne lamb6
     mov si,0
     
lamb7:int 10h
     inc si
     dec dx
     cmp si,10
     jne lamb7
     mov si,0
     
lamb8: mov posx2,cx
      mov posy2,dx
      mov check,0
      
      
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
                 
              
           
         
         
mim:    mov lword,al
        mov al,checke 
        cmp al,1             
        je mimb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
                              
        mov al,check
        cmp al,0
        jne mimn
        sub cx,2
mimn:
      
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

mim1:  int 10h
       inc si
       inc dx 
       cmp si,5
       jne mim1
       mov si,0   
                 
                 
                 
mim2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne mim2 
       mov si,0  
       
       
       
       
mim3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne mim3 
       mov si,0
       
       
       
       
       
       
mim33: int 10h
       inc si
       inc cx
       cmp si,6
       jne mim33
       sub cx,6
       mov si,0   
                 
                 
                 
mim4:  int 10h
       inc si
       dec cx
       cmp si,10
       jne mim4 
       mov si,0
         
 
       
       
mim7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1   
      
      
       
        
           mov al,checks     
      cmp al,1                 
      je spacen                   
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
         
         
         
         
         
         
         
         
         
      
       
mimb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

mim1b:  int 10h
       inc si
       inc dx 
       cmp si,5
       jne mim1b
       mov si,0   
                 
                 
                 
mim2b:  int 10h
       inc si
       dec cx
       cmp si,5
       jne mim2b 
       mov si,0 
       
       
       
       
mim3b:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne mim3b 
       mov si,0
       
       
       
       
       
       
mim33b: int 10h
       inc si
       inc cx
       cmp si,6
       jne mim33b
       sub cx,6
       mov si,0   
                 
                 
                 
mim4b:  int 10h
       inc si
       dec cx
       cmp si,10
       jne mim4b 
       mov si,0
         

mim44b:int 10h
      inc si
      inc dx
      cmp si,20
      jne mim44b
      mov si,0
      sub dx,20
            
       
       
mim7b: 
      mov posx2,cx
      mov posy2,dx
      mov check,0   
      
        
           mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
        
       
       
            
        
noon:   mov lword,al
        mov al,checke 
        cmp al,1             
        je noonb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
                                   
        mov al,check
        cmp al,0
        jne noonn
        sub cx,2
noonn:
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

noon1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne noon1
       add dx,5 
       mov si,0   
                 
                 
                 
noon2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne noon2 
       mov si,0 
       
       
noon3: add cx,8 
      sub dx,9
      int 10h
      sub cx,8
      add dx,9
      mov posx2,cx
      mov posy2,dx
      mov check,1   
           
           mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
        
     
      
      
       
noonb:  mov lword,al 
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color

noonb1:int 10h
    inc si
    inc dx
    cmp si,10
    jne noonb1
    mov si,0
    
noonb2:int 10h
    inc si
    dec cx
    cmp si,10
    jne noonb2
    mov si,0
    
noonb3:int 10h
    inc si
    dec dx
    cmp si,10
    jne noonb3
    mov si,0
    
    
noonb4:  add cx,5 
      int 10h
      sub cx,5
      mov posx2,cx
      mov posy2,dx
      mov check,0       
       
              
           
      mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
               
             
          
         
         
vav:    mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
                                  
        mov al,check
        cmp al,0
        jne vavn
        sub cx,2
vavn:
      
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

vav1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne vav1
       mov si,0   
                 
                 
                 
vav2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne vav2 
       mov si,0  
       
       
       
       
vav3:  int 10h
       inc si
       inc dx 
       cmp si,5
       jne vav3 
       mov si,0
       
       
       
       
       
       
vav33: int 10h
       inc si
       inc cx
       cmp si,5
       jne vav33
       sub cx,5
       mov si,0   
       mov posx2,cx
       mov posy2,dx        
       add cx,5          
                 
vav4:  int 10h
       inc si
       inc dx
       cmp si,5
       jne vav4 
       mov si,0
         
vav5:int 10h
     inc si
     dec cx
     cmp si,5
     jne vav5
     mov si,0
      
       
       
vav7: 
       mov check,0
 
                  
      mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
  
     
      
       
he:     mov lword,al
        mov al,checke 
        cmp al,1             
        je decideh
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov al,check
        cmp al,0
        jne hen
        sub cx,2
hen:
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

he1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne he1
       add dx,5 
       mov si,0   
                 
                 
                 
he2:  int 10h
       inc si
       dec cx
       cmp si,5
       jne he2 
       mov si,0  
       
       
       
       
he3:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne he3 
       mov si,0
       
       
       
       
       
       
he33: int 10h
       inc si
       inc cx
       cmp si,6
       jne he33
       sub cx,6
       mov si,0   
       add dx,5          
                 
he34:    int 10h
       inc si
       inc dx 
       cmp si,5
       jne he34 
       mov si,0
       
       
he23:   int 10h
       inc si
       inc cx 
       cmp si,5
       jne he23 
       mov si,0    
he43:    int 10h
       inc si
       dec dx 
       cmp si,5
       jne he43 
       mov si,0       
       sub cx,5
       
                 
he4:  int 10h
       inc si
       dec cx
       cmp si,7
       jne he4 
       mov si,0
         
                 
       
he7: 
      mov posx2,cx
      mov posy2,dx
      mov check,1 
      
      
     
          mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

  
      
      
      
het:   
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

he1t:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne he1t
       add dx,5 
       mov si,0   
                 
                 
                 
he2t:  int 10h
       inc si
       dec cx
       cmp si,5
       jne he2t 
       mov si,0  
       
       
       
       
he3t:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne he3t 
       mov si,0
       
       
       
he33t:int 10h
       inc si
       inc cx
       cmp si,6
       jne he33t
       sub cx,6
       mov si,0   
       add dx,5  
        
he4t: mov posx2,cx
      mov posy2,dx
      mov check,0      
       
          mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

      
            
      
heb:   
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color            
   

he4b:  int 10h
       inc si
       dec cx
       cmp si,7
       jne he4b 
       mov si,0
         
                 
hebb:int 10h
    inc si
    dec dx
    cmp si,8
    jne hebb
    mov si,0
    
heb22:int 10h
     inc si
     dec cx
     cmp si,5
     jne heb22
     mov si,0
     
heb33:int 10h
    inc si
    inc dx
    cmp si,5
    jne heb33
    mov si,0 
    
    
heb44:int 10h
     inc si
     inc cx
     cmp si,5
     jne heb44
     mov si,0
     sub cx,5
     add dx,3       
       
       
he7b: 
      mov posx2,cx
      mov posy2,dx
      mov check,0 
      
      
      
          mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2    
      
         
      jmp start     

 

           
decideh:mov al,check
        cmp al,1
        je heb
        jmp het              
            
            
       
ye:    mov lword,al
        mov al,checke 
        cmp al,1             
        je yeb
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        
           mov al,check
        cmp al,0
        jne yen
        sub cx,2
yen:
      
        
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color
      

ye1:  int 10h
       inc si
       dec dx 
       cmp si,5
       jne ye1
       add dx,5 
       mov si,0   
                 
                 
                 
ye2:  int 10h
       inc si
       dec cx
       cmp si,10
       jne ye2 
       mov si,0 
       
       
ye3: add cx,8 
      add dx,5
      int 10h 
      sub cx,2
      int 10h
      sub cx,6
      sub dx,5
      mov posx2,cx
      mov posy2,dx
      mov check,1 
      
                     
      mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
       
         
yeb:    mov lword,al
        mov si,0 
        mov cx,posx2
        mov dx,posy2
        mov posx1,cx
        mov posy1,dx
        mov ah,0ch        
        mov al,color 
        
yeb2:int 10h
     inc si 
     dec cx
     cmp si,7
     jne yeb2
     mov si,0
     
yeb3:int 10h
     inc si
     inc dx
     cmp si,5
     jne yeb3
     mov si,0
yeb4:int 10h
     inc si
     inc cx
     cmp si,7
     jne yeb4
     mov si,0
            
yeb5:int 10h
     inc si
     inc dx
     cmp si,10
     jne yeb5
     mov si,0
     
yeb6:int 10h
     inc si
     dec cx
     cmp si,18
     jne yeb6
     mov si,0
     
yeb7:int 10h
     inc si
     dec dx
     cmp si,15
     jne yeb7
     mov si,0
     
yeb8: mov posx2,cx
      mov posy2,dx
      mov check,0
      
      
                   
      mov al,checks     
      cmp al,1                 
      je spacen            
       mov al,checks      
        cmp al,2           
        je spacen2       
      
       jmp start
      
                    
              
         
    
quit:mov ax,4c00h
     int 21h
    
    
    
    main endp
end main