#define _XTAL_FREQ  8000000L
#include <stdio.h>
#include <string.h>
#include <xc.h>
#include "fuses.h"
//#include "PWM.h"
#define STRIP_SIZE 8
#define pin_strip_led1 LATCbits.LATC6
#define pin_strip_led2 LATCbits.LATC7

char buffer_TX[] = "Temp: xxx grados\r";
char data_in;
int value_adc;
double temp;
char lm35;
int x;
int fan[2] = {0,0};
int fan_select = 0;


volatile unsigned char Strip_RGBData[STRIP_SIZE][3] = {0};
volatile unsigned char Strip_RGBData2[STRIP_SIZE][3] = {0};

//takes a 24bit color and stores it in the array split it in 3 8bit variables 

void ws2812_setPixelColorLed(unsigned char pixel, unsigned long color, unsigned int sel) {
    if(sel == 1){
        Strip_RGBData[pixel][0] = (char) (color >> 16);
        Strip_RGBData[pixel][1] = (char) (color >> 8);
        Strip_RGBData[pixel][2] = (char) (color);
    }else{
        Strip_RGBData2[pixel][0] = (char) (color >> 16);
        Strip_RGBData2[pixel][1] = (char) (color >> 8);
        Strip_RGBData2[pixel][2] = (char) (color);
    }
}
//The same above, but does take separated values, "OVERLOADED FUNCTION" 

void ws2812_setPixelColorRGB(unsigned char pixel, unsigned char r, unsigned char g, unsigned char b, unsigned int sel) {
    if(sel == 1){
        Strip_RGBData[pixel][0] = r;
        Strip_RGBData[pixel][1] = g;
        Strip_RGBData[pixel][2] = b;
    }else{
        Strip_RGBData2[pixel][0] = r;
        Strip_RGBData2[pixel][1] = g;
        Strip_RGBData2[pixel][2] = b;
    }
}
//Makes a 24bit color from 3 8bit color variables 

unsigned long ws2812_Color(unsigned char r, unsigned char g, unsigned char b) {
    return ((unsigned long) r << 16) | ((unsigned long) g << 8) | b;
}
//Output the Strip_RGBData array to the chips 

void ws2812_Show(short sel) {
    unsigned char x, y, z;
    for (x = 0; x < STRIP_SIZE; x++) {
        for (y = 0; y < 3; y++) {
            for (z = 0; z < 8; z++) {
                switch (sel)
                {
                case 1:
                    if (Strip_RGBData[x][y] & (1 << (7 - z))) {
                        pin_strip_led1 = 1;
                    } else {
                        pin_strip_led1 = 0;
                    }
                    break;
                case 2:
                    if (Strip_RGBData2[x][y] & (1 << (7 - z))) {
                        pin_strip_led2 = 1;
                    } else {
                        pin_strip_led2 = 0;
                    }
                    break;
                default:

                    break;
                }
            }
        }
    }
    __delay_us(40);
}

void ws2812_ClearAll() {
    for (int i = 0; i < STRIP_SIZE; i++) {
        for (int j = 0; j < 3; j++) {
            Strip_RGBData[i][j] = 0;
            Strip_RGBData2[i][j] = 0;
        }
    }
    ws2812_Show(1);
    ws2812_Show(2);
}

void ws2812_SetAll(unsigned char value) {
    for (int i = 0; i < STRIP_SIZE; i++) {
        for (int j = 0; j < 3; j++) {
            Strip_RGBData[i][j] = value;
            Strip_RGBData2[i][j] = value;
        }
    }
    ws2812_Show(1);
    ws2812_Show(2);
}

void ws2812_Init() {
    CCPR3L = 255;
    CCPR4L = 255;
    ws2812_Show(1);
    ws2812_Show(2);
}

char USART_getch(){
    while(PIR3bits.RC2IF==0){
        continue;
    }
    return (RCREG2);
}

void putch(char caracter){
    while(PIR3bits.TX2IF==0)
        continue;
    while (!TXSTA2bits.TRMT) {}
    TXREG2=caracter;
}

