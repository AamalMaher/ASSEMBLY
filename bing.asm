.MODEL SMALL
.DATA 
MSG        DB  "*******************************************************************************                                HELLO TO BING ZONE                               ********************************************************************************"               ,"$"
START      DB  "ENTER 1 TO START ENCRYPTION :"   ,"$"
START2     DB  "OR ENTER 2 TO START DECRYPTION:" ,"$"
ENCRYPTION DB  "ENTER WORD TO ENCRYPT"           ,"$"
DECRYPTION DB  "ENTER BING CODE TO DECRYPT"   ,"$"
EXITMSG    DB  "2: TO EXIT SYSTEM "         ,"$"
NEW_START DB  "HELLO AGAIN TO BING"     ,"$"
LINE   DB 0AH        
LINNE  DB "                         ___YOU ARE ON BING ZONE NOW___                                   " ,"$"

ONE    DB ?
TWO    DB ?
three  DB ?
FOUR   DB ?
FIVE   DB ?
SIX    DB ?
SEVEN  DB ? 
NUM1   DB ?
NUM2   DB ?
NUM3   DB ?
NUM4   DB ?
NUM5   DB ?
INPUT1 DB 0
INPUT2 DB 0
INPUT3 DB 0
INPUT4 DB 0
INPUT5 DB 0
RES1   DB 0
RES2   DB 0
RES3   DB 0
RES4   DB 0
RESULT1 DB "THE ENCRYPTION IS :" ,"$"
RESULT2 DB "THE DERYPTION IS :" ,"$"

BACK DB "1: BACK TO THE SYSTEM" ,"$"


;MAX_SIZE EQU 100
;STRING DB MAX_SIZE

.CODE

MAIN PROC FAR

.STARTUP   
 
LEA DX,MSG
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR
JMP MSGG

NNNNNNN:   ;LOOP TO FIRST

MOV DL,LINE
CALL PRINTCHAR

LEA DX,LINNE
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,NEW_START  ;LOGO AFTER LOOP
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

MSGG:
LEA DX,START       ; ENTER 1 TO START ENCRYPTION 
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,START2    ; OR ENTER 2 TO START DECRYPTION
MOV AH,09H
INT 21H


MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

MOV     AH,01H  ; READ ENCRYPT OR DECRYPT    
INT 21H


CMP AL,"1"
JE NEWSTART

JNE GO1          ;JUMP FOR DECRYPT

NEWSTART:
MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,LINNE   ;LOGO
MOV AH,09H
INT 21H


MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR


LEA DX,ENCRYPTION     ;ENTER WORD TO ENCRYPT
MOV AH,09H  
INT 21H

MOV DL,LINE
CALL PRINTCHAR

;   READ THE ENCRYPTION WORD

MOV     AH,01H 
INT     21H
MOV     ONE,AL

MOV     AH,01H
INT     21H
MOV     TWO,AL

MOV     AH,01H
INT     21H
MOV     three,AL

MOV     AH,01H
INT     21H
MOV     FOUR,AL

MOV     AH,01H
INT     21H
MOV     FIVE,AL

MOV     AH,01H
INT     21H
MOV     SIX,AL

MOV     AH,01H
INT     21H
MOV     SEVEN,AL

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

MOV DL,"0"
LEA DX,RESULT1   ; THE ENCRYPTION IS:
MOV AH,09H
INT 21H

JMP FIRST       ; FIRST ENCRYPT

GO1:      ; DECRYPTION MESSAGE

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,LINNE
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,DECRYPTION   ; ENTER BINJWON CODE TO DECRYPT 
MOV AH,09H
INT 21H
MOV DL,LINE
CALL PRINTCHAR


JMP GO2             ; MULTI JUMP FOR DECRYPTION PART

READY:              ;LOOP FOR ENCRYPT
CMP SI,7
JNE DID
JE SECOND


DID:
CMP SI,6
JE third
JNE GERMAN


GERMAN:
CMP SI,5
JE FOURTH1
JNE ITALIA


ITALIA:
CMP SI,4
JE  KILL
JNE MANSOURA

MANSOURA:
CMP SI,3
JE  KALI
JNE ELMAHALLA

ELMAHALLA:
CMP SI,2
JE  MX24
JNE OJJ

;MOV SI,ONE

FIRST:               ; FIRST LOOP
MOV BL,ONE
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
MOV SI,8


JMP START1

FOURTH1:
JMP FOURTH

SECOND:              ; SECOND LOOP
MOV BL,TWO
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
JMP START1

KILL:
JMP FIFTH


OJJ:
JMP TA3BT

KALI:
JMP SIXTH

third:              ; THIRD LOOP
MOV BL,three
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
JMP START1

MX24:
JMP SEVENTH

