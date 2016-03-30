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
P 7750 3050
F 0 "U3" H 7750 2450 60  0000 C CNN
F 1 "Adafruit_HUZZAH" H 7750 3650 60  0000 C CNN
F 2 "Adafruit_huzzah:Adafruit HUZZAH" H 7650 2700 60  0001 C CNN
F 3 "" H 7650 2700 60  0000 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
$Comp
L MCP3008 U1
U 1 1 56E6FF1E
P 4000 5400
F 0 "U1" H 3550 5850 50  0000 C CNN
F 1 "MCP3008" H 4350 5850 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 3900 5300 50  0001 C CNN
F 3 "" H 4000 5400 50  0000 C CNN
	1    4000 5400
	1    0    0    -1  
$EndComp
$Comp
L DS18B20 U2
U 1 1 56E6FF7D
P 3100 6700
F 0 "U2" H 2900 6900 50  0000 C CNN
F 1 "DS18B20" H 3100 6900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3100 6800 50  0000 C CIN
F 3 "" H 3100 6700 50  0000 C CNN
	1    3100 6700
	1    0    0    -1  
$EndComp
$Comp
L LM317T U4
U 1 1 56E70020
P 3000 1300
F 0 "U4" H 2800 1500 50  0000 C CNN
F 1 "LM317T" H 3000 1500 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 3000 1400 50  0000 C CIN
F 3 "" H 3000 1300 50  0000 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 56E70131
P 1250 1350
F 0 "CON1" H 1250 1600 50  0000 C CNN
F 1 "BARREL_JACK" H 1250 1150 50  0000 C CNN
F 2 "Connect:JACK_ALIM" H 1250 1350 50  0001 C CNN
F 3 "" H 1250 1350 50  0000 C CNN
	1    1250 1350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56E70875
P 3000 1900
F 0 "R1" V 3080 1900 50  0000 C CNN
F 1 "150" V 3000 1900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2930 1900 50  0001 C CNN
F 3 "" H 3000 1900 50  0000 C CNN
	1    3000 1900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 56E71E56
P 4900 1800
F 0 "C2" H 4925 1900 50  0000 L CNN
F 1 "10uF" H 4925 1700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 4900 1800 50  0001 C CNN
F 3 "" H 4900 1800 50  0000 C CNN
	1    4900 1800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 56E72069
P 2250 1500
F 0 "C1" H 2275 1600 50  0000 L CNN
F 1 "0.1uF" H 2275 1400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 2250 1500 50  0001 C CNN
F 3 "" H 2250 1500 50  0000 C CNN
	1    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56E72C3E
P 4100 1250
F 0 "R2" V 4180 1250 50  0000 C CNN
F 1 "150" V 4100 1250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4030 1250 50  0001 C CNN
F 3 "" H 4100 1250 50  0000 C CNN
	1    4100 1250
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 56E72C6F
P 3750 1250
F 0 "R3" V 3830 1250 50  0000 C CNN
F 1 "150" V 3750 1250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 3680 1250 50  0001 C CNN
F 3 "" H 3750 1250 50  0000 C CNN
	1    3750 1250
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56E72CB5
P 4450 1250
F 0 "R4" V 4530 1250 50  0000 C CNN
F 1 "150" V 4450 1250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4380 1250 50  0001 C CNN
F 3 "" H 4450 1250 50  0000 C CNN
	1    4450 1250
	0    1    1    0   
$EndComp
$Comp
L GNDREF #PWR01
U 1 1 56E7309D
P 3000 2300
F 0 "#PWR01" H 3000 2050 50  0001 C CNN
F 1 "GNDREF" H 3000 2150 50  0000 C CNN
F 2 "" H 3000 2300 50  0000 C CNN
F 3 "" H 3000 2300 50  0000 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1550 3000 1750
Wire Wire Line
	3000 2050 3000 2300
Wire Wire Line
	2600 1250 1550 1250
Wire Wire Line
	2250 1350 2250 1250
Connection ~ 2250 1250
Wire Wire Line
	2250 1650 2250 2250
Connection ~ 3000 2250
Wire Wire Line
	1550 1450 1550 2250
Connection ~ 2250 2250
Wire Wire Line
	3400 1250 3600 1250
Wire Wire Line
	3900 1250 3950 1250
Wire Wire Line
	4250 1250 4300 1250
Wire Wire Line
	4600 1250 4900 1250
Wire Wire Line
	4900 1250 4900 1650
Connection ~ 4700 1250
Wire Wire Line
	4700 1250 4700 1650
Wire Wire Line
	4700 1650 3000 1650
Connection ~ 3000 1650
Wire Wire Line
	1550 2250 4900 2250
Wire Wire Line
	4900 2250 4900 1950
$EndSCHEMATC
