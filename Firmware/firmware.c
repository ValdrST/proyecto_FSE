// CONFIG1L
#pragma config PLLDIV = 5         // PLL Prescaler Selection bits (Divide by 5 (40 MHz oscillator input))
#pragma config CPUDIV = OSC1_PLL2 // System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
#pragma config USBDIV = 1         // USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes directly from the primary oscillator block with no postscale)

// CONFIG1H
#pragma config FOSC = HSPLL_HS // Oscillator Selection bits (HS oscillator, PLL enabled (HSPLL))
#pragma config FCMEN = OFF     // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF      // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = OFF   // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = ON     // Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
#pragma config BORV = 3     // Brown-out Reset Voltage bits (Minimum setting 2.05V)
#pragma config VREGEN = OFF // USB Voltage Regulator Enable bit (USB voltage regulator disabled)

// CONFIG2H
#pragma config WDT = OFF     // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 32768 // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = ON   // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF  // PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
#pragma config LPT1OSC = OFF // Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config MCLRE = ON    // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = ON // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF   // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
#pragma config ICPRT = OFF // Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
#pragma config XINST = OFF // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF // Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
#pragma config CP1 = OFF // Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
#pragma config CP2 = OFF // Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
#pragma config CP3 = OFF // Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)

// CONFIG5H
#pragma config CPB = OFF // Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
#pragma config CPD = OFF // Data EEPROM Code Protection bit (Data EEPROM is not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF // Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
#pragma config WRT1 = OFF // Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
#pragma config WRT2 = OFF // Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
#pragma config WRT3 = OFF // Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)

// CONFIG6H
#pragma config WRTC = OFF // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
#pragma config WRTB = OFF // Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
#pragma config WRTD = OFF // Data EEPROM Write Protection bit (Data EEPROM is not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF // Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF // Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF // Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF // Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF // Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 48000000
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xc.h>
#include "CVR_neopixel_ws2812.h"

char rv = 0;
char gv = 255;
char bv = 0;
int leds[2] = {0, 0};
int fan[2] = {0, 0};
char data_in;
int sel_leds = 2;
int flag_4 = 0;
int contador_comando = 0;
char comando[16];

void set_secuencia_leds(int secuencia)
{
    if (sel_leds == 2)
    {
        leds[0] = secuencia;
        leds[1] = secuencia;
    }
    else
    {
        leds[sel_leds] = secuencia;
    }
}

void set_sel_leds(int sel)
{
    if (sel <= 2)
        sel_leds = sel;
}

void secuencia_1(int leds_sec)
{
    int color1 = 255;
    int color2 = 0;
    int color3 = 0;
    switch (leds_sec)
    {
    case 0:
        neopixel_setColor(color1, color2, color3, 4, 1);
        break;
    case 1:
        neopixel_setColor1(color1, color2, color3, 4, 1);
        break;
    case 2:
        neopixel_setColor(color1, color2, color3, 4, 1);
        neopixel_setColor1(color1, color2, color3, 4, 1);
        break;
    default:
        break;
    }
    neopixel_reset();
    neopixel_reset1();
}

void secuencia_2(int leds_sec)
{
    int color1 = 255;
    int color2 = 255;
    int color3 = 255;
    switch (leds_sec)
    {
    case 0:
        // SECUENCIA 2 -> SUBE
        for (char c = 1; c < 5; c++)
        {
            neopixel_turnOneLed(c + 1, color1, color2, color3);
            __delay_ms(50);
        }
        // SECUENCIA 2 -> BAJA
        for (char c = 5; c > 0; c--)
        {
            neopixel_offLeds(4, 1);
            neopixel_offLeds(c - 1, 0);
            neopixel_setColor(color1, color2, color3, 1, neopixel_show_changes);
            __delay_ms(50);
        }
        break;
    case 1:
        // SECUENCIA 2 -> SUBE
        for (char c = 1; c < 5; c++)
        {
            neopixel_turnOneLed1(c + 1, color1, color2, color3);
            __delay_ms(50);
        }
        // SECUENCIA 2 -> BAJA
        for (char c = 5; c > 0; c--)
        {
            neopixel_offLeds1(4, 1);
            neopixel_offLeds1(c - 1, 0);
            neopixel_setColor1(color1, color2, color3, 1, neopixel_show_changes);
            __delay_ms(50);
        }
        break;
    case 2:
        // SECUENCIA 2 -> SUBE
        for (char c = 0; c < 4; c++)
        {
            neopixel_turnOneLed(c + 1, color1, color2, color3);
            __delay_ms(50);
        }
        // SECUENCIA 2 -> BAJA
        for (char c = 3; c > 0; c--)
        {
            neopixel_offLeds(4, 1);
            neopixel_offLeds(c - 1, 0);
            neopixel_setColor(color1, color2, color3, 1, neopixel_show_changes);
            __delay_ms(50);
        }
        // SECUENCIA 2 -> SUBE
        for (char c = 0; c < 4; c++)
        {
            neopixel_turnOneLed1(c + 1, color1, color2, color3);
            __delay_ms(50);
        }
        // SECUENCIA 2 -> BAJA
        for (char c = 3; c > 0; c--)
        {
            neopixel_offLeds1(4, 1);
            neopixel_offLeds1(c - 1, 0);
            neopixel_setColor1(color1, color2, color3, 1, neopixel_show_changes);
            __delay_ms(50);
        }
        break;
    default:
        break;
    }
}

