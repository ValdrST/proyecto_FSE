subtitle "Microchip MPLAB XC8 C Compiler v2.31 (Free license) build 20201012212115 Og9 "

pagewidth 120

	opt flic

	processor	18F25K80
include "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\18f25k80.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXERRCNT equ 0E41h ;# 
# 125 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXERRCNT equ 0E42h ;# 
# 195 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BRGCON1 equ 0E43h ;# 
# 271 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BRGCON2 equ 0E44h ;# 
# 356 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BRGCON3 equ 0E45h ;# 
# 409 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFCON0 equ 0E46h ;# 
# 471 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFCON1 equ 0E47h ;# 
# 533 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF6SIDH equ 0E48h ;# 
# 653 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF6SIDL equ 0E49h ;# 
# 760 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF6EIDH equ 0E4Ah ;# 
# 880 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF6EIDL equ 0E4Bh ;# 
# 1000 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF7SIDH equ 0E4Ch ;# 
# 1120 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF7SIDL equ 0E4Dh ;# 
# 1227 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF7EIDH equ 0E4Eh ;# 
# 1347 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF7EIDL equ 0E4Fh ;# 
# 1467 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF8SIDH equ 0E50h ;# 
# 1587 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF8SIDL equ 0E51h ;# 
# 1694 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF8EIDH equ 0E52h ;# 
# 1814 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF8EIDL equ 0E53h ;# 
# 1934 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF9SIDH equ 0E54h ;# 
# 2054 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF9SIDL equ 0E55h ;# 
# 2161 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF9EIDH equ 0E56h ;# 
# 2281 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF9EIDL equ 0E57h ;# 
# 2401 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF10SIDH equ 0E58h ;# 
# 2521 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF10SIDL equ 0E59h ;# 
# 2628 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF10EIDH equ 0E5Ah ;# 
# 2748 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF10EIDL equ 0E5Bh ;# 
# 2868 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF11SIDH equ 0E5Ch ;# 
# 2988 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF11SIDL equ 0E5Dh ;# 
# 3095 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF11EIDH equ 0E5Eh ;# 
# 3215 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF11EIDL equ 0E5Fh ;# 
# 3335 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF12SIDH equ 0E60h ;# 
# 3455 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF12SIDL equ 0E61h ;# 
# 3562 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF12EIDH equ 0E62h ;# 
# 3682 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF12EIDL equ 0E63h ;# 
# 3802 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF13SIDH equ 0E64h ;# 
# 3922 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF13SIDL equ 0E65h ;# 
# 4029 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF13EIDH equ 0E66h ;# 
# 4149 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF13EIDL equ 0E67h ;# 
# 4269 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF14SIDH equ 0E68h ;# 
# 4389 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF14SIDL equ 0E69h ;# 
# 4496 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF14EIDH equ 0E6Ah ;# 
# 4616 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF14EIDL equ 0E6Bh ;# 
# 4736 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF15SIDH equ 0E6Ch ;# 
# 4856 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF15SIDL equ 0E6Dh ;# 
# 4963 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF15EIDH equ 0E6Eh ;# 
# 5083 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF15EIDL equ 0E6Fh ;# 
# 5203 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SDFLC equ 0E70h ;# 
# 5255 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON0 equ 0E71h ;# 
# 5339 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON1 equ 0E72h ;# 
# 5423 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON2 equ 0E73h ;# 
# 5507 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON3 equ 0E74h ;# 
# 5591 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON4 equ 0E75h ;# 
# 5675 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON5 equ 0E76h ;# 
# 5759 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON6 equ 0E77h ;# 
# 5843 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXFBCON7 equ 0E78h ;# 
# 5927 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
MSEL0 equ 0E79h ;# 
# 6015 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
MSEL1 equ 0E7Ah ;# 
# 6103 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
MSEL2 equ 0E7Bh ;# 
# 6191 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
MSEL3 equ 0E7Ch ;# 
# 6279 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BSEL0 equ 0E7Dh ;# 
# 6330 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BIE0 equ 0E7Eh ;# 
# 6406 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXBIE equ 0E7Fh ;# 
# 6460 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0CON equ 0E80h ;# 
# 6722 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0SIDH equ 0E81h ;# 
# 6842 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0SIDL equ 0E82h ;# 
# 6959 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0EIDH equ 0E83h ;# 
# 7079 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0EIDL equ 0E84h ;# 
# 7199 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0DLC equ 0E85h ;# 
# 7328 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D0 equ 0E86h ;# 
# 7398 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D1 equ 0E87h ;# 
# 7468 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D2 equ 0E88h ;# 
# 7538 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D3 equ 0E89h ;# 
# 7608 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D4 equ 0E8Ah ;# 
# 7678 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D5 equ 0E8Bh ;# 
# 7748 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D6 equ 0E8Ch ;# 
# 7818 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B0D7 equ 0E8Dh ;# 
# 7888 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 7999 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 8091 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1CON equ 0E90h ;# 
# 8353 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1SIDH equ 0E91h ;# 
# 8473 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1SIDL equ 0E92h ;# 
# 8590 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1EIDH equ 0E93h ;# 
# 8710 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1EIDL equ 0E94h ;# 
# 8830 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1DLC equ 0E95h ;# 
# 8959 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D0 equ 0E96h ;# 
# 9029 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D1 equ 0E97h ;# 
# 9099 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D2 equ 0E98h ;# 
# 9169 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D3 equ 0E99h ;# 
# 9239 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D4 equ 0E9Ah ;# 
# 9309 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D5 equ 0E9Bh ;# 
# 9379 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D6 equ 0E9Ch ;# 
# 9449 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B1D7 equ 0E9Dh ;# 
# 9519 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 9630 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 9722 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2CON equ 0EA0h ;# 
# 9984 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2SIDH equ 0EA1h ;# 
# 10104 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2SIDL equ 0EA2h ;# 
# 10230 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2EIDH equ 0EA3h ;# 
# 10350 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2EIDL equ 0EA4h ;# 
# 10470 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2DLC equ 0EA5h ;# 
# 10599 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D0 equ 0EA6h ;# 
# 10669 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D1 equ 0EA7h ;# 
# 10739 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D2 equ 0EA8h ;# 
# 10809 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D3 equ 0EA9h ;# 
# 10879 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D4 equ 0EAAh ;# 
# 10949 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D5 equ 0EABh ;# 
# 11019 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D6 equ 0EACh ;# 
# 11089 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B2D7 equ 0EADh ;# 
# 11159 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 11270 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO7 equ 0EAFh ;# 
# 11362 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3CON equ 0EB0h ;# 
# 11624 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3SIDH equ 0EB1h ;# 
# 11744 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3SIDL equ 0EB2h ;# 
# 11870 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3EIDH equ 0EB3h ;# 
# 11990 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3EIDL equ 0EB4h ;# 
# 12110 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3DLC equ 0EB5h ;# 
# 12239 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D0 equ 0EB6h ;# 
# 12309 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D1 equ 0EB7h ;# 
# 12379 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D2 equ 0EB8h ;# 
# 12449 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D3 equ 0EB9h ;# 
# 12519 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D4 equ 0EBAh ;# 
# 12589 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D5 equ 0EBBh ;# 
# 12659 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D6 equ 0EBCh ;# 
# 12729 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B3D7 equ 0EBDh ;# 
# 12799 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 12910 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO6 equ 0EBFh ;# 
# 13002 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4CON equ 0EC0h ;# 
# 13264 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4SIDH equ 0EC1h ;# 
# 13384 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4SIDL equ 0EC2h ;# 
# 13510 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4EIDH equ 0EC3h ;# 
# 13630 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4EIDL equ 0EC4h ;# 
# 13750 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4DLC equ 0EC5h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D0 equ 0EC6h ;# 
# 13949 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D1 equ 0EC7h ;# 
# 14019 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D2 equ 0EC8h ;# 
# 14089 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D3 equ 0EC9h ;# 
# 14159 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D4 equ 0ECAh ;# 
# 14229 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D5 equ 0ECBh ;# 
# 14299 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D6 equ 0ECCh ;# 
# 14369 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B4D7 equ 0ECDh ;# 
# 14439 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 14550 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO5 equ 0ECFh ;# 
# 14642 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5CON equ 0ED0h ;# 
# 14904 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5SIDH equ 0ED1h ;# 
# 15024 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5SIDL equ 0ED2h ;# 
# 15150 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5EIDH equ 0ED3h ;# 
# 15270 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5EIDL equ 0ED4h ;# 
# 15390 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5DLC equ 0ED5h ;# 
# 15519 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D0 equ 0ED6h ;# 
# 15589 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D1 equ 0ED7h ;# 
# 15659 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D2 equ 0ED8h ;# 
# 15729 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D3 equ 0ED9h ;# 
# 15799 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D4 equ 0EDAh ;# 
# 15869 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D5 equ 0EDBh ;# 
# 15939 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D6 equ 0EDCh ;# 
# 16009 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
B5D7 equ 0EDDh ;# 
# 16079 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 16190 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO4 equ 0EDFh ;# 
# 16282 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF0SIDH equ 0EE0h ;# 
# 16402 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF0SIDL equ 0EE1h ;# 
# 16509 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF0EIDH equ 0EE2h ;# 
# 16629 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF0EIDL equ 0EE3h ;# 
# 16749 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF1SIDH equ 0EE4h ;# 
# 16869 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF1SIDL equ 0EE5h ;# 
# 16976 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF1EIDH equ 0EE6h ;# 
# 17096 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF1EIDL equ 0EE7h ;# 
# 17216 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF2SIDH equ 0EE8h ;# 
# 17336 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF2SIDL equ 0EE9h ;# 
# 17443 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF2EIDH equ 0EEAh ;# 
# 17563 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF2EIDL equ 0EEBh ;# 
# 17683 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF3SIDH equ 0EECh ;# 
# 17803 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF3SIDL equ 0EEDh ;# 
# 17910 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF3EIDH equ 0EEEh ;# 
# 18030 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF3EIDL equ 0EEFh ;# 
# 18150 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF4SIDH equ 0EF0h ;# 
# 18270 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF4SIDL equ 0EF1h ;# 
# 18377 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF4EIDH equ 0EF2h ;# 
# 18497 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF4EIDL equ 0EF3h ;# 
# 18617 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF5SIDH equ 0EF4h ;# 
# 18737 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF5SIDL equ 0EF5h ;# 
# 18844 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF5EIDH equ 0EF6h ;# 
# 18964 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXF5EIDL equ 0EF7h ;# 
# 19084 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM0SIDH equ 0EF8h ;# 
# 19204 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM0SIDL equ 0EF9h ;# 
# 19311 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM0EIDH equ 0EFAh ;# 
# 19431 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM0EIDL equ 0EFBh ;# 
# 19551 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM1SIDH equ 0EFCh ;# 
# 19671 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM1SIDL equ 0EFDh ;# 
# 19778 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM1EIDH equ 0EFEh ;# 
# 19898 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXM1EIDL equ 0EFFh ;# 
# 20018 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2CON equ 0F00h ;# 
# 20128 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2SIDH equ 0F01h ;# 
# 20248 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2SIDL equ 0F02h ;# 
# 20360 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2EIDH equ 0F03h ;# 
# 20480 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2EIDL equ 0F04h ;# 
# 20600 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2DLC equ 0F05h ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D0 equ 0F06h ;# 
# 20756 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D1 equ 0F07h ;# 
# 20826 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D2 equ 0F08h ;# 
# 20896 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D3 equ 0F09h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D4 equ 0F0Ah ;# 
# 21036 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D5 equ 0F0Bh ;# 
# 21106 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D6 equ 0F0Ch ;# 
# 21176 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB2D7 equ 0F0Dh ;# 
# 21246 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 21357 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 21449 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1CON equ 0F10h ;# 
# 21559 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1SIDH equ 0F11h ;# 
# 21679 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1SIDL equ 0F12h ;# 
# 21791 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1EIDH equ 0F13h ;# 
# 21911 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1EIDL equ 0F14h ;# 
# 22031 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1DLC equ 0F15h ;# 
# 22117 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D0 equ 0F16h ;# 
# 22187 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D1 equ 0F17h ;# 
# 22257 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D2 equ 0F18h ;# 
# 22327 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D3 equ 0F19h ;# 
# 22397 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D4 equ 0F1Ah ;# 
# 22467 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D5 equ 0F1Bh ;# 
# 22537 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D6 equ 0F1Ch ;# 
# 22607 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB1D7 equ 0F1Dh ;# 
# 22677 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 22788 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 22880 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0CON equ 0F20h ;# 
# 22990 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0SIDH equ 0F21h ;# 
# 23110 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0SIDL equ 0F22h ;# 
# 23222 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0EIDH equ 0F23h ;# 
# 23342 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0EIDL equ 0F24h ;# 
# 23462 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0DLC equ 0F25h ;# 
# 23548 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D0 equ 0F26h ;# 
# 23618 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D1 equ 0F27h ;# 
# 23688 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D2 equ 0F28h ;# 
# 23758 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D3 equ 0F29h ;# 
# 23828 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D4 equ 0F2Ah ;# 
# 23898 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D5 equ 0F2Bh ;# 
# 23968 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D6 equ 0F2Ch ;# 
# 24038 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXB0D7 equ 0F2Dh ;# 
# 24108 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 24219 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 24311 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1CON equ 0F30h ;# 
# 24471 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1SIDH equ 0F31h ;# 
# 24591 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1SIDL equ 0F32h ;# 
# 24708 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1EIDH equ 0F33h ;# 
# 24828 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1EIDL equ 0F34h ;# 
# 24948 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1DLC equ 0F35h ;# 
# 25062 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D0 equ 0F36h ;# 
# 25132 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D1 equ 0F37h ;# 
# 25202 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D2 equ 0F38h ;# 
# 25272 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D3 equ 0F39h ;# 
# 25342 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D4 equ 0F3Ah ;# 
# 25412 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D5 equ 0F3Bh ;# 
# 25482 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D6 equ 0F3Ch ;# 
# 25552 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB1D7 equ 0F3Dh ;# 
# 25622 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 25733 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 25825 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCP5CON equ 0F47h ;# 
# 25904 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR5 equ 0F48h ;# 
# 25911 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR5L equ 0F48h ;# 
# 25931 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR5H equ 0F49h ;# 
# 25951 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCP4CON equ 0F4Ah ;# 
# 26030 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR4 equ 0F4Bh ;# 
# 26037 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR4L equ 0F4Bh ;# 
# 26057 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR4H equ 0F4Ch ;# 
# 26077 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCP3CON equ 0F4Dh ;# 
# 26156 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR3 equ 0F4Eh ;# 
# 26163 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR3L equ 0F4Eh ;# 
# 26183 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR3H equ 0F4Fh ;# 
# 26203 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCP2CON equ 0F50h ;# 
# 26208 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ECCP2CON equ 0F50h ;# 
# 26359 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR2 equ 0F51h ;# 
# 26366 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR2L equ 0F51h ;# 
# 26386 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR2H equ 0F52h ;# 
# 26406 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CTMUICON equ 0F53h ;# 
# 26482 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CTMUCONL equ 0F54h ;# 
# 26560 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CTMUCONH equ 0F55h ;# 
# 26617 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PADCFG1 equ 0F56h ;# 
# 26645 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PMD2 equ 0F57h ;# 
# 26677 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PMD1 equ 0F58h ;# 
# 26747 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PMD0 equ 0F59h ;# 
# 26824 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
IOCB equ 0F5Ah ;# 
# 26863 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
WPUB equ 0F5Bh ;# 
# 26925 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ANCON1 equ 0F5Ch ;# 
# 26977 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ANCON0 equ 0F5Dh ;# 
# 27053 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CM2CON equ 0F5Eh ;# 
# 27058 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CM2CON1 equ 0F5Eh ;# 
# 27305 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CM1CON equ 0F5Fh ;# 
# 27310 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CM1CON1 equ 0F5Fh ;# 
# 27585 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0CON equ 0F60h ;# 
# 27769 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0SIDH equ 0F61h ;# 
# 27889 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0SIDL equ 0F62h ;# 
# 28006 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0EIDH equ 0F63h ;# 
# 28126 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0EIDL equ 0F64h ;# 
# 28246 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0DLC equ 0F65h ;# 
# 28360 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D0 equ 0F66h ;# 
# 28430 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D1 equ 0F67h ;# 
# 28500 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D2 equ 0F68h ;# 
# 28570 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D3 equ 0F69h ;# 
# 28640 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D4 equ 0F6Ah ;# 
# 28710 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D5 equ 0F6Bh ;# 
# 28780 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D6 equ 0F6Ch ;# 
# 28850 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RXB0D7 equ 0F6Dh ;# 
# 28920 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANSTAT equ 0F6Eh ;# 
# 29031 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CANCON equ 0F6Fh ;# 
# 29123 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CIOCON equ 0F70h ;# 
# 29168 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
COMSTAT equ 0F71h ;# 
# 29263 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ECANCON equ 0F72h ;# 
# 29340 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
EEDATA equ 0F73h ;# 
# 29360 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
EEADR equ 0F74h ;# 
# 29380 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
EEADRH equ 0F75h ;# 
# 29400 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIE5 equ 0F76h ;# 
# 29483 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIR5 equ 0F77h ;# 
# 29566 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
IPR5 equ 0F78h ;# 
# 29676 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXREG2 equ 0F79h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCREG2 equ 0F7Ah ;# 
# 29716 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SPBRG2 equ 0F7Bh ;# 
# 29736 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SPBRGH2 equ 0F7Ch ;# 
# 29756 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SPBRGH1 equ 0F7Dh ;# 
# 29776 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
EECON2 equ 0F7Eh ;# 
# 29796 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
EECON1 equ 0F7Fh ;# 
# 29862 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PORTA equ 0F80h ;# 
# 29941 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PORTB equ 0F81h ;# 
# 30012 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PORTC equ 0F82h ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PORTE equ 0F84h ;# 
# 30137 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR4 equ 0F87h ;# 
# 30157 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T4CON equ 0F88h ;# 
# 30228 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
LATA equ 0F89h ;# 
# 30330 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
LATB equ 0F8Ah ;# 
# 30442 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
LATC equ 0F8Bh ;# 
# 30554 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SLRCON equ 0F90h ;# 
# 30586 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ODCON equ 0F91h ;# 
# 30648 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TRISA equ 0F92h ;# 
# 30705 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TRISB equ 0F93h ;# 
# 30767 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TRISC equ 0F94h ;# 
# 30829 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPTMRS equ 0F99h ;# 
# 30873 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
REFOCON equ 0F9Ah ;# 
# 30938 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
OSCTUNE equ 0F9Bh ;# 
# 31008 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PSTR1CON equ 0F9Ch ;# 
# 31074 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIE1 equ 0F9Dh ;# 
# 31145 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIR1 equ 0F9Eh ;# 
# 31216 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
IPR1 equ 0F9Fh ;# 
# 31287 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIE2 equ 0FA0h ;# 
# 31341 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIR2 equ 0FA1h ;# 
# 31395 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
IPR2 equ 0FA2h ;# 
# 31449 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIE3 equ 0FA3h ;# 
# 31537 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIR3 equ 0FA4h ;# 
# 31598 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
IPR3 equ 0FA5h ;# 
# 31659 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCSTA2 equ 0FA6h ;# 
# 31795 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BAUDCON1 equ 0FA7h ;# 
# 31951 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
HLVDCON equ 0FA8h ;# 
# 32021 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PR4 equ 0FA9h ;# 
# 32041 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T1GCON equ 0FAAh ;# 
# 32145 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCSTA1 equ 0FABh ;# 
# 32150 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCSTA equ 0FABh ;# 
# 32483 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXSTA1 equ 0FACh ;# 
# 32488 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXSTA equ 0FACh ;# 
# 32771 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXREG1 equ 0FADh ;# 
# 32776 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXREG equ 0FADh ;# 
# 32809 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCREG1 equ 0FAEh ;# 
# 32814 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCREG equ 0FAEh ;# 
# 32847 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SPBRG1 equ 0FAFh ;# 
# 32852 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SPBRG equ 0FAFh ;# 
# 32885 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T3GCON equ 0FB0h ;# 
# 32989 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T3CON equ 0FB1h ;# 
# 33100 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR3 equ 0FB2h ;# 
# 33107 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR3L equ 0FB2h ;# 
# 33127 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR3H equ 0FB3h ;# 
# 33147 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CMSTAT equ 0FB4h ;# 
# 33152 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CMSTATUS equ 0FB4h ;# 
# 33229 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CVRCON equ 0FB5h ;# 
# 33314 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIE4 equ 0FB6h ;# 
# 33371 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PIR4 equ 0FB7h ;# 
# 33428 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
IPR4 equ 0FB8h ;# 
# 33493 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BAUDCON2 equ 0FB9h ;# 
# 33625 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TXSTA2 equ 0FBAh ;# 
# 33752 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCP1CON equ 0FBBh ;# 
# 33757 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ECCP1CON equ 0FBBh ;# 
# 33944 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR1 equ 0FBCh ;# 
# 33951 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR1L equ 0FBCh ;# 
# 33971 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
CCPR1H equ 0FBDh ;# 
# 33991 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ECCP1DEL equ 0FBEh ;# 
# 33996 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PWM1CON equ 0FBEh ;# 
# 34129 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ECCP1AS equ 0FBFh ;# 
# 34211 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ADCON2 equ 0FC0h ;# 
# 34282 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ADCON1 equ 0FC1h ;# 
# 34386 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ADCON0 equ 0FC2h ;# 
# 34511 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ADRES equ 0FC3h ;# 
# 34518 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ADRESL equ 0FC3h ;# 
# 34538 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
ADRESH equ 0FC4h ;# 
# 34558 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SSPCON2 equ 0FC5h ;# 
# 34653 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SSPCON1 equ 0FC6h ;# 
# 34723 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SSPSTAT equ 0FC7h ;# 
# 34955 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SSPADD equ 0FC8h ;# 
# 35025 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
SSPBUF equ 0FC9h ;# 
# 35045 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T2CON equ 0FCAh ;# 
# 35116 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PR2 equ 0FCBh ;# 
# 35121 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
MEMCON equ 0FCBh ;# 
# 35242 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR2 equ 0FCCh ;# 
# 35262 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T1CON equ 0FCDh ;# 
# 35364 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR1 equ 0FCEh ;# 
# 35371 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR1L equ 0FCEh ;# 
# 35391 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR1H equ 0FCFh ;# 
# 35411 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
RCON equ 0FD0h ;# 
# 35564 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
WDTCON equ 0FD1h ;# 
# 35624 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
OSCCON2 equ 0FD2h ;# 
# 35696 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
OSCCON equ 0FD3h ;# 
# 35773 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
T0CON equ 0FD5h ;# 
# 35843 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR0 equ 0FD6h ;# 
# 35850 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR0L equ 0FD6h ;# 
# 35870 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TMR0H equ 0FD7h ;# 
# 35890 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
STATUS equ 0FD8h ;# 
# 35961 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR2 equ 0FD9h ;# 
# 35968 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR2L equ 0FD9h ;# 
# 35988 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR2H equ 0FDAh ;# 
# 36008 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PLUSW2 equ 0FDBh ;# 
# 36028 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PREINC2 equ 0FDCh ;# 
# 36048 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
POSTDEC2 equ 0FDDh ;# 
# 36068 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
POSTINC2 equ 0FDEh ;# 
# 36088 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INDF2 equ 0FDFh ;# 
# 36108 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
BSR equ 0FE0h ;# 
# 36128 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR1 equ 0FE1h ;# 
# 36135 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR1L equ 0FE1h ;# 
# 36155 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR1H equ 0FE2h ;# 
# 36175 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PLUSW1 equ 0FE3h ;# 
# 36195 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PREINC1 equ 0FE4h ;# 
# 36215 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
POSTDEC1 equ 0FE5h ;# 
# 36235 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
POSTINC1 equ 0FE6h ;# 
# 36255 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INDF1 equ 0FE7h ;# 
# 36275 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
WREG equ 0FE8h ;# 
# 36295 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR0 equ 0FE9h ;# 
# 36302 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR0L equ 0FE9h ;# 
# 36322 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
FSR0H equ 0FEAh ;# 
# 36342 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PLUSW0 equ 0FEBh ;# 
# 36362 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PREINC0 equ 0FECh ;# 
# 36382 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
POSTDEC0 equ 0FEDh ;# 
# 36402 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
POSTINC0 equ 0FEEh ;# 
# 36422 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INDF0 equ 0FEFh ;# 
# 36442 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INTCON3 equ 0FF0h ;# 
# 36554 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INTCON2 equ 0FF1h ;# 
# 36647 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INTCON equ 0FF2h ;# 
# 36652 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
INTCON1 equ 0FF2h ;# 
# 36879 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PROD equ 0FF3h ;# 
# 36886 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PRODL equ 0FF3h ;# 
# 36906 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PRODH equ 0FF4h ;# 
# 36926 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TABLAT equ 0FF5h ;# 
# 36948 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TBLPTR equ 0FF6h ;# 
# 36955 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TBLPTRL equ 0FF6h ;# 
# 36975 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TBLPTRH equ 0FF7h ;# 
# 36995 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TBLPTRU equ 0FF8h ;# 
# 37017 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PCLAT equ 0FF9h ;# 
# 37024 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PC equ 0FF9h ;# 
# 37031 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PCL equ 0FF9h ;# 
# 37051 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PCLATH equ 0FFAh ;# 
# 37071 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
PCLATU equ 0FFBh ;# 
# 37091 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
STKPTR equ 0FFCh ;# 
# 37165 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TOS equ 0FFDh ;# 
# 37172 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TOSL equ 0FFDh ;# 
# 37192 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TOSH equ 0FFEh ;# 
# 37212 "C:\Program Files\Microchip\xc8\v2.31\pic\include\proc\pic18f25k80.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_USART_getch
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lbdiv
	FNCALL	_main,___lbmod
	FNCALL	_main,_comandos
	FNCALL	_main,_conf_PWM
	FNCALL	_main,_putch
	FNCALL	_comandos,_printf
	FNCALL	_comandos,_strcmp
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_printf,_putch
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	_buffer_TX
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	".\proyecto_pic.c"
	line	8