GO2:
JMP GO3

FOURTH:
MOV BL,FOUR
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
JMP START1


TA3BT:
JMP OS

FIFTH:
MOV BL,FIVE
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
JMP START1

NNNNNN:
JMP NNNNNNN

SIXTH:
MOV BL,SIX
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
JMP START1

SEVENTH:
MOV BL,SEVEN
MOV NUM1,BL
MOV NUM2,BL
MOV NUM3,BL
MOV NUM4,BL
MOV NUM5,BL
JMP START1

AK:
JMP READY

OS:
JMP OQ

START1:                         ; CHECK THE INPUT CHAR
 
CMP BL,'B'                 
JE  B        
             ;               *THE LIST OF EVERY CHAR ENCRYPRTION*                           
CMP BL,"A"                    
JE  A                       
                             ;B 10111
                             
CMP BL,"C"                  ;A 10111
JE  C 
                           ;C 11100
CMP BL,"D"
JE  D  
                          ;D 11110     
CMP BL,"E"
JE  E   
                         ;E  01111
                   
JNE GROUP1                            

A:

SUB NUM1,10H    ;      SPECIAL ENCRYPTION FOR EVERY CHAR
SUB NUM2,11H
SUB NUM3,10H
SUB NUM4,10H
SUB NUM5,10H
JMP PRINT

B:

SUB NUM1,11H
SUB NUM2,11H
SUB NUM3,12H
SUB NUM4,11H
SUB NUM5,11H
JMP PRINT

GO3:
JMP GO4

AI:
JMP AK

C:

SUB NUM1,12H
SUB NUM2,12H
SUB NUM3,12H
SUB NUM4,13H
SUB NUM5,12H
JMP PRINT


GROUP1:            ;  GROUP FOR EVERY FIVE CHARS TO AVOID "JUMP OUT OF RANGE' 
JMP GROUP2

D:

SUB NUM1,13H
SUB NUM2,13H
SUB NUM3,13H
SUB NUM4,13H
SUB NUM5,14H
JMP PRINT

OQ:
JMP OE

E:

SUB NUM1,15H
SUB NUM2,14H
SUB NUM3,14H
SUB NUM4,14H
SUB NUM5,14H
JMP PRINT

GROUP2:

CMP BL,"F"
JE  F                 ;F   11000

CMP BL,"G"           ;G    10011
JE  G
CMP BL,"H"           ;H    11001
JE  H
CMP BL,"I"          ;I    11100
JE  I  

JNE GROUP3

AO:
JMP AI


F:

SUB NUM1,15H
SUB NUM2,15H
SUB NUM3,16H
SUB NUM4,16H
SUB NUM5,16H
JMP PRINT

G:

SUB NUM1,16H
SUB NUM2,17H
SUB NUM3,17H
SUB NUM4,16H
SUB NUM5,16H
JMP PRINT

OE:
JMP OL

H:

SUB NUM1,17H
SUB NUM2,17H
SUB NUM3,18H
SUB NUM4,18H
SUB NUM5,17H
JMP PRINT


I:

SUB NUM1,25D
SUB NUM2,18H
SUB NUM3,18H
SUB NUM4,19H
SUB NUM5,19H
JMP PRINT

AW:
JMP AO

GO4:
JMP GO5

GROUP3:

CMP BL,"J"         ;J 10101
JE  J

CMP BL,"K"        ;K 01010
JE  K

CMP BL,"L"       ;L 00000
JE  L
CMP BL,"M"       ;M 00100
JE  M


JNE GROUP4

NNNNN:
JMP NNNNNN

J:

SUB NUM1,25D
SUB NUM2,26D
SUB NUM3,25D
SUB NUM4,26D
SUB NUM5,25D
JMP PRINT

K:

SUB NUM1,27D
SUB NUM2,26D
SUB NUM3,27D
SUB NUM4,26D
SUB NUM5,27D
JMP PRINT

AJJJ:
JMP AW

OL:
JMP OF

L:

SUB NUM1,28D
SUB NUM2,28D
SUB NUM3,28D
SUB NUM4,28D
SUB NUM5,28D
JMP PRINT

M:

SUB NUM1,29D
SUB NUM2,29D
SUB NUM3,28D
SUB NUM4,29D
SUB NUM5,29D
JMP PRINT



GROUP4:

CMP BL,"N"       ;L 01100
JE  N

CMP BL,"O"       ;O 11100
JE  O

CMP BL,"P"       ;P 00001
JE  P

CMP BL,"Q"       ;Q 00001 
JE  Q 


JNE GROUP5


N:

SUB NUM1,30D
SUB NUM2,29D
SUB NUM3,29D
SUB NUM4,30D
SUB NUM5,30D
JMP PRINT

