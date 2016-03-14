EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:adafruit_huzzah
LIBS:ds18b20
LIBS:huzzah_ct-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Adafruit_HUZZAH U3
U 1 1 56E6FE75
P 5500 3750
F 0 "U3" H 5500 3150 60  0000 C CNN
F 1 "Adafruit_HUZZAH" H 5500 4350 60  0000 C CNN
F 2 "Adafruit_huzzah:Adafruit HUZZAH" H 5400 3400 60  0001 C CNN
F 3 "" H 5400 3400 60  0000 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
$Comp
L MCP3008 U1
U 1 1 56E6FF1E
P 2050 3150
F 0 "U1" H 1600 3600 50  0000 C CNN
F 1 "MCP3008" H 2400 3600 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 1950 3050 50  0001 C CNN
F 3 "" H 2050 3150 50  0000 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
$Comp
L DS18B20 U2
U 1 1 56E6FF7D
P 5500 1800
F 0 "U2" H 5300 2000 50  0000 C CNN
F 1 "DS18B20" H 5500 2000 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 5500 1900 50  0000 C CIN
F 3 "" H 5500 1800 50  0000 C CNN
	1    5500 1800
	1    0    0    -1  
$EndComp
$Comp
L LM317T U4
U 1 1 56E70020
P 3200 1500
F 0 "U4" H 3000 1700 50  0000 C CNN
F 1 "LM317T" H 3200 1700 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 3200 1600 50  0000 C CIN
F 3 "" H 3200 1500 50  0000 C CNN
	1    3200 1500
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 56E70131
P 1300 1100
F 0 "CON1" H 1300 1350 50  0000 C CNN
F 1 "BARREL_JACK" H 1300 900 50  0000 C CNN
F 2 "Connect:JACK_ALIM" H 1300 1100 50  0001 C CNN
F 3 "" H 1300 1100 50  0000 C CNN
	1    1300 1100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56E70875
P 4150 3300
F 0 "R1" V 4230 3300 50  0000 C CNN
F 1 "150" V 4150 3300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4080 3300 50  0001 C CNN
F 3 "" H 4150 3300 50  0000 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