void secuencia_3(int leds_sec)
{
    int color11 = 255;
    int color12 = 0;
    int color13 = 255;
    int color21 = 0;
    int color22 = 0;
    int color23 = 255;
    switch (leds_sec)
    {
    case 0:
        //SECUENCIA 3 -> SUBEN TODOS LOS LEDS
        neopixel_turnOneLed(1, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed(2, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(3, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed(4, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(1, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(2, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed(3, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(4, color11, color12, color13);
        __delay_ms(25);
        /*for (char c = 1; c < 5; c++)
        {
            neopixel_turnFromTo(1, c, 255, 0, 0);
            neopixel_offLeds(4, 1);
            __delay_ms(50);
        }
        // SECUENCIA 3 -> BAJAN TODOS LOS LEDS
        for (char c = 1; c < 5; c++)
        {
            neopixel_turnFromTo(5 - c, 4, 255, 0, 0);
            neopixel_offLeds(4, 1);
            __delay_ms(50);
        }*/
        break;
    case 1:
        //SECUENCIA 3 -> SUBEN TODOS LOS LEDS
        neopixel_turnOneLed1(1, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(2, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(3, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(4, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(1, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(2, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(3, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(4, color11, color12, color13);
        __delay_ms(25);
        break;
    case 2:
        neopixel_turnOneLed(1, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed(2, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(3, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed(4, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(1, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(2, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed(3, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed(4, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(1, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(2, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(3, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(4, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(1, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(2, color11, color12, color13);
        __delay_ms(25);
        neopixel_turnOneLed1(3, color21, color22, color23);
        __delay_ms(25);
        neopixel_turnOneLed1(4, color11, color12, color13);
        __delay_ms(25);
        break;
    default:
        break;
    }
}

void secuencia_4(int led_sec)
{
    int rgb = 255;
    switch (led_sec)
    {
    case 0:
        for (int i = 255; rgb >= 0; i--)
        {
            rgb = i;
            neopixel_setColor(rgb, 0, 0, 4, neopixel_show_changes);
            neopixel_setColor(rgb, rgb, rgb, 3, neopixel_show_changes);
            neopixel_setColor(0, rgb, 0, 1, neopixel_show_changes);
        }
        break;
    case 1:
        //SECUENCIA 4 LEDS DEL 1 AL 3 ROJOS, LEDS 4 Y 5 VIOLETA LED 6 AL 8 ROJOS
        for (int i = 255; rgb >= 0; i--)
        {
            rgb = i;
            neopixel_setColor1(rgb, 0, 0, 4, neopixel_show_changes);
            neopixel_setColor1(rgb, rgb, rgb, 3, neopixel_show_changes);
            neopixel_setColor1(0, rgb, 0, 1, neopixel_show_changes);
        }
        break;
    case 2:
        //SECUENCIA 4 LEDS DEL 1 AL 3 ROJOS, LEDS 4 Y 5 VIOLETA LED 6 AL 8 ROJOS
        for (int i = 255; rgb >= 0; i--)
        {
            rgb = i;
            neopixel_setColor(rgb, 0, 0, 4, neopixel_show_changes);
            neopixel_setColor(rgb, rgb, rgb, 3, neopixel_show_changes);
            neopixel_setColor(0, rgb, 0, 1, neopixel_show_changes);
        }
        rgb = 255;
        for (int i = 255; rgb >= 0; i--)
        {
            rgb = i;
            neopixel_setColor1(rgb, 0, 0, 4, neopixel_show_changes);
            neopixel_setColor1(rgb, rgb, rgb, 3, neopixel_show_changes);
            neopixel_setColor1(0, rgb, 0, 1, neopixel_show_changes);
        }

        break;
    default:
        break;
    }
}

void loop_secuencia()
{
    int secs_sel;
    for (int i = 0; i < 2; i++)
    {
        secs_sel = leds[i];
        switch (secs_sel)
        {
        case 0:
            secuencia_1(i);
            break;
        case 1:
            secuencia_2(i);
            break;
        case 2:
            secuencia_3(i);
            break;
        case 3:
            secuencia_4(i);
            break;
        default:
            break;
        }
    }
}

void init_PWM()
{
    TRISCbits.TRISC1 = 0;       //  Pin RC6 como salida digital para TX.
    TRISCbits.TRISC2 = 0;       //  Pin RC7 como salida digital para TX.
    CCP1CONbits.CCP1M = 0b1100; // Modo PWM
    CCP2CONbits.CCP2M = 0b1100;
    PR2 = 255;
    T2CONbits.TMR2ON = 1;
    T2CONbits.T2CKPS = 0b11;
    CCPR1L = 0;
    CCPR2L = 0;
}

void set_fan_PWM(int fan_select, int newVal)
{
    switch (fan_select)
    {
    case 0:
        fan[0] = newVal;
        CCPR1L = (255 / 100) * fan[0];
        break;
    case 1:
        fan[1] = newVal;
        CCPR2L = (255 / 100) * fan[1];
        break;
    default:
        break;
    }
}

void configurar_USART()
{
    //Configura UART a 9600 baudios
    TRISCbits.TRISC6 = 0;                                    //  Pin RB6 como salida digital para TX.
    TRISCbits.TRISC7 = 1;                                    //  Pin RB7 como entrada digital para TX.
    TXSTAbits.TX9 = 0;                                       //  Modo-8bits.
    TXSTAbits.TXEN = 1;                                      //  Habilita Transmisión.
    TXSTAbits.SYNC = 0;                                      //  Modo-Asíncrono.
    TXSTAbits.BRGH = 0;                                      //  Modo-Baja Velocidad de Baudios.
    BAUDCONbits.BRG16 = 0;                                   //  Baudios modo-8bits.
    RCSTAbits.SPEN = 1;                                      //  Hbilita el Módulo SSP como UART.
    RCSTAbits.CREN = 1;                                      //  Habilita el modo recepcion continua.
    SPBRG = (unsigned char)(((_XTAL_FREQ / 9600) / 64) - 1); //baudios  = 9600
}

void putch(char caracter)
{
    while (PIR1bits.TXIF == 0)
        continue;
    while (!TXSTAbits.TRMT)
    {
    }
    TXREG = caracter;
}

reset_values()
{
    set_sel_leds(2);
    set_secuencia_leds(0);
    set_fan_PWM(0, 33);
    set_fan_PWM(1, 33);
}

void comandos(char *comando)
{
    char value_pwm[4];
    char verbo[3];
    char sel_led;
    char sel_fan;
    char sel_secuencia[2];
    value_pwm[0] = comando[2];
    value_pwm[1] = comando[3];
    value_pwm[2] = comando[4];
    value_pwm[3] = '\0';
    sel_secuencia[0] = comando[2];
    sel_secuencia[1] = '\0';
    if (strncmp(comando, "AA", 2) == 0)
    {
        printf("%d|%s|%d|", 0, "on", fan[0], 13);
        printf("%d|%s|%d\r", 1, "on", fan[1], 13);
    }
    else if (strncmp(comando, "00", 2) == 0)
    {
        reset_values();
    }
    else if (strncmp(comando, "21", 2) == 0)
    {
        set_fan_PWM(1, atoi(value_pwm));
        printf("%s|%c\r", comando, 1);
    }
    else if (strncmp(comando, "20", 2) == 0)
    {
        set_fan_PWM(0, atoi(value_pwm));
        printf("%s|%c\r", comando, 0);
    }
    else if (strncmp(comando, "22", 2) == 0)
    {
        set_fan_PWM(0, atoi(value_pwm));
        set_fan_PWM(1, atoi(value_pwm));
        printf("%s|%c\r", comando, 0);
        printf("%s|%c\r", comando, 1);
    }
    else if (strncmp(comando, "B2", 2) == 0)
    {
        set_sel_leds(2);
        set_secuencia_leds(atoi(sel_secuencia));
        printf("%s|%c\r", comando, sel_secuencia);
    }
    else if (strncmp(comando, "B1", 2) == 0)
    {
        set_sel_leds(1);
        set_secuencia_leds(atoi(sel_secuencia));
        printf("%s|%c\r", comando, sel_secuencia);
    }
    else if (strncmp(comando, "B0", 2) == 0)
    {
        set_sel_leds(0);
        set_secuencia_leds(atoi(sel_secuencia));
        printf("%s|%c\r", comando, sel_secuencia);
    }
    else if (strncmp(comando, "FF", 2) == 0)
    {
        printf("FSE");
    }
}

void __interrupt() USART_getch()
{
    if (PIR1bits.RCIF == 1)
    {
        if (RCSTAbits.OERR)
        {
            RCSTAbits.CREN = 0;
            NOP();
            RCSTAbits.CREN = 1;
        }
        data_in = RCREG;
        switch (data_in)
        {
        case 13:
            comandos(comando);
            memset(comando, 0, strlen(comando));
            contador_comando = 0;
            break;
        default:
            if (contador_comando < 16)
            {
                comando[contador_comando] = data_in;
                contador_comando++;
            }
            else
            {
                comandos(comando);
                memset(comando, 0, strlen(comando));
                contador_comando = 0;
            }
            break;
        }
    }
}

void main(void)
{

    init_PWM();
    
    INTCONbits.GIE=1;
    INTCONbits.PEIE=1;
    PIR1bits.RCIF=0;
    PIE1bits.RCIE=1;
    IPR1bits.RCIP=1;
    configurar_USART();
    neopixel_init();
    while (1)
    {
        loop_secuencia();
        //data_in = USART_getch();
    }
    return;
}