;initializer for _buffer_TX
	db	low(054h)
	db	low(065h)
	db	low(06Dh)
	db	low(070h)
	db	low(03Ah)
	db	low(020h)
	db	low(078h)
	db	low(078h)
	db	low(078h)
	db	low(020h)
	db	low(067h)
	db	low(072h)
	db	low(061h)
	db	low(064h)
	db	low(06Fh)
	db	low(073h)
	db	low(0Dh)
	db	low(0)
	global	_dpowers
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	dw	(01h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(064h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(02710h)&0ffffh
	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_temp
	global	_value_adc
	global	_lm35
	global	_data_in
	global	_CCP2CONbits
_CCP2CONbits	set	0xF50
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADCON2bits
_ADCON2bits	set	0xFC0
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1bits
_ADCON1bits	set	0xFC1
	global	_SPBRG2
_SPBRG2	set	0xF7B
	global	_RCSTA2bits
_RCSTA2bits	set	0xFA6
	global	_BAUDCON2bits
_BAUDCON2bits	set	0xFB9
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_OSCCONbits
_OSCCONbits	set	0xFD3
	global	_TXREG2
_TXREG2	set	0xF79
	global	_TXSTA2bits
_TXSTA2bits	set	0xFBA
	global	_T2CONbits
_T2CONbits	set	0xFCA
	global	_PR2
_PR2	set	0xFCB
	global	_RCREG2
_RCREG2	set	0xF7A
	global	_PIR3bits
_PIR3bits	set	0xFA4
	
STR_2:
	db	37
	db	100	;'d'
	db	124
	db	37
	db	115	;'s'
	db	124
	db	37
	db	100	;'d'
	db	124
	db	37
	db	100	;'d'
	db	124
	db	37
	db	100	;'d'
	db	124
	db	37
	db	100	;'d'
	db	124
	db	37
	db	99	;'c'
	db	0
	
STR_6:
	db	99	;'c'
	db	111	;'o'
	db	109	;'m'
	db	97	;'a'
	db	110	;'n'
	db	100	;'d'
	db	111	;'o'
	db	32
	db	105	;'i'
	db	110	;'n'
	db	118	;'v'
	db	97	;'a'
	db	108	;'l'
	db	105	;'i'
	db	100	;'d'
	db	111	;'o'
	db	37
	db	99	;'c'
	db	0
	
STR_7:
	db	40
	db	110	;'n'
	db	117	;'u'
	db	108	;'l'
	db	108	;'l'
	db	41
	db	0
	
STR_1:
	db	65	;'A'
	db	65	;'A'
	db	0
	
STR_3:
	db	111	;'o'
	db	110	;'n'
	db	0
STR_5	equ	STR_3+0
STR_4	equ	STR_2+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config XINST = "OFF"
	config FCMEN = "OFF"
	config IESO = "ON"
	config BORV = "3"
	config WDTPS = "32768"
	config MCLRE = "OFF"
	config STVREN = "ON"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTR2 = "OFF"
	config EBTR3 = "OFF"
	config EBTRB = "OFF"
	file	"proyecto_pic.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_temp
_temp:
       ds      3
	global	_x
	global	_x
_x:
       ds      2
	global	_value_adc
_value_adc:
       ds      2
	global	_lm35
_lm35:
       ds      1
	global	_data_in
_data_in:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	".\proyecto_pic.c"
	line	8
	global	_buffer_TX
_buffer_TX:
       ds      18
	file	"proyecto_pic.as"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (18 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,18
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to COMRAM (9 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	9
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_USART_getch:	; 1 bytes @ 0x0
??_USART_getch:	; 1 bytes @ 0x0
?_conf_PWM:	; 1 bytes @ 0x0
??_conf_PWM:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___lbmod:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	putch@caracter
putch@caracter:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds   1
??___lbmod:	; 1 bytes @ 0x1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x1
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x1
	ds   1
??_strcmp:	; 1 bytes @ 0x2
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x3
	ds   1
??___fttol:	; 1 bytes @ 0x4
?___lbdiv:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   1
??___ftpack:	; 1 bytes @ 0x5
??___lbdiv:	; 1 bytes @ 0x5
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x5
	ds   1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x7
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x7
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds   1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x9
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x9
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xA
	ds   1
??___awtoft:	; 1 bytes @ 0xB
??___lwmod:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
	ds   1
	global	?_printf
?_printf:	; 2 bytes @ 0xC
	global	printf@f
printf@f:	; 1 bytes @ 0xC
	ds   2
??___ftmul:	; 1 bytes @ 0xE
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xE
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x11
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x12
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x15
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x16
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x17
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x17
	ds   3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	ds   1
??_printf:	; 1 bytes @ 0x1B
	ds   1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x1C
	ds   1
??___ftdiv:	; 1 bytes @ 0x1D
	global	printf@prec
printf@prec:	; 1 bytes @ 0x1D
	ds   1
	global	printf@cp
printf@cp:	; 2 bytes @ 0x1E
	ds   2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x20
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x20
	ds   1
	global	printf@val
printf@val:	; 2 bytes @ 0x21
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x21
	ds   2
	global	printf@c
printf@c:	; 1 bytes @ 0x23
	ds   1
?_comandos:	; 1 bytes @ 0x24
	global	comandos@comando
comandos@comando:	; 1 bytes @ 0x24
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x24
	ds   1
??_comandos:	; 1 bytes @ 0x25
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x25
	ds   1
??_main:	; 1 bytes @ 0x26
	ds   2
	global	main@comando
main@comando:	; 4 bytes @ 0x28
	ds   4
	global	_main$1416
_main$1416:	; 1 bytes @ 0x2C
	ds   1
	global	main@contador_comando
main@contador_comando:	; 2 bytes @ 0x2D
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x2F
	ds   2
;!
;!Data Sizes:
;!    Strings     53
;!    Constant    10
;!    Data        18
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     49      76
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14           65      0       0

;!
;!Pointer List with Targets:
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_1(CODE[3]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 4
;!		 -> main@comando(COMRAM[4]), 
;!
;!    printf@f	PTR const unsigned char  size(1) Largest target is 21
;!		 -> STR_6(CODE[19]), STR_4(CODE[21]), STR_2(CODE[21]), 
;!
;!    printf@cp	PTR const unsigned char  size(2) Largest target is 7
;!		 -> STR_7(CODE[7]), ?_printf(COMRAM[2]), STR_5(CODE[3]), STR_3(CODE[3]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_printf(COMRAM[2]), 
;!
;!    comandos@comando	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@comando(COMRAM[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___ftdiv
;!    _comandos->_printf
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___lbdiv->___lbmod
;!    ___ftmul->___ftpack
;!    ___ftdiv->___ftmul
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                11    11      0   12726
;!                                             38 COMRAM    11    11      0
;!                        _USART_getch
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                            ___lbdiv
;!                            ___lbmod
;!                           _comandos
;!                           _conf_PWM
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (1) _conf_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _comandos                                             1     0      1    1740
;!                                             36 COMRAM     1     0      1
;!                             _printf
;!                             _strcmp
;! ---------------------------------------------------------------------------------
;! (2) _strcmp                                               5     3      2     243
;!                                              0 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _printf                                              30    15     15    1399
;!                                             12 COMRAM    24     9     15
;!                            ___lwdiv
;!                            ___lwmod
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (1) _putch                                                1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     311
;!                                              7 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4     314
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___lbmod                                              4     3      1     387
;!                                              0 COMRAM     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) ___lbdiv                                              4     3      1     314
;!                                              4 COMRAM     4     3      1
;!                            ___lbmod (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     328
;!                                              0 COMRAM    15    11      4
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             15     9      6    3411
;!                                              8 COMRAM    15     9      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             15     9      6    3365
;!                                             23 COMRAM    15     9      6
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    2972
;!                                              8 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    2805
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _USART_getch                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _USART_getch
;!   ___awtoft
;!     ___ftpack
;!   ___ftdiv
;!     ___ftmul (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!   ___ftmul
;!     ___ftpack
;!   ___fttol
;!   ___lbdiv
;!     ___lbmod (ARG)
;!   ___lbmod
;!   _comandos
;!     _printf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       _putch
;!     _strcmp
;!   _conf_PWM
;!   _putch
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             E40      0       0      35        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0       0       8        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     31      4C       1       80.0%
;!BITBANK14           41      0       0      33        0.0%
;!BANK14              41      0       0      34        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      4C       6        0.0%
;!DATA                 0      0      4C       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file ".\proyecto_pic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   47[COMRAM] int 
;;  comando         4   40[COMRAM] unsigned char [4]
;;  contador_com    2   45[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USART_getch
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lbdiv
;;		___lbmod
;;		_comandos
;;		_conf_PWM
;;		_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	".\proyecto_pic.c"
	line	66
global __ptext0
__ptext0:
psect	text0
	file	".\proyecto_pic.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	callstack 28
	line	67
	
l1733:
	movlw	high(0)
	movwf	((c:main@contador_comando+1))^00h,c
	movlw	low(0)
	movwf	((c:main@contador_comando))^00h,c
	line	70
	movf	((c:4051))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<4)
	iorlw	(06h & ((1<<3)-1))<<4
	movwf	((c:4051))^0f00h,c	;volatile
	line	71
	movf	((c:4051))^0f00h,c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	((c:4051))^0f00h,c	;volatile
	line	74
	
l1735:
	bsf	((c:3987))^0f00h,c,7	;volatile
	line	75
	
l1737:
	bcf	((c:3987))^0f00h,c,6	;volatile
	line	76
	
l1739:
	bcf	((c:4012))^0f00h,c,6	;volatile
	line	77
	
l1741:
	bsf	((c:4012))^0f00h,c,5	;volatile
	line	78
	
l1743:
	bcf	((c:4012))^0f00h,c,4	;volatile
	line	79
	
l1745:
	bcf	((c:4012))^0f00h,c,2	;volatile
	line	80
	
l1747:
	bcf	((c:4025))^0f00h,c,3	;volatile
	line	81
	
l1749:
	bsf	((c:4006))^0f00h,c,7	;volatile
	line	82
	
l1751:
	bsf	((c:4006))^0f00h,c,4	;volatile
	line	83
	movlw	low(0Ch)
	movwf	((c:3963))^0f00h,c	;volatile
	line	88
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4033))^0f00h,c	;volatile
	line	89
	movlw	((0 & ((1<<5)-1))<<2)|not (((1<<5)-1)<<2)
	andwf	((c:4034))^0f00h,c	;volatile
	line	90
	movlw	((0 & ((1<<3)-1))<<3)|not (((1<<3)-1)<<3)
	andwf	((c:4032))^0f00h,c	;volatile
	line	91
	movf	((c:4032))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(03h & ((1<<3)-1))<<0
	movwf	((c:4032))^0f00h,c	;volatile
	line	92
	
l1753:
	bsf	((c:4032))^0f00h,c,7	;volatile
	line	93
	
l1755:
	bsf	((c:4034))^0f00h,c,0	;volatile
	line	95
	
l1757:
	call	_conf_PWM	;wreg free
	line	97
	
l1759:
	asmopt push
asmopt off
movlw	3
movwf	(??_main+0+0)^00h,c,f
	movlw	152
u1177:
decfsz	wreg,f
	bra	u1177
	decfsz	(??_main+0+0)^00h,c,f
	bra	u1177
asmopt pop

	line	99
	
l1761:
	bsf	((c:4034))^0f00h,c,1	;volatile
	line	100
	
l98:
	btfsc	((c:4034))^0f00h,c,1	;volatile
	goto	u1141
	goto	u1140
u1141:
	goto	l98
u1140:
	
l100:
	line	101
	movff	(c:4036),(c:_value_adc)	;volatile
	clrf	((c:_value_adc+1))^00h,c
	line	102
	
l1763:
	movf	((c:_value_adc))^00h,c,w
	movwf	(??_main+0+0+1)^00h,c
	clrf	(??_main+0+0)^00h,c
	movf	((c:4035))^0f00h,c,w	;volatile
	addwf	(??_main+0+0)^00h,c,w
	movwf	((c:_value_adc))^00h,c
	movlw	0
	addwfc	(??_main+0+1)^00h,c,w
	movwf	1+((c:_value_adc))^00h,c
	line	103
	
l1765:
	movff	(c:_value_adc),(c:___awtoft@c)
	movff	(c:_value_adc+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:_temp)
	movff	1+?___awtoft,(c:_temp+1)
	movff	2+?___awtoft,(c:_temp+2)
	line	104
	
l1767:
	movlw	low(float24(500.00000000000000))
	movwf	((c:___ftmul@f2))^00h,c
	movlw	high(float24(500.00000000000000))
	movwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(float24(500.00000000000000))
	movwf	((c:___ftmul@f2+2))^00h,c

	movff	(c:_temp),(c:___ftmul@f1)
	movff	(c:_temp+1),(c:___ftmul@f1+1)
	movff	(c:_temp+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:_temp)
	movff	1+?___ftdiv,(c:_temp+1)
	movff	2+?___ftdiv,(c:_temp+2)
	line	105
	
l1769:
	movff	(c:_temp),(c:___fttol@f1)
	movff	(c:_temp+1),(c:___fttol@f1+1)
	movff	(c:_temp+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movf	(0+?___fttol)^00h,c,w
	movwf	((c:_lm35))^00h,c
	line	106
	
l1771:
	movlw	low(064h)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:_lm35))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	movwf	(0+((c:_buffer_TX)+06h))^00h,c
	line	107
	
l1773:
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movlw	low(064h)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_lm35))^00h,c,w
	
	call	___lbmod
	
	call	___lbdiv
	addlw	low(030h)
	movwf	(0+((c:_buffer_TX)+07h))^00h,c
	line	108
	
l1775:
	movlw	low(064h)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_lm35))^00h,c,w
	
	call	___lbmod
	movwf	((c:_main$1416))^00h,c
	
l1777:
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:_main$1416))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	movwf	(0+((c:_buffer_TX)+08h))^00h,c
	line	109
	
