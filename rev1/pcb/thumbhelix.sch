EESchema Schematic File Version 2
LIBS:thumbhelix-rescue
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
LIBS:attiny85-20sur
LIBS:Joystick
LIBS:thumbhelix-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "thumbhelix"
Date "2018-04-24"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-20SU U1
U 1 1 5AC75EA7
P 7800 3100
F 0 "U1" H 6650 3500 50  0000 C CNN
F 1 "ATTINY85-20SU" H 8800 2700 50  0000 C CNN
F 2 "Atmel:ATTINY85-20SUR" H 8750 3100 50  0001 C CIN
F 3 "" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
Text GLabel 5150 3050 0    60   Input ~ 0
SCK
Text GLabel 5150 2850 0    60   Input ~ 0
SDA
Text GLabel 5450 2750 0    60   Input ~ 0
MOSI
Text GLabel 5450 2950 0    60   Input ~ 0
MISO
Text GLabel 5150 3350 0    60   Input ~ 0
RST
Text GLabel 9350 2850 2    60   Input ~ 0
VCC
Text GLabel 9350 3350 2    60   Input ~ 0
GND
Text GLabel 6400 4400 0    60   Input ~ 0
VCC
Text GLabel 6400 4600 0    60   Input ~ 0
GND
Wire Wire Line
	6450 3150 5950 3150
Wire Wire Line
	5950 3150 5950 3950
Wire Wire Line
	5950 3950 7600 3950
Wire Wire Line
	7600 3950 7600 4400
Wire Wire Line
	7600 4400 7200 4400
Wire Wire Line
	7200 4600 7800 4600
Wire Wire Line
	7800 4600 7800 3850
Wire Wire Line
	7800 3850 6100 3850
Wire Wire Line
	6100 3850 6100 3250
Wire Wire Line
	6100 3250 6450 3250
Wire Wire Line
	5150 3050 6450 3050
Wire Wire Line
	5150 2850 6450 2850
Wire Wire Line
	5450 2950 6450 2950
Wire Wire Line
	5150 3350 6450 3350
Connection ~ 5600 2850
Wire Wire Line
	5600 2750 5600 2850
Wire Wire Line
	5450 2750 5600 2750
$Comp
L SW_Push SW1
U 1 1 5AC8F938
P 4150 4600
F 0 "SW1" H 4200 4700 50  0000 L CNN
F 1 "SW_Push" H 4150 4540 50  0000 C CNN
F 2 "Keyswitch:KEYSWITCH" H 4150 4800 50  0001 C CNN
F 3 "" H 4150 4800 50  0001 C CNN
	1    4150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4600 4700 4600
Text GLabel 3650 4600 0    60   Input ~ 0
GND
Wire Wire Line
	3650 4600 3950 4600
Wire Wire Line
	6600 4400 6400 4400
Wire Wire Line
	6400 4600 6600 4600
Wire Wire Line
	9350 2850 9150 2850
Wire Wire Line
	9150 3350 9350 3350
$Comp
L CONN_01X06 P1
U 1 1 5AC94C34
P 3650 2050
F 0 "P1" H 3650 2400 50  0000 C CNN
F 1 "ICSP" V 3750 2050 50  0000 C CNN
F 2 "Conn:Conn_02x03" H 3650 2050 50  0001 C CNN
F 3 "" H 3650 2050 50  0000 C CNN
	1    3650 2050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04 P2
U 1 1 5AC94EDB
P 3650 3000
F 0 "P2" H 3650 3250 50  0000 C CNN
F 1 "I2C" V 3750 3000 50  0000 C CNN
F 2 "Conn:Conn_02x02" H 3650 3000 50  0001 C CNN
F 3 "" H 3650 3000 50  0000 C CNN
	1    3650 3000
	-1   0    0    1   
$EndComp
Text GLabel 4150 1850 2    60   Input ~ 0
MOSI
Text GLabel 4150 2300 2    60   Input ~ 0
MISO
Text GLabel 4150 2000 2    60   Input ~ 0
SCK
Text GLabel 4150 1700 2    60   Input ~ 0
RST
Text GLabel 4150 2150 2    60   Input ~ 0
VCC
Text GLabel 4150 1550 2    60   Input ~ 0
GND
Text GLabel 4100 3200 2    60   Input ~ 0
SDA
Text GLabel 4100 3050 2    60   Input ~ 0
SCL
Text GLabel 4100 2900 2    60   Input ~ 0
VCC
Text GLabel 4100 2750 2    60   Input ~ 0
GND
Text GLabel 5150 3200 0    60   Input ~ 0
SCL
Wire Wire Line
	5250 3050 5250 3200
Wire Wire Line
	5250 3200 5150 3200
Connection ~ 5250 3050
Wire Wire Line
	3850 2300 4150 2300
Wire Wire Line
	4150 2150 4000 2150
Wire Wire Line
	4000 2150 4000 2200
Wire Wire Line
	4000 2200 3850 2200
Wire Wire Line
	3850 2100 4000 2100
Wire Wire Line
	4000 2100 4000 2000
Wire Wire Line
	4000 2000 4150 2000
Wire Wire Line
	3850 2000 3950 2000
Wire Wire Line
	3950 2000 3950 1850
Wire Wire Line
	3950 1850 4150 1850
Wire Wire Line
	3850 1900 3900 1900
Wire Wire Line
	3900 1900 3900 1700
Wire Wire Line
	3900 1700 4150 1700
Wire Wire Line
	4150 1550 3850 1550
Wire Wire Line
	3850 1550 3850 1800
Wire Wire Line
	3850 3150 3950 3150
Wire Wire Line
	3950 3150 3950 3200
Wire Wire Line
	3950 3200 4100 3200
Wire Wire Line
	3850 3050 4100 3050
Wire Wire Line
	4100 2900 4050 2900
Wire Wire Line
	4050 2900 4050 2950
Wire Wire Line
	4050 2950 3850 2950
Wire Wire Line
	3850 2850 3950 2850
Wire Wire Line
	3950 2850 3950 2750
Wire Wire Line
	3950 2750 4100 2750
$Comp
L JT8P-3.2T-B10K-1-16Y TS1
U 1 1 5AC9AF59
P 6900 4500
F 0 "TS1" H 6900 4800 60  0000 C CNN
F 1 "JT8P-3.2T-B10K-1-16Y" H 6950 4200 60  0000 C CNN
F 2 "Joystick:JT8P-3.2T-B10K-1-16Y" H 7050 4350 60  0001 C CNN
F 3 "" H 7050 4350 60  0000 C CNN
	1    6900 4500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AC9B6F2
P 4850 4600
F 0 "R2" V 4930 4600 50  0000 C CNN
F 1 "470" V 4850 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 4600 50  0001 C CNN
F 3 "" H 4850 4600 50  0001 C CNN
	1    4850 4600
	0    1    1    0   
$EndComp
Text GLabel 5150 4600 2    60   Input ~ 0
VCC
Wire Wire Line
	5150 4600 5000 4600
Wire Wire Line
	4550 4100 4550 4600
Connection ~ 4550 4600
Wire Wire Line
	5600 2950 5600 4100
Connection ~ 5600 2950
$Comp
L Jumper JP1
U 1 1 5AC9DEEA
P 5300 4100
F 0 "JP1" H 5300 4250 50  0000 C CNN
F 1 "Jumper" H 5300 4020 50  0000 C CNN
F 2 "Conn:Conn_01x02" H 5300 4100 50  0001 C CNN
F 3 "" H 5300 4100 50  0001 C CNN
	1    5300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4100 4550 4100
$EndSCHEMATC
