# proyecto_FSE
## Contenido
* Simulacion en proteus 8.11
* Interfaz grafica en windows forms usando Visual Studio 2017 C#
* Firmware PIC18f4550, lenguaje C usnado XC8
### Compilar firmware
```
xc8 --CHIP=18f4550 firmware.c
```
### Descripcion general
* Control de 2 ventiladores independientes con PWM por hardware
* Control de tiras led RGB WS2812, 2 tiras independientes de 4 leds cada una 
* Control usando UART RS232 a 9600 baudios
* Velocidad de funcionamiento Oscilador externo 40Mhz, 96Mhz de forma interna

### Nota
Eres libre de usar este proyecto a tu conveniencia, si te sirve deja una estrella al repositorio.