l1779:
	call	_USART_getch	;wreg free
	movwf	((c:_data_in))^00h,c
	line	110
	goto	l1813
	line	114
	
l1781:
	movlw	high(0)
	movwf	((c:main@i+1))^00h,c
	movlw	low(0)
	movwf	((c:main@i))^00h,c
	line	118
	
l1787:
	movf	((c:main@i))^00h,c,w
	addlw	low(_buffer_TX)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_putch
	line	114
	
l1789:
	infsnz	((c:main@i))^00h,c
	incf	((c:main@i+1))^00h,c
	
l1791:
	btfsc	((c:main@i+1))^00h,c,7
	goto	u1151
	movf	((c:main@i+1))^00h,c,w
	bnz	u1150
	movlw	17
	subwf	 ((c:main@i))^00h,c,w
	btfss	status,0
	goto	u1151
	goto	u1150

u1151:
	goto	l1787
u1150:
	goto	l1815
	line	122
	
l1793:
	movf	((c:_data_in))^00h,c,w
	
	call	_putch
	line	123
	
l1795:
	movlw	high(0)
	movwf	((c:main@contador_comando+1))^00h,c
	movlw	low(0)
	movwf	((c:main@contador_comando))^00h,c
	line	124
	goto	l1815
	line	126
	
l1797:
	btfsc	((c:main@contador_comando+1))^00h,c,7
	goto	u1160
	movf	((c:main@contador_comando+1))^00h,c,w
	bnz	u1161
	movlw	2
	subwf	 ((c:main@contador_comando))^00h,c,w
	btfsc	status,0
	goto	u1161
	goto	u1160