void set_led_fan(int rgb, int op){
    switch (fan_select)
    {
    case 0:
        Strip_RGBData[0][rgb] += op;
        break;
    case 1:
        Strip_RGBData2[0][rgb] += op;
        break;
    case 2:
        Strip_RGBData[0][rgb] += op;
        Strip_RGBData2[0][rgb] += op;
        break;
    default:
        break;
    }
    if(Strip_RGBData[0][rgb] > 255){
            Strip_RGBData[0][rgb] = 255;
    }else if(Strip_RGBData[0][rgb] < 0){
        Strip_RGBData[0][rgb] = 0;
    }
    if(Strip_RGBData2[0][rgb] > 255){
            Strip_RGBData2[0][rgb] = 255;
    }else if(Strip_RGBData2[0][rgb] < 0){
        Strip_RGBData2[0][rgb] = 0;
    }
}

void set_fan_pwm(int num_fan, int pwm){
    if(fan_select == 2){
        fan[0] = pwm;
        fan[1] = pwm;
        CCPR5L = (255/100)*fan[1];
        CCPR2L = (255/100)*fan[0];
    }else{
        if(num_fan == 0)
            fan[0] = pwm;
            CCPR2L = (255/100)*fan[0];
        else
            fan[1] = pwm;
            CCPR5L = (255/100)*fan[1];
    }
}

void fan_change_pwm(int op){
    if(fan_select == 2){
        set_fan_pwm(fan[0] + op,2);
        set_fan_pwm(fan[1] + op,2);
    }else{
        if(fan_select == 0)
            set_fan_pwm(fan[0] + op,0);
        else
            set_fan_pwm(fan[0] + op,1);
    }
}

void reset_values(){
    set_fan_pwm(0,33);
    set_fan_pwm(1,33);
    ws2812_setPixelColorRGB(0,255,255,255,1);
    ws2812_setPixelColorRGB(0,255,255,255,2);
}

void set_fan_pwm(int newVal){
    
}

void comandos(char *comando){
    if(strcmp(comando,"AA") == 0){
        printf("%d|%s|%d|%d|%d|%d|%c",1,"on",fan[0],Strip_RGBData[0][0],Strip_RGBData[0][1],Strip_RGBData[0][2],13);
        printf("%d|%s|%d|%d|%d|%d|%c",2,"on",fan[1],Strip_RGBData2[0][0],Strip_RGBData2[0][1],Strip_RGBData2[0][2],13);
    }else if(strncmp(comando,"00",2) == 0){
        reset_values();
    }else if(strncmp(comando,"22",2) == 0){
        fan_select = 2;
    }else if(strncmp(comando,"21",2) == 0){
        fan_select = 1;
    }else if(strncmp(comando,"20",2) == 0){
        fan_select = 0;
    }else if(strncmp(comando,"A2",2) == 0){
        set_led_fan(2,1);
    }else if(strncmp(comando,"B2",2) == 0){
        set_led_fan(2,-1);
    }else if(strncmp(comando,"A1",2) == 0){
        set_led_fan(1,1);
    }else if(strncmp(comando,"B1",2) == 0){
        set_led_fan(1,-1);
    }else if(strncmp(comando,"A0",2) == 0){
        set_led_fan(0,1);
    }else if(strncmp(comando,"B0",2) == 0){
        set_led_fan(0,-1);
    }else if(strncmp(comando,"F4",2) == 0){
        fan_change_pwm(-10);
    }else if(strncmp(comando,"F3",2) == 0){
        fan_change_pwm(+10);
    }
}