AR:
JMP AJJJ

OF:
JMP OV

O:

SUB NUM1,30D
SUB NUM2,30D
SUB NUM3,30D
SUB NUM4,31D
SUB NUM5,31D
JMP PRINT

GO5:
JMP GO6

P:

SUB NUM1,32D
SUB NUM2,32D
SUB NUM3,32D
SUB NUM4,32D
SUB NUM5,31D
JMP PRINT

Q:

SUB NUM1,33D
SUB NUM2,33D
SUB NUM3,33D
SUB NUM4,33D
SUB NUM5,32D
JMP PRINT



GROUP5:

CMP BL,"R"    ;R  1111
JE  R
CMP BL,"S"    ;S  00010
JE  S

CMP BL,"T"    ;T  10000
JE  T

CMP BL,"U"    ;U 01000
JE  U

JNE GROUP6

AU:
JMP AR

R:

SUB NUM1,33D
SUB NUM2,33D
SUB NUM3,33D
SUB NUM4,33D
SUB NUM5,33D
JMP PRINT

S:

SUB NUM1,35D
SUB NUM2,35D
SUB NUM3,35D
SUB NUM4,34D
SUB NUM5,35D
JMP PRINT

OV:
JMP OK

T:
SUB NUM1,35D
SUB NUM2,36D
SUB NUM3,36D
SUB NUM4,36D
SUB NUM5,36D
JMP PRINT

U:

SUB NUM1,37D
SUB NUM2,36D
SUB NUM3,37D
SUB NUM4,37D
SUB NUM5,37D
JMP PRINT

AE:
JMP AU

GROUP6:

CMP BL,"V"    ;V 00111
JE  V
CMP BL,"W"    ;W 11001
JE  W
CMP BL,"X"    ;X 00110
JE  X
CMP BL,"Y"    ;Y 00101
JE  Y
CMP BL,"Z"   ;Z 00100
JE  Z

GO6:
JMP GO7

W:

SUB NUM1,38D
SUB NUM2,38D
SUB NUM3,39D
SUB NUM4,39D
SUB NUM5,38D
JMP PRINT

X:

SUB NUM1,40D
SUB NUM2,40D
SUB NUM3,39D
SUB NUM4,39D
SUB NUM5,40D
JMP PRINT

AS:
JMP AE

OK: JMP OW

Y:

SUB NUM1,41D
SUB NUM2,41D
SUB NUM3,40D
SUB NUM4,41D
SUB NUM5,40D
JMP PRINT

V:

SUB NUM1,38D
SUB NUM2,38D
SUB NUM3,37D
SUB NUM4,37D
SUB NUM5,37D
JMP PRINT

Z:

SUB NUM1,42D
SUB NUM2,42D
SUB NUM3,41D
SUB NUM4,42D
SUB NUM5,42D
JMP PRINT

AP:
JMP AS

NNNN:
JMP NNNNN

                 
PRINT:             ; PRINTT EVERY CHAR TO FIVE DIGITS

MOV DL,NUM1
MOV AH,02H
INT 21H

MOV DL,NUM2
MOV AH,02H
INT 21H

MOV DL,NUM3
MOV AH,02H
INT 21H

MOV DL,NUM4
MOV AH,02H
INT 21H

MOV DL,NUM5
MOV AH,02H
INT 21H


DEC SI
XOR DX,DX

JMP AP          ;LOOP FOR PRINT


;    FINISH ENCRYPTION AND SHOW BACK MESSAGE

OW:

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,LINNE
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR


LEA DX,BACK
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,EXITMSG
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H 

CMP AL,'1'
JE  NNNN


JNE EXIT1      ; JUMP IF USER CHOOSE EXIT BY SOME JUMPS
JE  AP


GO7:           ; START OF DECRYPTION I CHOOSED DECRYPT 4 DIGITS 

MOV CX,4
JMP AJJ

MO:
CMP CX,0
JE COR


CMP CX,3  
JMP BY
CMP CX,2
JE CT
JNE COR

;    READ DIGITS

AJJ:
MOV     AH,01H
INT     21H
MOV     INPUT1,AL


MOV     AH,01H
INT     21H
MOV     INPUT2,AL


MOV     AH,01H
INT     21H
MOV     INPUT3,AL

MOV     AH,01H
INT     21H
MOV     INPUT4,AL

MOV     AH,01H
INT     21H
MOV     INPUT5,AL
JMP STARTTT

EXIT1:
JMP EXIT

BY:                  ; SECOND 5 DIGITS
MOV     AH,01H
INT     21H
MOV     INPUT1,AL


MOV     AH,01H
INT     21H
MOV     INPUT2,AL


MOV     AH,01H
INT     21H
MOV     INPUT3,AL