u1161:
	goto	l1805
u1160:
	line	127
	
l1799:
	movf	((c:_data_in))^00h,c,w
	
	call	_putch
	line	128
	
l1801:
	movf	((c:main@contador_comando))^00h,c,w
	addlw	low(main@comando)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_data_in),indf2

	line	129
	
l1803:
	infsnz	((c:main@contador_comando))^00h,c
	incf	((c:main@contador_comando+1))^00h,c
	line	130
	goto	l1815
	line	131
	
l1805:
	movlw	(0Dh)&0ffh
	
	call	_putch
	line	132
	
l1807:
		movlw	low(main@comando)
	movwf	((c:comandos@comando))^00h,c

	call	_comandos	;wreg free
	goto	l1795
	line	110
	
l1813:
	movf	((c:_data_in))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 13 to 116
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	13^0	; case 13
	skipnz
	goto	l1793
	xorlw	84^13	; case 84
	skipnz
	goto	l1781
	xorlw	116^84	; case 116
	skipnz
	goto	l1781
	goto	l1797

	line	137
	
l1815:
	asmopt push
asmopt off
movlw  2
movwf	(??_main+0+0+1)^00h,c,f
movlw	2
movwf	(??_main+0+0)^00h,c,f
	movlw	33
u1187:
decfsz	wreg,f
	bra	u1187
	decfsz	(??_main+0+0)^00h,c,f
	bra	u1187
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u1187
	nop