void configurar_USART2(){
    //Configura Fosc = 8Mhz interno
    OSCCONbits.IRCF = 0b110; //Configura oscilador interno (FOSC = 8Mhz)
    OSCCONbits.SCS = 0b10; // Fuente de Fosc del sistema = interno
    //Configura UART a 9600 baudios
    TRISBbits.TRISB7 = 1; //  Pin RB7 como entrada digital para RX.
    TRISBbits.TRISB6 = 0; //  Pin RB6 como salida digital para TX.
    TXSTA2bits.TX9 = 0; //  Modo-8bits.
    TXSTA2bits.TXEN = 1; //  Habilita Transmisión.
    TXSTA2bits.SYNC = 0; //  Modo-Asíncrono.
    TXSTA2bits.BRGH = 0; //  Modo-Baja Velocidad de Baudios.
    BAUDCON2bits.BRG16 = 0; //  Baudios modo-8bits.
    RCSTA2bits.SPEN = 1; //  Hbilita el Módulo SSP como UART.
    RCSTA2bits.CREN = 1; //  Hbilita el Módulo SSP como UART.
    SPBRG2 = (unsigned char) (((_XTAL_FREQ / 9600) / 64) - 1); //baudios  = 9600
}

void init_PWM(){
    TRISBbits.TRISB5 = 0; //  Pin RB5 como salida digital para TX.
    TRISCbits.TRISC2 = 0; //  Pin RC6 como salida digital para TX.
    TRISCbits.TRISC6 = 0; //  Pin RC6 como salida digital para TX.
    TRISCbits.TRISC7 = 0; //  Pin RC7 como salida digital para TX.
    CCP2CONbits.CCP2M=0b1100; // Modo PWM
    CCP3CONbits.CCP3M=0b1100;
    CCP4CONbits.CCP4M=0b1100;
    CCP5CONbits.CCP5M=0b1100;
    PR2=255;
    T2CONbits.TMR2ON=1;
    T2CONbits.T2CKPS=0b11;
}



void main(void) {
    int contador_comando = 0;
    char comando[4];
    init_PWM();
    configurar_USART2();
    //ADC = 10bits, Tad = 1us, Tacq = 4us, Vref = 5v-0v, RA=ANALOG
    ANCON0bits.ANSEL0 = 1; //  Configura el Puerto como Entrada Analógica.
    ADCON1bits.VCFG = 0b00; //  Selecciona Voltajes de Referencia (5v-0v).
    ADCON0bits.CHS = 0b0000; //  Selecciona el Canal Analógico.
    ADCON2bits.ACQT = 0b010; //  Tiempo de Adquisición 0 Tad.
    ADCON2bits.ADCS = 0b001; //  Tiempo de Conversión FRC.
    ADCON2bits.ADFM = 1; //  Justificación derecha (modo-10bits).
    ADCON0bits.ADON = 1; //  Habilita el Módulo AD.
    ws2812_Init();
    while (1) {
        ws2812_setPixelColorRGB(2, 255,0,255,1);
        ws2812_Show(1);
        ws2812_setPixelColorRGB(2, 255,255,0,2);
        ws2812_Show(2);
        //Inicia el proceso de conversión ADC.
        ADCON0bits.GO_DONE = 1; //Inicia la COnversió AD.
        while (ADCON0bits.GO_DONE); //  Espera a que termine la conversión AD.
        value_adc = ADRESH; //  Lectura de valor AD.
        value_adc = (value_adc << 8) + ADRESL;
        temp = value_adc;
        temp = ((temp * 500.0) / 1023.0)/4;
        lm35 = (char) temp;
        buffer_TX[6] = (lm35 / 100) + '0';
        buffer_TX[7] = (lm35 % 100) / 10 + '0';
        buffer_TX[8] = (lm35 % 100) % 10 + '0';
        data_in=USART_getch();
        switch(data_in){
            case 'T':
            case 't':
                //Inicia el proceso de transmisión TX.
                for (int i = 0; i < 17; i++) {
                    //  espera a que el registro de transmisión este disponible o vacio.
                     
                    //  escribe el dato que se enviará a través de TX.
                    putch(buffer_TX[i]);
                }
                break;
            case 13:
                putch(data_in);
                comandos(comando);
                memset(comando, 0, strlen(comando));
                contador_comando = 0;
                break;
            default:
                if(contador_comando < 2){
                    putch(data_in);//data_in;
                    comando[contador_comando] = data_in;
                    contador_comando++;
                }else{
                    putch(13);
                    comandos(comando);
                    memset(comando, 0, strlen(comando));
                    contador_comando = 0;
                }
                break;
        }
        __delay_ms(100);
    }
}