MOV     AH,01H
INT     21H
MOV     INPUT4,AL

MOV     AH,01H
INT     21H
MOV     INPUT5,AL

JMP STARTTT

COR:
CMP CX,1
JE EJ

CMP CX,0
JE FIN1

CT:         ; THIRD FIVE DIGITS

MOV     AH,01H
INT     21H
MOV     INPUT1,AL


MOV     AH,01H
INT     21H
MOV     INPUT2,AL


MOV     AH,01H
INT     21H
MOV     INPUT3,AL

MOV     AH,01H
INT     21H
MOV     INPUT4,AL

MOV     AH,01H
INT     21H
MOV     INPUT5,AL

JMP STARTTT



EJ:         ; FOURTH FIVE DIGITS

MOV     AH,01H
INT     21H
MOV     INPUT1,AL


MOV     AH,01H
INT     21H
MOV     INPUT2,AL


MOV     AH,01H
INT     21H
MOV     INPUT3,AL

MOV     AH,01H
INT     21H
MOV     INPUT4,AL

MOV     AH,01H
INT     21H
MOV     INPUT5,AL


JMP STARTTT

FIN1:
JMP FINNN

STARTTT:         
CMP INPUT1,"1"
JE  FGROUP
JNE KOBRI


FGROUP:
CMP INPUT2,"0"
JE  TGROUP
JNE KOBRI

TGROUP:
CMP INPUT3,"1"
JE GROUPI
JNE GROUPP

GROUPI:
CMP INPUT4,"1"
JE GROUPH
JNE JT

GROUPH:
CMP INPUT5,"1"
JE  AT
JNE GROUPP

GROUPP:
CMP INPUT4,"1"
JE  GTT
JNE T1

KGROUP:
CMP INPUT1,"1"
JE RT
CMP INPUT2,"1"
JE  S1
CMP INPUT3,"1"
JE  MT
JNE LL



AT:

MOV DL,41H
CMP RES1,0

JNE COBR
MOV RES1,DL

JMP PP

KOBRI:
CMP INPUT2,"0"
JMP KGROUP
CMP INPUT1,"1"
JNE COBR2

RT:

MOV DL,52H
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP


NNN:
JMP NNNN

JT:

MOV DL,74D
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP



S1:
JMP STT

T1:
JMP TT

GTT:

MOV DL,47H
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP

COBR:
JMP LM

LL:
JMP LL1

MT:

MOV DL,77D
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP

COBR2:
CMP INPUT1,"1"
JMP SGROUP

TT:

MOV DL,54H
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP

STT:

MOV DL,53H
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP

LL1:

MOV DL,76D
CMP RES1,0

JNE LM
MOV RES1,DL

JMP PP

LM:
CMP RES2,0
JNE RR
MOV RES2,DL
JMP PP

RR:
CMP RES3,0
JNE DD1
MOV RES3,DL
JMP PP

DD1:
MOV RES4,DL
JMP PP



SGROUP:
ET:

;OJJ:

FINISH:

PP:

DEC CX

JMP MO

NN:
JMP NNN

FINNN:

MOV DL,LINE
CALL PRINTCHAR
 
MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR
LEA DX,RESULT2    
MOV AH,09H
INT 21H
MOV DL,' '
MOV AH,02H
INT 21H
  
MOV DL,RES1
MOV AH,02H
INT 21H
MOV DL,RES2
MOV AH,02H
INT 21H
MOV DL,RES3
MOV AH,02H
INT 21H
MOV DL,RES4
MOV AH,02H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR


MOV DL,LINE
CALL PRINTCHAR

NNA:
JMP NN

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR


LEA DX,BACK
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR


LEA DX,EXITMSG
MOV AH,09H
INT 21H


MOV AH,01H
INT 21H 
CMP AL,'1'

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,BACK
MOV AH,09H
INT 21H

MOV DL,LINE
CALL PRINTCHAR
MOV DL,LINE
CALL PRINTCHAR

LEA DX,EXITMSG
MOV AH,09H
INT 21H

JE  NNA
;                                          _ ELHAMD LILAH _
  

;            IT WAS A SIMPLE FOR ENCRYPTION AND DECRYPTION CAPITAL WORDS FROM 7 DIGITS ON

;            SPECIAL WAY, WE COULD ADD MORE NUMBER OF DIGITS BUT WE ARE ON FINALS MODE    (ZAN3T ELKILAB MODE) 



;            MADE BY:            MOHAMED FATHY   

;                                AAMAL MAHER

EXIT:
  
.EXIT

PRINTCHAR PROC NEAR

MOV AH,02H
INT 21H
RET
PRINTCHAR ENDP
 
MAIN ENDP
END MAIN