asmopt pop

	goto	l1759
	global	start
	goto	start
	callstack 0
	line	139
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_conf_PWM

;; *************** function _conf_PWM *****************
;; Defined at:
;;		line 22 in file ".\proyecto_pic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	22
global __ptext1
__ptext1:
psect	text1
	file	".\proyecto_pic.c"
	line	22
	global	__size_of_conf_PWM
	__size_of_conf_PWM	equ	__end_of_conf_PWM-_conf_PWM
	
_conf_PWM:
;incstack = 0
	callstack 30
	line	23
	
l1527:
	movlb	15	; () banked
	movf	((3920))&0ffh,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((3920))&0ffh	;volatile
	line	24
	
l1529:; BSR set to: 15

	setf	((c:4043))^0f00h,c	;volatile
	line	25
	
l1531:; BSR set to: 15

	bsf	((c:4042))^0f00h,c,2	;volatile
	line	26
	movlw	(03h & ((1<<2)-1))<<0
	iorwf	((c:4042))^0f00h,c	;volatile
	line	27
	
l69:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_conf_PWM
	__end_of_conf_PWM:
	signat	_conf_PWM,89
	global	_comandos

;; *************** function _comandos *****************
;; Defined at:
;;		line 57 in file ".\proyecto_pic.c"
;; Parameters:    Size  Location     Type
;;  comando         1   36[COMRAM] PTR unsigned char 
;;		 -> main@comando(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_printf
;;		_strcmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	57
global __ptext2
__ptext2:
psect	text2
	file	".\proyecto_pic.c"
	line	57
	global	__size_of_comandos
	__size_of_comandos	equ	__end_of_comandos-_comandos
	
_comandos:; BSR set to: 15

;incstack = 0
	callstack 28
	line	58
	
l1533:
		movff	(c:comandos@comando),(c:strcmp@s1)

		movlw	low(STR_1)
	movwf	((c:strcmp@s2))^00h,c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp)^00h,c,w
iorwf	(1+?_strcmp)^00h,c,w
	btfss	status,2
	goto	u891
	goto	u890

u891:
	goto	l1537
u890:
	line	59
	
l1535:
		movlw	low(STR_2)
	movwf	((c:printf@f))^00h,c

	movlw	high(01h)
	movwf	(1+((c:?_printf)+01h))^00h,c
	movlw	low(01h)
	movwf	(0+((c:?_printf)+01h))^00h,c
		movlw	low(STR_3)
	movwf	(0+((c:?_printf)+03h))^00h,c
	movf	(0+((c:?_printf)+03h))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	(1+((c:?_printf)+03h))^00h,c

	movlw	high(0)
	movwf	(1+((c:?_printf)+05h))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+05h))^00h,c
	movlw	high(0)
	movwf	(1+((c:?_printf)+07h))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+07h))^00h,c
	movlw	high(0)
	movwf	(1+((c:?_printf)+09h))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+09h))^00h,c
	movlw	high(0)
	movwf	(1+((c:?_printf)+0Bh))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+0Bh))^00h,c
	movlw	high(0Dh)
	movwf	(1+((c:?_printf)+0Dh))^00h,c
	movlw	low(0Dh)
	movwf	(0+((c:?_printf)+0Dh))^00h,c
	call	_printf	;wreg free
	line	60
		movlw	low(STR_4)
	movwf	((c:printf@f))^00h,c

	movlw	high(02h)
	movwf	(1+((c:?_printf)+01h))^00h,c
	movlw	low(02h)
	movwf	(0+((c:?_printf)+01h))^00h,c
		movlw	low(STR_5)
	movwf	(0+((c:?_printf)+03h))^00h,c
	movf	(0+((c:?_printf)+03h))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	(1+((c:?_printf)+03h))^00h,c

	movlw	high(0)
	movwf	(1+((c:?_printf)+05h))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+05h))^00h,c
	movlw	high(0)
	movwf	(1+((c:?_printf)+07h))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+07h))^00h,c
	movlw	high(0)
	movwf	(1+((c:?_printf)+09h))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+09h))^00h,c
	movlw	high(0)
	movwf	(1+((c:?_printf)+0Bh))^00h,c
	movlw	low(0)
	movwf	(0+((c:?_printf)+0Bh))^00h,c
	movlw	high(0Dh)
	movwf	(1+((c:?_printf)+0Dh))^00h,c
	movlw	low(0Dh)
	movwf	(0+((c:?_printf)+0Dh))^00h,c
	call	_printf	;wreg free
	line	61
	goto	l92
	line	62
	
l1537:
		movlw	low(STR_6)
	movwf	((c:printf@f))^00h,c

	movlw	high(0Dh)
	movwf	(1+((c:?_printf)+01h))^00h,c
	movlw	low(0Dh)
	movwf	(0+((c:?_printf)+01h))^00h,c
	call	_printf	;wreg free
	line	64
	
l92:
	return	;funcret
	callstack 0
GLOBAL	__end_of_comandos
	__end_of_comandos:
	signat	_comandos,4217
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    0[COMRAM] PTR const unsigned char 
;;		 -> main@comando(4), 
;;  s2              1    1[COMRAM] PTR const unsigned char 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  r               1    4[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_comandos
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:
;incstack = 0
	callstack 29
	line	37
	
l1403:
	goto	l1407
	line	38
	
l1405:
	incf	((c:strcmp@s1))^00h,c
	line	39
	incf	((c:strcmp@s2))^00h,c
	line	37
	
l1407:
	movff	(c:strcmp@s2),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,??_strcmp+0+0
	movf	((c:strcmp@s1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_strcmp+1+0)^00h,c
	movf	(??_strcmp+0+0)^00h,c,w
	subwf	((??_strcmp+1+0))^00h,c,w
	movwf	((c:strcmp@r))^00h,c
	movf	((c:strcmp@r))^00h,c,w
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1411
u670:
	
l1409:
	movf	((c:strcmp@s1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1405
u680:
	line	41
	
l1411:
	movf	((c:strcmp@r))^00h,c,w
	movwf	((c:?_strcmp))^00h,c
	clrf	((c:?_strcmp+1))^00h,c
	btfsc	((c:?_strcmp))^00h,c,7
	decf	((c:?_strcmp+1))^00h,c
	line	42
	
l819:
	return	;funcret
	callstack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 477 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1   12[COMRAM] PTR const unsigned char 
;;		 -> STR_6(19), STR_4(21), STR_2(21), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  val             2   33[COMRAM] unsigned int 
;;  cp              2   30[COMRAM] PTR const unsigned char 
;;		 -> STR_7(7), ?_printf(2), STR_5(3), STR_3(3), 
;;  len             2    0        unsigned int 
;;  c               1   35[COMRAM] unsigned char 
;;  ap              1   32[COMRAM] PTR void [1]
;;		 -> ?_printf(2), 
;;  prec            1   29[COMRAM] char 
;;  flag            1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        24       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_putch
;; This function is called by:
;;		_comandos
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\doprnt.c"
	line	477
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\doprnt.c"
	line	477
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:
;incstack = 0
	callstack 28
	line	550
	
l1415:
		movlw	low(?_printf+01h)
	movwf	((c:printf@ap))^00h,c

	line	553
	goto	l1483
	line	555
	
l1417:
		movlw	37
	xorwf	((c:printf@c))^00h,c,w
	btfsc	status,2
	goto	u691
	goto	u690

u691:
	goto	l1421
u690:
	line	558
	
l1419:
	movf	((c:printf@c))^00h,c,w
	
	call	_putch
	line	559
	goto	l1483
	line	565
	
l1421:
	movlw	low(0)
	movwf	((c:printf@flag))^00h,c
	line	661
	goto	l1445
	line	760
	
l1423:
	movf	((c:printf@ap))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:printf@cp)
	movff	postdec2,(c:printf@cp+1)
	
l1425:
	movlw	(02h)&0ffh
	addwf	((c:printf@ap))^00h,c
	line	766
	
l1427:
	movf	((c:printf@cp))^00h,c,w
iorwf	((c:printf@cp+1))^00h,c,w
	btfss	status,2
	goto	u701
	goto	u700

u701:
	goto	l1435
u700:
	line	767
	
l1429:
		movlw	low(STR_7)
	movwf	((c:printf@cp))^00h,c
	movf	((c:printf@cp))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:printf@cp+1))^00h,c

	goto	l1435
	line	804
	
l1431:
	movff	(c:printf@cp),tblptrl
	movff	(c:printf@cp+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u717
	tblrd	*
	
	movf	tablat,w
	bra	u710
u717:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u710:
	
	call	_putch
	
l1433:
	infsnz	((c:printf@cp))^00h,c
	incf	((c:printf@cp+1))^00h,c
	line	803
	
l1435:
	movff	(c:printf@cp),tblptrl
	movff	(c:printf@cp+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u727
	tblrd	*
	
	movf	tablat,w
	bra	u720
u727:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u720:
	iorlw	0
	btfss	status,2
	goto	u731
	goto	u730
u731:
	goto	l1431
u730:
	goto	l1483
	line	825
	
l1437:
	movf	((c:printf@ap))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:printf@c))^00h,c
	
l1439:
	movlw	(02h)&0ffh
	addwf	((c:printf@ap))^00h,c
	line	835
	
l1441:
	movf	((c:printf@c))^00h,c,w
	
	call	_putch
	line	836
	goto	l1483
	line	661
	
l1445:
	incf	((c:printf@f))^00h,c
	decf	((c:printf@f))^00h,c,w
	movwf	(??_printf+0+0)^00h,c
	movff	(??_printf+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:printf@c)
	movf	((c:printf@c))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 115
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l149
	xorlw	99^0	; case 99
	skipnz
	goto	l1437
	xorlw	100^99	; case 100
	skipnz
	goto	l1447
	xorlw	105^100	; case 105
	skipnz
	goto	l1447
	xorlw	115^105	; case 115
	skipnz
	goto	l1423
	goto	l1441

	line	1285
	
l1447:
	movf	((c:printf@ap))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l1449:
	movlw	(02h)&0ffh
	addwf	((c:printf@ap))^00h,c
	line	1287
	
l1451:
	btfsc	((c:printf@val+1))^00h,c,7
	goto	u740
	goto	u741

u741:
	goto	l1457
u740:
	line	1288
	
l1453:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag))^00h,c
	line	1289
	
l1455:
	negf	((c:printf@val))^00h,c
	comf	((c:printf@val+1))^00h,c
	btfsc	status,0
	incf	((c:printf@val+1))^00h,c
	line	1331
	
l1457:
	movlw	low(01h)
	movwf	((c:printf@c))^00h,c
	line	1332
	
l1463:
	movf	((c:printf@c))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_dpowers)
	movwf	(??_printf+0+0)^00h,c
	movff	(??_printf+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
		tblrd	*+
	movf	tablat,w
	subwf	((c:printf@val))^00h,c,w
	tblrd	*+
	movf	tablat,w
	subwfb	((c:printf@val+1))^00h,c,w
	btfsc	status,0
	goto	u751
	goto	u750

u751:
	goto	l1467
u750:
	goto	l1471
	line	1331
	
l1467:
	incf	((c:printf@c))^00h,c
	
l1469:
		movlw	5
	xorwf	((c:printf@c))^00h,c,w
	btfss	status,2
	goto	u761
	goto	u760

u761:
	goto	l1463
u760:
	line	1464
	
l1471:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0)^00h,c
	btfsc	status,2
	goto	u771
	goto	u770
u771:
	goto	l1475
u770:
	line	1465
	
l1473:
	movlw	(02Dh)&0ffh
	
	call	_putch
	line	1498
	
l1475:
	movff	(c:printf@c),(c:printf@prec)
	line	1500
	goto	l1481
	line	1515
	
l1477:
	movf	((c:printf@prec))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_dpowers)
	movwf	(??_printf+0+0)^00h,c
	movff	(??_printf+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:___lwdiv@divisor)
	tblrd*-
	
	movff	tablat,(c:___lwdiv@divisor+1)

	movff	(c:printf@val),(c:___lwdiv@dividend)
	movff	(c:printf@val+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	((c:printf@c))^00h,c
	line	1550
	
l1479:
	movf	((c:printf@c))^00h,c,w
	
	call	_putch
	line	1500
	
l1481:
	decf	((c:printf@prec))^00h,c
		incf	((c:printf@prec))^00h,c,w
	btfss	status,2
	goto	u781
	goto	u780

u781:
	goto	l1477
u780:
	line	553
	
l1483:
	incf	((c:printf@f))^00h,c
	decf	((c:printf@f))^00h,c,w
	movwf	(??_printf+0+0)^00h,c
	movff	(??_printf+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:printf@c)
	movf	((c:printf@c))^00h,c,w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l1417
u790:
	line	1567
	
l149:
	return	;funcret
	callstack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 50 in file ".\proyecto_pic.c"
;; Parameters:    Size  Location     Type
;;  caracter        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  caracter        1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	".\proyecto_pic.c"
	line	50
global __ptext5
__ptext5:
psect	text5
	file	".\proyecto_pic.c"
	line	50
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	callstack 30
	movwf	((c:putch@caracter))^00h,c
	line	51
	
l1361:
	line	52
	
l81:
	line	51
	btfss	((c:4004))^0f00h,c,4	;volatile
	goto	u591
	goto	u590
u591:
	goto	l81
u590:
	line	53
	
l84:
	btfss	((c:4026))^0f00h,c,1	;volatile
	goto	u601
	goto	u600
u601:
	goto	l84
u600:
	line	54
	
l1363:
	movff	(c:putch@caracter),(c:3961)	;volatile
	line	55
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    7[COMRAM] unsigned int 
;;  divisor         2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lwmod.c"
	line	7
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	callstack 28
	line	12
	
l1387:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u641
	goto	u640

u641:
	goto	l641
u640:
	line	13
	
l1389:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l1393
	line	15
	
l1391:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l1393:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u651
	goto	u650
u651:
	goto	l1391
u650:
	line	19
	
l1395:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u661
	goto	u660

u661:
	goto	l1399
u660:
	line	20
	
l1397:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l1399:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l1401:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l1395
	line	23
	
l641:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l648:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lwdiv.c"
	line	7
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	callstack 28
	line	13
	
l1365:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l1367:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u611
	goto	u610

u611:
	goto	l631
u610:
	line	15
	
l1369:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l1373
	line	17
	
l1371:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l1373:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u621
	goto	u620
u621:
	goto	l1371
u620:
	line	21
	
l1375:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l1377:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u631
	goto	u630

u631:
	goto	l1383
u630:
	line	23
	
l1379:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l1381:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l1383:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l1385:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l1375
	line	28
	
l631:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l638:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMRAM] unsigned char 
;;  rem             1    3[COMRAM] unsigned char 
;;  counter         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lbmod.c"
	line	4
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:
;incstack = 0
	callstack 30
	movwf	((c:___lbmod@dividend))^00h,c
	line	9
	
l1717:
	movlw	low(08h)
	movwf	((c:___lbmod@counter))^00h,c
	line	10
	movlw	low(0)
	movwf	((c:___lbmod@rem))^00h,c
	line	12
	
l1719:
	bcf	status,0
	rlcf	((c:___lbmod@dividend))^00h,c,w
	rlcf	((c:___lbmod@rem))^00h,c,w
	movwf	((c:___lbmod@rem))^00h,c
	line	13
	
l1721:
	bcf status,0
	rlcf	((c:___lbmod@dividend))^00h,c

	line	14
	
l1723:
		movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c,w
	btfss	status,0
	goto	u1131
	goto	u1130

u1131:
	goto	l1727
u1130:
	line	15
	
l1725:
	movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c
	line	16
	
l1727:
	decfsz	((c:___lbmod@counter))^00h,c
	
	goto	l1719
	line	17
	
l1729:
	movf	((c:___lbmod@rem))^00h,c,w
	line	18
	
l552:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    5[COMRAM] unsigned char 
;;  quotient        1    7[COMRAM] unsigned char 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lbdiv.c"
	line	4
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:
;incstack = 0
	callstack 30
	movwf	((c:___lbdiv@dividend))^00h,c
	line	9
	
l1691:
	movlw	low(0)
	movwf	((c:___lbdiv@quotient))^00h,c
	line	10
	
l1693:
	movf	((c:___lbdiv@divisor))^00h,c,w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1713
u1100:
	line	11
	
l1695:
	movlw	low(01h)
	movwf	((c:___lbdiv@counter))^00h,c
	line	12
	goto	l1701
	line	13
	
l1697:
	bcf status,0
	rlcf	((c:___lbdiv@divisor))^00h,c

	line	14
	
l1699:
	incf	((c:___lbdiv@counter))^00h,c
	line	12
	
l1701:
	
	btfss	((c:___lbdiv@divisor))^00h,c,(7)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l1697
u1110:
	line	17
	
l1703:
	bcf status,0
	rlcf	((c:___lbdiv@quotient))^00h,c

	line	18
		movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c,w
	btfss	status,0
	goto	u1121
	goto	u1120

u1121:
	goto	l1709
u1120:
	line	19
	
l1705:
	movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c
	line	20
	
l1707:
	bsf	(0+(0/8)+(c:___lbdiv@quotient))^00h,c,(0)&7
	line	22
	
l1709:
	bcf status,0
	rrcf	((c:___lbdiv@divisor))^00h,c

	line	23
	
l1711:
	decfsz	((c:___lbdiv@counter))^00h,c
	
	goto	l1703
	line	25
	
l1713:
	movf	((c:___lbdiv@quotient))^00h,c,w
	line	26
	
l546:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   10[COMRAM] unsigned long 
;;  exp1            1   14[COMRAM] unsigned char 
;;  sign1           1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\fttol.c"
	line	44
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	callstack 30
	line	49
	
l1645:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u1021
	bsf	(??___fttol+0+0+1)^00h,c,0
u1021:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1651
u1030:
	line	50
	
l1647:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l526
	line	51
	
l1651:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u1040
u1045:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u1040:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u1045
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l1653:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l1655:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l1657:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l1659:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l1661:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u1050
	goto	u1051

u1051:
	goto	l1673
u1050:
	line	57
	
l1663:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u1061
	goto	u1060

u1061:
	goto	l1669
u1060:
	goto	l1647
	line	60
	
l1669:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l1671:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l1669
	goto	l1683
	line	63
	
l1673:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u1071
	goto	u1070

u1071:
	goto	l1681
u1070:
	goto	l1647
	line	66
	
l1679:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l1681:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l1679
u1080:
	line	70
	
l1683:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l1687
u1090:
	line	71
	
l1685:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l1687:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l526:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMRAM] float 
;;  f2              3   11[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   18[COMRAM] unsigned um
;;  sign            1   22[COMRAM] unsigned char 
;;  cntr            1   21[COMRAM] unsigned char 
;;  exp             1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	callstack 29
	line	67
	
l1585:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)^00h,c
	clrf	(??___ftmul+0+0+2)^00h,c
	rlcf	((c:___ftmul@f1+1))^00h,c,w
	rlcf	(??___ftmul+0+0)^00h,c
	bnc	u951
	bsf	(??___ftmul+0+0+1)^00h,c,0
u951:
	movf	(??___ftmul+0+0)^00h,c,w
	movwf	((c:___ftmul@exp))^00h,c
	movf	((c:___ftmul@exp))^00h,c,w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l1591
u960:
	line	68
	
l1587:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2))^00h,c

	goto	l505
	line	69
	
l1591:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)^00h,c
	clrf	(??___ftmul+0+0+2)^00h,c
	rlcf	((c:___ftmul@f2+1))^00h,c,w
	rlcf	(??___ftmul+0+0)^00h,c
	bnc	u971
	bsf	(??___ftmul+0+0+1)^00h,c,0
u971:
	movf	(??___ftmul+0+0)^00h,c,w
	movwf	((c:___ftmul@sign))^00h,c
	movf	((c:___ftmul@sign))^00h,c,w
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l1597
u980:
	line	70
	
l1593:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2))^00h,c

	goto	l505
	line	71
	
l1597:
	movf	((c:___ftmul@sign))^00h,c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp))^00h,c
	line	72
	
l1599:
	movff	0+((c:___ftmul@f1)+02h),(c:___ftmul@sign)
	line	73
	movf	(0+((c:___ftmul@f2)+02h))^00h,c,w
	xorwf	((c:___ftmul@sign))^00h,c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign))^00h,c
	line	75
	
l1601:
	bsf	(0+(15/8)+(c:___ftmul@f1))^00h,c,(15)&7
	line	77
	
l1603:
	bsf	(0+(15/8)+(c:___ftmul@f2))^00h,c,(15)&7
	line	78
	
l1605:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2))^00h,c

	line	79
	
l1607:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product))^00h,c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2))^00h,c

	line	134
	
l1609:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr))^00h,c
	line	136
	
l1611:
	
	btfss	((c:___ftmul@f1))^00h,c,(0)&7
	goto	u991
	goto	u990
u991:
	goto	l1615
u990:
	line	137
	
l1613:
	movf	((c:___ftmul@f2))^00h,c,w
	addwf	((c:___ftmul@f3_as_product))^00h,c
	movf	((c:___ftmul@f2+1))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+1))^00h,c
	movf	((c:___ftmul@f2+2))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+2))^00h,c

	line	138
	
l1615:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2))^00h,c
	rrcf	((c:___ftmul@f1+1))^00h,c
	rrcf	((c:___ftmul@f1))^00h,c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2))^00h,c
	rlcf	((c:___ftmul@f2+1))^00h,c
	rlcf	((c:___ftmul@f2+2))^00h,c
	line	140
	
l1617:
	decfsz	((c:___ftmul@cntr))^00h,c
	
	goto	l1611
	line	143
	
l1619:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr))^00h,c
	line	145
	
l1621:
	
	btfss	((c:___ftmul@f1))^00h,c,(0)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l1625
u1000:
	line	146
	
l1623:
	movf	((c:___ftmul@f2))^00h,c,w
	addwf	((c:___ftmul@f3_as_product))^00h,c
	movf	((c:___ftmul@f2+1))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+1))^00h,c
	movf	((c:___ftmul@f2+2))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+2))^00h,c

	line	147
	
l1625:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2))^00h,c
	rrcf	((c:___ftmul@f1+1))^00h,c
	rrcf	((c:___ftmul@f1))^00h,c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2))^00h,c
	rrcf	((c:___ftmul@f3_as_product+1))^00h,c
	rrcf	((c:___ftmul@f3_as_product))^00h,c
	line	149
	
l1627:
	decfsz	((c:___ftmul@cntr))^00h,c
	
	goto	l1621
	line	156
	
l1629:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	line	157
	
l505:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[COMRAM] float 
;;  f2              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   33[COMRAM] float 
;;  sign            1   37[COMRAM] unsigned char 
;;  exp             1   36[COMRAM] unsigned char 
;;  cntr            1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\ftdiv.c"
	line	54
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\ftdiv.c"
	line	54
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	callstack 29
	line	63
	
l1539:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u901
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u901:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l1545
u910:
	line	64
	
l1541:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l490
	line	65
	
l1545:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u921
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u921:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l1551
u930:
	line	66
	
l1547:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l490
	line	67
	
l1551:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l1553:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l1555:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l1557:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l1559:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l1561:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l1563:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l1565:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l1567:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l1569:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l1571:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l1573:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u941
	goto	u940

u941:
	goto	l493
u940:
	line	80
	
l1575:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l1577:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l493:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l1579:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l1571
	line	85
	
l1581:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l490:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	callstack 29
	line	36
	
l1633:
	movlw	low(0)
	movwf	((c:___awtoft@sign))^00h,c
	line	37
	
l1635:
	btfsc	((c:___awtoft@c+1))^00h,c,7
	goto	u1010
	goto	u1011

u1011:
	goto	l1641
u1010:
	line	38
	
l1637:
	negf	((c:___awtoft@c))^00h,c
	comf	((c:___awtoft@c+1))^00h,c
	btfsc	status,0
	incf	((c:___awtoft@c+1))^00h,c
	line	39
	
l1639:
	movlw	low(01h)
	movwf	((c:___awtoft@sign))^00h,c
	line	41
	
l1641:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2))^00h,c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp))^00h,c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	line	42
	
l402:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\float.c"
	line	62
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.31\pic\sources\c90\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	callstack 29
	line	64
	
l1485:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u801
	goto	u800
u801:
	goto	l1489
u800:
	
l1487:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u811
	goto	u810

u811:
	goto	l1495
u810:
	line	65
	
l1489:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l424
	line	67
	
l1493:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l1495:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u821
	goto	u820

u821:
	goto	l1493
u820:
	goto	l1501
	line	71
	
l1497:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l1499:
	movlw	low(01h)
	addwf	((c:___ftpack@arg))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2))^00h,c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	70
	
l1501:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u831
	goto	u830

u831:
	goto	l1497
u830:
	goto	l1505
	line	76
	
l1503:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l1505:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u841
	goto	u840
u841:
	goto	l435
u840:
	
l1507:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u851
	goto	u850

u851:
	goto	l1503
u850:
	
l435:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u861
	goto	u860
u861:
	goto	l1511
u860:
	line	80
	
l1509:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l1511:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l1513:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u871
	goto	u870
u871:
	goto	l1517
u870:
	line	84
	
l1515:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l1517:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l424:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_USART_getch

;; *************** function _USART_getch *****************
;; Defined at:
;;		line 15 in file ".\proyecto_pic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	".\proyecto_pic.c"
	line	15
global __ptext15
__ptext15:
psect	text15
	file	".\proyecto_pic.c"
	line	15
	global	__size_of_USART_getch
	__size_of_USART_getch	equ	__end_of_USART_getch-_USART_getch
	
_USART_getch:
;incstack = 0
	callstack 30
	line	16
	
l1521:
	line	18
	
l63:
	line	16
	btfss	((c:4004))^0f00h,c,5	;volatile
	goto	u881
	goto	u880
u881:
	goto	l63
u880:
	line	19
	
l1523:
	movf	((c:3962))^0f00h,c,w	;volatile
	line	20
	
l66:
	return	;funcret
	callstack 0
GLOBAL	__end_of_USART_getch
	__end_of_USART_getch:
	signat	_USART_getch,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
