EESchema Schematic File Version 4
LIBS:eqdriver-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Dual axis motor controller for equatorial mount telescopes"
Date "2020-04-14"
Rev "1.0.0"
Comp "Dilshan R Jayakody"
Comment1 "jayakody2000lk@gmail.com"
Comment2 "http://jayakody2000lk.blogspot.com"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_PIC16:PIC16F88-IP U1
U 1 1 5E951860
P 2550 1750
F 0 "U1" H 3450 2350 50  0000 C CNN
F 1 "PIC16F88-IP" H 1850 1150 50  0000 C CNN
F 2 "" H 2550 1750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/30487D.pdf" H 2550 1750 50  0001 C CNN
	1    2550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E952692
P 2550 2600
F 0 "#PWR?" H 2550 2350 50  0001 C CNN
F 1 "GND" H 2555 2427 50  0000 C CNN
F 2 "" H 2550 2600 50  0001 C CNN
F 3 "" H 2550 2600 50  0001 C CNN
	1    2550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2450 2550 2600
$Comp
L power:+5V #PWR?
U 1 1 5E95335A
P 2550 900
F 0 "#PWR?" H 2550 750 50  0001 C CNN
F 1 "+5V" H 2565 1073 50  0000 C CNN
F 2 "" H 2550 900 50  0001 C CNN
F 3 "" H 2550 900 50  0001 C CNN
	1    2550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 900  2550 1050
$Comp
L Device:Crystal Y1
U 1 1 5E95494E
P 4100 2150
F 0 "Y1" H 4100 1850 50  0000 C CNN
F 1 "7.200 MHz" H 4100 1950 50  0000 C CNN
F 2 "" H 4100 2150 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2050 3750 2050
Wire Wire Line
	3750 2050 3750 2150
Wire Wire Line
	3750 2150 3950 2150
Wire Wire Line
	4450 1950 3650 1950
Wire Wire Line
	4450 1950 4450 2150
Wire Wire Line
	4450 2150 4250 2150
$Comp
L Device:C C1
U 1 1 5E955FB5
P 3750 2650
F 0 "C1" H 3865 2696 50  0000 L CNN
F 1 "15pF" H 3865 2605 50  0000 L CNN
F 2 "" H 3788 2500 50  0001 C CNN
F 3 "~" H 3750 2650 50  0001 C CNN
	1    3750 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E9562F0
P 4450 2650
F 0 "C2" H 4565 2696 50  0000 L CNN
F 1 "15pF" H 4565 2605 50  0000 L CNN
F 2 "" H 4488 2500 50  0001 C CNN
F 3 "~" H 4450 2650 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2500 3750 2150
Connection ~ 3750 2150
Wire Wire Line
	4450 2150 4450 2500
Connection ~ 4450 2150
$Comp
L power:GND #PWR?
U 1 1 5E956942
P 3750 2900
F 0 "#PWR?" H 3750 2650 50  0001 C CNN
F 1 "GND" H 3755 2727 50  0000 C CNN
F 2 "" H 3750 2900 50  0001 C CNN
F 3 "" H 3750 2900 50  0001 C CNN
	1    3750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E956CA0
P 4450 2900
F 0 "#PWR?" H 4450 2650 50  0001 C CNN
F 1 "GND" H 4455 2727 50  0000 C CNN
F 2 "" H 4450 2900 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
Text GLabel 3850 1550 2    50   Input ~ 0
SPEED-CON
Text GLabel 3850 1450 2    50   Input ~ 0
RA-ADJ
Text GLabel 3850 1350 2    50   Input ~ 0
DEC-ADJ
Text GLabel 3850 1650 2    50   Input ~ 0
DIRECTION
Text GLabel 3850 1750 2    50   Input ~ 0
STATUS-LED
Text GLabel 3850 1850 2    50   Input ~ 0
MCLR
Wire Wire Line
	3650 1350 3850 1350
Wire Wire Line
	3850 1450 3650 1450
Wire Wire Line
	3650 1550 3850 1550
Wire Wire Line
	3850 1650 3650 1650
Wire Wire Line
	3850 1750 3650 1750
Wire Wire Line
	3650 1850 3850 1850
Text GLabel 1250 1350 0    50   Input ~ 0
DEC-DRV1
Text GLabel 1250 1450 0    50   Input ~ 0
DEC-DRV2
Text GLabel 1250 1550 0    50   Input ~ 0
DEC-DRV3
Text GLabel 1250 1650 0    50   Input ~ 0
DEC-DRV4
Text GLabel 1250 1750 0    50   Input ~ 0
RA-DRV1
Text GLabel 1250 1850 0    50   Input ~ 0
RA-DRV2
Text GLabel 1250 1950 0    50   Input ~ 0
RA-DRV3
Text GLabel 1250 2050 0    50   Input ~ 0
RA-DRV4
Wire Wire Line
	1250 1350 1450 1350
Wire Wire Line
	1450 1450 1250 1450
Wire Wire Line
	1250 1550 1450 1550
Wire Wire Line
	1450 1650 1250 1650
Wire Wire Line
	1250 1750 1450 1750
Wire Wire Line
	1450 1850 1250 1850
Wire Wire Line
	1250 1950 1450 1950
Wire Wire Line
	1450 2050 1250 2050
$Comp
L Switch:SW_Push SW1
U 1 1 5E95F4D5
P 6150 1200
F 0 "SW1" V 6150 1150 50  0000 R CNN
F 1 "DEC-UP" V 6150 1700 50  0000 R CNN
F 2 "" H 6150 1400 50  0001 C CNN
F 3 "~" H 6150 1400 50  0001 C CNN
	1    6150 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E95F8DB
P 6150 2150
F 0 "R2" H 6220 2196 50  0000 L CNN
F 1 "5.6K" H 6220 2105 50  0000 L CNN
F 2 "" V 6080 2150 50  0001 C CNN
F 3 "~" H 6150 2150 50  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E960E3B
P 6150 900
F 0 "#PWR?" H 6150 750 50  0001 C CNN
F 1 "+5V" H 6165 1073 50  0000 C CNN
F 2 "" H 6150 900 50  0001 C CNN
F 3 "" H 6150 900 50  0001 C CNN
	1    6150 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E962E7F
P 6150 1650
F 0 "R1" H 6220 1696 50  0000 L CNN
F 1 "5.6K" H 6220 1605 50  0000 L CNN
F 2 "" V 6080 1650 50  0001 C CNN
F 3 "~" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E96997D
P 6150 2900
F 0 "#PWR?" H 6150 2650 50  0001 C CNN
F 1 "GND" H 6155 2727 50  0000 C CNN
F 2 "" H 6150 2900 50  0001 C CNN
F 3 "" H 6150 2900 50  0001 C CNN
	1    6150 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E969528
P 6150 2600
F 0 "SW2" V 6150 2550 50  0000 R CNN
F 1 "DEC-DW" V 6150 3100 50  0000 R CNN
F 2 "" H 6150 2800 50  0001 C CNN
F 3 "~" H 6150 2800 50  0001 C CNN
	1    6150 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 2800 4450 2900
Wire Wire Line
	3750 2800 3750 2900
Wire Wire Line
	6150 900  6150 1000
Wire Wire Line
	6150 1400 6150 1500
Wire Wire Line
	6150 1800 6150 1900
Wire Wire Line
	6150 2300 6150 2400
Wire Wire Line
	6150 2800 6150 2900
$Comp
L Device:R R3
U 1 1 5E97C058
P 6550 1650
F 0 "R3" H 6620 1696 50  0000 L CNN
F 1 "22K" H 6620 1605 50  0000 L CNN
F 2 "" V 6480 1650 50  0001 C CNN
F 3 "~" H 6550 1650 50  0001 C CNN
	1    6550 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E97C466
P 6550 2150
F 0 "R4" H 6620 2196 50  0000 L CNN
F 1 "22K" H 6620 2105 50  0000 L CNN
F 2 "" V 6480 2150 50  0001 C CNN
F 3 "~" H 6550 2150 50  0001 C CNN
	1    6550 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E97DE75
P 6550 900
F 0 "#PWR?" H 6550 750 50  0001 C CNN
F 1 "+5V" H 6565 1073 50  0000 C CNN
F 2 "" H 6550 900 50  0001 C CNN
F 3 "" H 6550 900 50  0001 C CNN
	1    6550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E97E227
P 6550 2900
F 0 "#PWR?" H 6550 2650 50  0001 C CNN
F 1 "GND" H 6555 2727 50  0000 C CNN
F 2 "" H 6550 2900 50  0001 C CNN
F 3 "" H 6550 2900 50  0001 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 900  6550 1500
Wire Wire Line
	6550 1800 6550 1900
Wire Wire Line
	6550 2300 6550 2900
Wire Wire Line
	6150 1900 6550 1900
Connection ~ 6150 1900
Wire Wire Line
	6150 1900 6150 2000
Connection ~ 6550 1900
Wire Wire Line
	6550 1900 6550 2000
Text GLabel 6850 1900 2    50   Input ~ 0
DEC-ADJ
Wire Wire Line
	6550 1900 6850 1900
$Comp
L Switch:SW_Push SW3
U 1 1 5E982516
P 8050 1200
F 0 "SW3" V 8050 1150 50  0000 R CNN
F 1 "RA-UP" V 8050 1700 50  0000 R CNN
F 2 "" H 8050 1400 50  0001 C CNN
F 3 "~" H 8050 1400 50  0001 C CNN
	1    8050 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E982520
P 8050 2150
F 0 "R6" H 8120 2196 50  0000 L CNN
F 1 "5.6K" H 8120 2105 50  0000 L CNN
F 2 "" V 7980 2150 50  0001 C CNN
F 3 "~" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E98252A
P 8050 900
F 0 "#PWR?" H 8050 750 50  0001 C CNN
F 1 "+5V" H 8065 1073 50  0000 C CNN
F 2 "" H 8050 900 50  0001 C CNN
F 3 "" H 8050 900 50  0001 C CNN
	1    8050 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E982534
P 8050 1650
F 0 "R5" H 8120 1696 50  0000 L CNN
F 1 "5.6K" H 8120 1605 50  0000 L CNN
F 2 "" V 7980 1650 50  0001 C CNN
F 3 "~" H 8050 1650 50  0001 C CNN
	1    8050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E98253E
P 8050 2900
F 0 "#PWR?" H 8050 2650 50  0001 C CNN
F 1 "GND" H 8055 2727 50  0000 C CNN
F 2 "" H 8050 2900 50  0001 C CNN
F 3 "" H 8050 2900 50  0001 C CNN
	1    8050 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5E982548
P 8050 2600
F 0 "SW4" V 8050 2550 50  0000 R CNN
F 1 "RA-DW" V 8050 3100 50  0000 R CNN
F 2 "" H 8050 2800 50  0001 C CNN
F 3 "~" H 8050 2800 50  0001 C CNN
	1    8050 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 900  8050 1000
Wire Wire Line
	8050 1400 8050 1500
Wire Wire Line
	8050 1800 8050 1900
Wire Wire Line
	8050 2300 8050 2400
Wire Wire Line
	8050 2800 8050 2900
$Comp
L Device:R R7
U 1 1 5E982557
P 8450 1650
F 0 "R7" H 8520 1696 50  0000 L CNN
F 1 "22K" H 8520 1605 50  0000 L CNN
F 2 "" V 8380 1650 50  0001 C CNN
F 3 "~" H 8450 1650 50  0001 C CNN
	1    8450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E982561
P 8450 2150
F 0 "R8" H 8520 2196 50  0000 L CNN
F 1 "22K" H 8520 2105 50  0000 L CNN
F 2 "" V 8380 2150 50  0001 C CNN
F 3 "~" H 8450 2150 50  0001 C CNN
	1    8450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E98256B
P 8450 900
F 0 "#PWR?" H 8450 750 50  0001 C CNN
F 1 "+5V" H 8465 1073 50  0000 C CNN
F 2 "" H 8450 900 50  0001 C CNN
F 3 "" H 8450 900 50  0001 C CNN
	1    8450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E982575
P 8450 2900
F 0 "#PWR?" H 8450 2650 50  0001 C CNN
F 1 "GND" H 8455 2727 50  0000 C CNN
F 2 "" H 8450 2900 50  0001 C CNN
F 3 "" H 8450 2900 50  0001 C CNN
	1    8450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 900  8450 1500
Wire Wire Line
	8450 1800 8450 1900
Wire Wire Line
	8450 2300 8450 2900
Wire Wire Line
	8050 1900 8450 1900
Connection ~ 8050 1900
Wire Wire Line
	8050 1900 8050 2000
Connection ~ 8450 1900
Wire Wire Line
	8450 1900 8450 2000
Wire Wire Line
	8450 1900 8750 1900
Text GLabel 8750 1900 2    50   Input ~ 0
RA-ADJ
$Comp
L Device:R_POT RV1
U 1 1 5E9892C9
P 9850 1200
F 0 "RV1" H 9781 1246 50  0000 R CNN
F 1 "100K" H 9781 1155 50  0000 R CNN
F 2 "" H 9850 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E989B5A
P 9850 900
F 0 "#PWR?" H 9850 750 50  0001 C CNN
F 1 "+5V" H 9865 1073 50  0000 C CNN
F 2 "" H 9850 900 50  0001 C CNN
F 3 "" H 9850 900 50  0001 C CNN
	1    9850 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E98AED1
P 9850 1500
F 0 "#PWR?" H 9850 1250 50  0001 C CNN
F 1 "GND" H 9855 1327 50  0000 C CNN
F 2 "" H 9850 1500 50  0001 C CNN
F 3 "" H 9850 1500 50  0001 C CNN
	1    9850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 900  9850 1050
Wire Wire Line
	9850 1350 9850 1500
Text GLabel 10200 1200 2    50   Input ~ 0
SPEED-CON
Wire Wire Line
	10200 1200 10000 1200
$Comp
L Device:R R9
U 1 1 5E98FF36
P 9850 2500
F 0 "R9" H 9920 2546 50  0000 L CNN
F 1 "22K" H 9920 2455 50  0000 L CNN
F 2 "" V 9780 2500 50  0001 C CNN
F 3 "~" H 9850 2500 50  0001 C CNN
	1    9850 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E9903D5
P 9850 2200
F 0 "#PWR?" H 9850 2050 50  0001 C CNN
F 1 "+5V" H 9865 2373 50  0000 C CNN
F 2 "" H 9850 2200 50  0001 C CNN
F 3 "" H 9850 2200 50  0001 C CNN
	1    9850 2200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST_x2 SW5
U 1 1 5E9A16CB
P 9850 3050
F 0 "SW5" V 9896 2962 50  0000 R CNN
F 1 "DIRECTION" V 9805 2962 50  0000 R CNN
F 2 "" H 9850 3050 50  0001 C CNN
F 3 "~" H 9850 3050 50  0001 C CNN
	1    9850 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9A2A13
P 9850 3400
F 0 "#PWR?" H 9850 3150 50  0001 C CNN
F 1 "GND" H 9855 3227 50  0000 C CNN
F 2 "" H 9850 3400 50  0001 C CNN
F 3 "" H 9850 3400 50  0001 C CNN
	1    9850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2200 9850 2350
Wire Wire Line
	9850 2650 9850 2750
Wire Wire Line
	9850 3250 9850 3400
Text GLabel 10100 2750 2    50   Input ~ 0
DIRECTION
Wire Wire Line
	10100 2750 9850 2750
Connection ~ 9850 2750
Wire Wire Line
	9850 2750 9850 2850
$Comp
L Device:LED D1
U 1 1 5E970D9B
P 1800 4300
F 0 "D1" H 1793 4516 50  0000 C CNN
F 1 "LED - RED" H 1793 4425 50  0000 C CNN
F 2 "" H 1800 4300 50  0001 C CNN
F 3 "~" H 1800 4300 50  0001 C CNN
	1    1800 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5E9719EB
P 1800 4600
F 0 "D2" H 1800 4850 50  0000 C CNN
F 1 "LED - GREEN" H 1800 4750 50  0000 C CNN
F 2 "" H 1800 4600 50  0001 C CNN
F 3 "~" H 1800 4600 50  0001 C CNN
	1    1800 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 4300 1550 4300
Wire Wire Line
	1550 4300 1550 4450
Wire Wire Line
	1550 4600 1650 4600
Wire Wire Line
	1950 4300 2050 4300
Wire Wire Line
	2050 4300 2050 4450
Wire Wire Line
	2050 4600 1950 4600
$Comp
L Device:R R9
U 1 1 5E976845
P 2300 4000
F 0 "R9" H 2370 4046 50  0000 L CNN
F 1 "820R" H 2370 3955 50  0000 L CNN
F 2 "" V 2230 4000 50  0001 C CNN
F 3 "~" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5E978360
P 2300 4900
F 0 "R10" H 2370 4946 50  0000 L CNN
F 1 "470R" H 2370 4855 50  0000 L CNN
F 2 "" V 2230 4900 50  0001 C CNN
F 3 "~" H 2300 4900 50  0001 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4150 2300 4450
Wire Wire Line
	2050 4450 2300 4450
Connection ~ 2050 4450
Wire Wire Line
	2050 4450 2050 4600
Connection ~ 2300 4450
Wire Wire Line
	2300 4450 2300 4750
$Comp
L power:+5V #PWR?
U 1 1 5E97C0F2
P 2300 3700
F 0 "#PWR?" H 2300 3550 50  0001 C CNN
F 1 "+5V" H 2315 3873 50  0000 C CNN
F 2 "" H 2300 3700 50  0001 C CNN
F 3 "" H 2300 3700 50  0001 C CNN
	1    2300 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E97CD54
P 2300 5200
F 0 "#PWR?" H 2300 4950 50  0001 C CNN
F 1 "GND" H 2305 5027 50  0000 C CNN
F 2 "" H 2300 5200 50  0001 C CNN
F 3 "" H 2300 5200 50  0001 C CNN
	1    2300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3700 2300 3850
Wire Wire Line
	2300 5050 2300 5200
Text GLabel 1300 4450 0    50   Input ~ 0
STATUS-LED
Wire Wire Line
	1300 4450 1550 4450
Connection ~ 1550 4450
Wire Wire Line
	1550 4450 1550 4600
$Comp
L Driver_Motor:L293 U2
U 1 1 5E998BAD
P 5950 5100
F 0 "U2" H 6300 6050 50  0000 C CNN
F 1 "L293" H 6350 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6200 4350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 5650 5800 50  0001 C CNN
	1    5950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E99B6C7
P 5850 6100
F 0 "#PWR?" H 5850 5850 50  0001 C CNN
F 1 "GND" H 5855 5927 50  0000 C CNN
F 2 "" H 5850 6100 50  0001 C CNN
F 3 "" H 5850 6100 50  0001 C CNN
	1    5850 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E99C59C
P 6150 6100
F 0 "#PWR?" H 6150 5850 50  0001 C CNN
F 1 "GND" H 6155 5927 50  0000 C CNN
F 2 "" H 6150 6100 50  0001 C CNN
F 3 "" H 6150 6100 50  0001 C CNN
	1    6150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5900 5850 6000
Wire Wire Line
	6150 5900 6150 6000
Wire Wire Line
	6050 5900 6050 6000
Wire Wire Line
	6050 6000 6150 6000
Connection ~ 6150 6000
Wire Wire Line
	6150 6000 6150 6100
Wire Wire Line
	5750 5900 5750 6000
Wire Wire Line
	5750 6000 5850 6000
Connection ~ 5850 6000
Wire Wire Line
	5850 6000 5850 6100
$Comp
L power:+6V #PWR?
U 1 1 5E9A7EBA
P 6050 3950
F 0 "#PWR?" H 6050 3800 50  0001 C CNN
F 1 "+6V" H 6065 4123 50  0000 C CNN
F 2 "" H 6050 3950 50  0001 C CNN
F 3 "" H 6050 3950 50  0001 C CNN
	1    6050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3950 6050 4100
$Comp
L power:+5V #PWR?
U 1 1 5E9AA3F3
P 5850 3950
F 0 "#PWR?" H 5850 3800 50  0001 C CNN
F 1 "+5V" H 5865 4123 50  0000 C CNN
F 2 "" H 5850 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4100 5850 3950
Text GLabel 5250 4500 0    50   Input ~ 0
DEC-DRV1
Text GLabel 5250 4700 0    50   Input ~ 0
DEC-DRV2
Text GLabel 5250 5100 0    50   Input ~ 0
DEC-DRV3
Text GLabel 5250 5300 0    50   Input ~ 0
DEC-DRV4
Wire Wire Line
	5250 4500 5450 4500
Wire Wire Line
	5450 4700 5250 4700
Wire Wire Line
	5250 5100 5450 5100
Wire Wire Line
	5450 5300 5250 5300
$Comp
L power:+5V #PWR?
U 1 1 5E9C0123
P 4700 4000
F 0 "#PWR?" H 4700 3850 50  0001 C CNN
F 1 "+5V" H 4715 4173 50  0000 C CNN
F 2 "" H 4700 4000 50  0001 C CNN
F 3 "" H 4700 4000 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4000 4700 4900
Wire Wire Line
	4700 5500 5450 5500
Wire Wire Line
	5450 4900 4700 4900
Connection ~ 4700 4900
Wire Wire Line
	4700 4900 4700 5500
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5E9C6D84
P 7150 4850
F 0 "J1" H 7230 4842 50  0000 L CNN
F 1 "DEC-MOTOR" H 7230 4751 50  0000 L CNN
F 2 "" H 7150 4850 50  0001 C CNN
F 3 "~" H 7150 4850 50  0001 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293 U3
U 1 1 5E9E7D24
P 9350 5100
F 0 "U3" H 9700 6050 50  0000 C CNN
F 1 "L293" H 9750 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9600 4350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 9050 5800 50  0001 C CNN
	1    9350 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9E7D2E
P 9250 6100
F 0 "#PWR?" H 9250 5850 50  0001 C CNN
F 1 "GND" H 9255 5927 50  0000 C CNN
F 2 "" H 9250 6100 50  0001 C CNN
F 3 "" H 9250 6100 50  0001 C CNN
	1    9250 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9E7D38
P 9550 6100
F 0 "#PWR?" H 9550 5850 50  0001 C CNN
F 1 "GND" H 9555 5927 50  0000 C CNN
F 2 "" H 9550 6100 50  0001 C CNN
F 3 "" H 9550 6100 50  0001 C CNN
	1    9550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5900 9250 6000
Wire Wire Line
	9550 5900 9550 6000
Wire Wire Line
	9450 5900 9450 6000
Wire Wire Line
	9450 6000 9550 6000
Connection ~ 9550 6000
Wire Wire Line
	9550 6000 9550 6100
Wire Wire Line
	9150 5900 9150 6000
Wire Wire Line
	9150 6000 9250 6000
Connection ~ 9250 6000
Wire Wire Line
	9250 6000 9250 6100
$Comp
L power:+6V #PWR?
U 1 1 5E9E7D4C
P 9450 3950
F 0 "#PWR?" H 9450 3800 50  0001 C CNN
F 1 "+6V" H 9465 4123 50  0000 C CNN
F 2 "" H 9450 3950 50  0001 C CNN
F 3 "" H 9450 3950 50  0001 C CNN
	1    9450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3950 9450 4100
$Comp
L power:+5V #PWR?
U 1 1 5E9E7D57
P 9250 3950
F 0 "#PWR?" H 9250 3800 50  0001 C CNN
F 1 "+5V" H 9265 4123 50  0000 C CNN
F 2 "" H 9250 3950 50  0001 C CNN
F 3 "" H 9250 3950 50  0001 C CNN
	1    9250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4100 9250 3950
Wire Wire Line
	8650 4500 8850 4500
Wire Wire Line
	8850 4700 8650 4700
Wire Wire Line
	8650 5100 8850 5100
Wire Wire Line
	8850 5300 8650 5300
$Comp
L power:+5V #PWR?
U 1 1 5E9E7D6A
P 8100 4000
F 0 "#PWR?" H 8100 3850 50  0001 C CNN
F 1 "+5V" H 8115 4173 50  0000 C CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4000 8100 4900
Wire Wire Line
	8100 5500 8850 5500
Wire Wire Line
	8850 4900 8100 4900
Connection ~ 8100 4900
Wire Wire Line
	8100 4900 8100 5500
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5E9E7D79
P 10550 4850
F 0 "J2" H 10630 4842 50  0000 L CNN
F 1 "RA-MOTOR" H 10630 4751 50  0000 L CNN
F 2 "" H 10550 4850 50  0001 C CNN
F 3 "~" H 10550 4850 50  0001 C CNN
	1    10550 4850
	1    0    0    -1  
$EndComp
Text GLabel 8650 4500 0    50   Input ~ 0
RA-DRV1
Text GLabel 8650 4700 0    50   Input ~ 0
RA-DRV2
Text GLabel 8650 5100 0    50   Input ~ 0
RA-DRV3
Text GLabel 8650 5300 0    50   Input ~ 0
RA-DRV4
$Comp
L Regulator_Linear:LM350_TO220 U4
U 1 1 5EA2F899
P 1600 6250
F 0 "U4" H 1600 6492 50  0000 C CNN
F 1 "LM350T" H 1600 6401 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1600 6500 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM350.pdf" H 1600 6250 50  0001 C CNN
	1    1600 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5EA3323E
P 1600 6950
F 0 "R11" H 1670 6996 50  0000 L CNN
F 1 "1K" H 1670 6905 50  0000 L CNN
F 2 "" V 1530 6950 50  0001 C CNN
F 3 "~" H 1600 6950 50  0001 C CNN
	1    1600 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA342EC
P 1600 7250
F 0 "#PWR?" H 1600 7000 50  0001 C CNN
F 1 "GND" H 1605 7077 50  0000 C CNN
F 2 "" H 1600 7250 50  0001 C CNN
F 3 "" H 1600 7250 50  0001 C CNN
	1    1600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6550 1600 6650
Wire Wire Line
	1600 7100 1600 7250
$Comp
L Device:R R12
U 1 1 5EA3CF04
P 2050 6650
F 0 "R12" V 1950 6550 50  0000 L CNN
F 1 "270R" V 2150 6550 50  0000 L CNN
F 2 "" V 1980 6650 50  0001 C CNN
F 3 "~" H 2050 6650 50  0001 C CNN
	1    2050 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 6650 1600 6650
Connection ~ 1600 6650
Wire Wire Line
	1600 6650 1600 6800
Wire Wire Line
	1900 6250 2350 6250
Wire Wire Line
	2350 6250 2350 6650
Wire Wire Line
	2350 6650 2200 6650
$Comp
L Device:CP1 C3
U 1 1 5EA47B0F
P 2350 6950
F 0 "C3" H 2465 6996 50  0000 L CNN
F 1 "10MFD / 16V" H 2465 6905 50  0000 L CNN
F 2 "" H 2350 6950 50  0001 C CNN
F 3 "~" H 2350 6950 50  0001 C CNN
	1    2350 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA47FF7
P 2350 7250
F 0 "#PWR?" H 2350 7000 50  0001 C CNN
F 1 "GND" H 2355 7077 50  0000 C CNN
F 2 "" H 2350 7250 50  0001 C CNN
F 3 "" H 2350 7250 50  0001 C CNN
	1    2350 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6800 2350 6650
Connection ~ 2350 6650
Wire Wire Line
	2350 7100 2350 7250
$Comp
L power:+9V #PWR?
U 1 1 5EA53403
P 1100 6050
F 0 "#PWR?" H 1100 5900 50  0001 C CNN
F 1 "+9V" H 1115 6223 50  0000 C CNN
F 2 "" H 1100 6050 50  0001 C CNN
F 3 "" H 1100 6050 50  0001 C CNN
	1    1100 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5EA5A8CE
P 1100 6950
F 0 "C4" H 1250 7000 50  0000 L CNN
F 1 "220MFD / 25V" V 900 6700 50  0000 L CNN
F 2 "" H 1100 6950 50  0001 C CNN
F 3 "~" H 1100 6950 50  0001 C CNN
	1    1100 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA5F35F
P 1100 7250
F 0 "#PWR?" H 1100 7000 50  0001 C CNN
F 1 "GND" H 1105 7077 50  0000 C CNN
F 2 "" H 1100 7250 50  0001 C CNN
F 3 "" H 1100 7250 50  0001 C CNN
	1    1100 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7100 1100 7250
Wire Wire Line
	1100 6050 1100 6250
Wire Wire Line
	1300 6250 1100 6250
Connection ~ 1100 6250
Wire Wire Line
	1100 6250 1100 6800
$Comp
L Regulator_Linear:L7805 U5
U 1 1 5EA83F18
P 3700 6250
F 0 "U5" H 3700 6492 50  0000 C CNN
F 1 "L7805" H 3700 6401 50  0000 C CNN
F 2 "" H 3725 6100 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3700 6200 50  0001 C CNN
	1    3700 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR?
U 1 1 5EA84927
P 3200 6050
F 0 "#PWR?" H 3200 5900 50  0001 C CNN
F 1 "+9V" H 3215 6223 50  0000 C CNN
F 2 "" H 3200 6050 50  0001 C CNN
F 3 "" H 3200 6050 50  0001 C CNN
	1    3200 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EA84FE2
P 4200 6050
F 0 "#PWR?" H 4200 5900 50  0001 C CNN
F 1 "+5V" H 4215 6223 50  0000 C CNN
F 2 "" H 4200 6050 50  0001 C CNN
F 3 "" H 4200 6050 50  0001 C CNN
	1    4200 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA854FC
P 3700 7250
F 0 "#PWR?" H 3700 7000 50  0001 C CNN
F 1 "GND" H 3705 7077 50  0000 C CNN
F 2 "" H 3700 7250 50  0001 C CNN
F 3 "" H 3700 7250 50  0001 C CNN
	1    3700 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR?
U 1 1 5EA85A6D
P 2350 6050
F 0 "#PWR?" H 2350 5900 50  0001 C CNN
F 1 "+6V" H 2365 6223 50  0000 C CNN
F 2 "" H 2350 6050 50  0001 C CNN
F 3 "" H 2350 6050 50  0001 C CNN
	1    2350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6050 2350 6250
Connection ~ 2350 6250
Wire Wire Line
	3200 6050 3200 6250
Wire Wire Line
	3200 6250 3400 6250
Wire Wire Line
	4200 6050 4200 6250
Wire Wire Line
	4200 6250 4000 6250
Wire Wire Line
	3700 6550 3700 7250
$Comp
L Device:CP1 C4
U 1 1 5EA9DC0E
P 4200 6950
F 0 "C4" H 4315 6996 50  0000 L CNN
F 1 "4.7MFD / 16V" H 4315 6905 50  0000 L CNN
F 2 "" H 4200 6950 50  0001 C CNN
F 3 "~" H 4200 6950 50  0001 C CNN
	1    4200 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EAA397A
P 4200 7250
F 0 "#PWR?" H 4200 7000 50  0001 C CNN
F 1 "GND" H 4205 7077 50  0000 C CNN
F 2 "" H 4200 7250 50  0001 C CNN
F 3 "" H 4200 7250 50  0001 C CNN
	1    4200 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6250 4200 6800
Connection ~ 4200 6250
Wire Wire Line
	4200 7100 4200 7250
$Comp
L power:+5V #PWR?
U 1 1 5EAB286C
P 3050 3900
F 0 "#PWR?" H 3050 3750 50  0001 C CNN
F 1 "+5V" H 3065 4073 50  0000 C CNN
F 2 "" H 3050 3900 50  0001 C CNN
F 3 "" H 3050 3900 50  0001 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5EAB2D88
P 3050 4350
F 0 "C5" H 3165 4396 50  0000 L CNN
F 1 "0.47MFD" H 3165 4305 50  0000 L CNN
F 2 "" H 3088 4200 50  0001 C CNN
F 3 "~" H 3050 4350 50  0001 C CNN
	1    3050 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EAB33EF
P 3050 5200
F 0 "#PWR?" H 3050 4950 50  0001 C CNN
F 1 "GND" H 3055 5027 50  0000 C CNN
F 2 "" H 3050 5200 50  0001 C CNN
F 3 "" H 3050 5200 50  0001 C CNN
	1    3050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4500 3050 5200
Wire Wire Line
	3050 3900 3050 4200
$Comp
L power:+5V #PWR?
U 1 1 5EACEF45
P 3800 3900
F 0 "#PWR?" H 3800 3750 50  0001 C CNN
F 1 "+5V" H 3815 4073 50  0000 C CNN
F 2 "" H 3800 3900 50  0001 C CNN
F 3 "" H 3800 3900 50  0001 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EACEF4F
P 3800 4350
F 0 "C6" H 3915 4396 50  0000 L CNN
F 1 "0.47MFD" H 3915 4305 50  0000 L CNN
F 2 "" H 3838 4200 50  0001 C CNN
F 3 "~" H 3800 4350 50  0001 C CNN
	1    3800 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EACEF59
P 3800 5200
F 0 "#PWR?" H 3800 4950 50  0001 C CNN
F 1 "GND" H 3805 5027 50  0000 C CNN
F 2 "" H 3800 5200 50  0001 C CNN
F 3 "" H 3800 5200 50  0001 C CNN
	1    3800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 3800 5200
Wire Wire Line
	3800 3900 3800 4200
$Comp
L power:+5V #PWR?
U 1 1 5EAF542F
P 5000 900
F 0 "#PWR?" H 5000 750 50  0001 C CNN
F 1 "+5V" H 5015 1073 50  0000 C CNN
F 2 "" H 5000 900 50  0001 C CNN
F 3 "" H 5000 900 50  0001 C CNN
	1    5000 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EAF5439
P 5000 1400
F 0 "C7" H 5115 1446 50  0000 L CNN
F 1 "0.1MFD" H 5115 1355 50  0000 L CNN
F 2 "" H 5038 1250 50  0001 C CNN
F 3 "~" H 5000 1400 50  0001 C CNN
	1    5000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EAF5443
P 5000 2250
F 0 "#PWR?" H 5000 2000 50  0001 C CNN
F 1 "GND" H 5005 2077 50  0000 C CNN
F 2 "" H 5000 2250 50  0001 C CNN
F 3 "" H 5000 2250 50  0001 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1550 5000 2250
$Comp
L Connector:Barrel_Jack J3
U 1 1 5EB50B08
P 5900 7000
F 0 "J3" H 5670 7050 50  0000 R CNN
F 1 "DC-9V-IN" H 5670 6959 50  0000 R CNN
F 2 "" H 5950 6960 50  0001 C CNN
F 3 "~" H 5950 6960 50  0001 C CNN
	1    5900 7000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB5F431
P 5400 7300
F 0 "#PWR?" H 5400 7050 50  0001 C CNN
F 1 "GND" H 5405 7127 50  0000 C CNN
F 2 "" H 5400 7300 50  0001 C CNN
F 3 "" H 5400 7300 50  0001 C CNN
	1    5400 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR?
U 1 1 5EB67D66
P 5400 6750
F 0 "#PWR?" H 5400 6600 50  0001 C CNN
F 1 "+9V" H 5415 6923 50  0000 C CNN
F 2 "" H 5400 6750 50  0001 C CNN
F 3 "" H 5400 6750 50  0001 C CNN
	1    5400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7100 5400 7100
Wire Wire Line
	5400 7100 5400 7300
Wire Wire Line
	5600 6900 5400 6900
Wire Wire Line
	5400 6900 5400 6750
Text GLabel 1050 3250 0    50   Input ~ 0
MCLR
$Comp
L Device:R R13
U 1 1 5EBB1866
P 1400 3250
F 0 "R13" H 1470 3296 50  0000 L CNN
F 1 "10K" H 1470 3205 50  0000 L CNN
F 2 "" V 1330 3250 50  0001 C CNN
F 3 "~" H 1400 3250 50  0001 C CNN
	1    1400 3250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EBB3275
P 1750 3050
F 0 "#PWR?" H 1750 2900 50  0001 C CNN
F 1 "+5V" H 1765 3223 50  0000 C CNN
F 2 "" H 1750 3050 50  0001 C CNN
F 3 "" H 1750 3050 50  0001 C CNN
	1    1750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3250 1250 3250
Wire Wire Line
	1550 3250 1750 3250
Wire Wire Line
	1750 3250 1750 3050
Wire Wire Line
	5000 900  5000 1250
Text Notes 1100 7700 0    50   ~ 0
U4 (LM350T) : Heatsink Required
Wire Wire Line
	6450 4500 6850 4500
Wire Wire Line
	6850 4500 6850 4750
Wire Wire Line
	6850 4750 6950 4750
Wire Wire Line
	6450 5300 6850 5300
Wire Wire Line
	6850 5300 6850 4850
Wire Wire Line
	6850 4850 6950 4850
Wire Wire Line
	6950 5050 6750 5050
Wire Wire Line
	6750 5050 6750 4700
Wire Wire Line
	6750 4700 6450 4700
Wire Wire Line
	6950 4950 6650 4950
Wire Wire Line
	6650 4950 6650 5100
Wire Wire Line
	6450 5100 6650 5100
Wire Wire Line
	10350 4750 10250 4750
Wire Wire Line
	10250 4750 10250 4500
Wire Wire Line
	9850 4500 10250 4500
Wire Wire Line
	10350 4850 10250 4850
Wire Wire Line
	10250 4850 10250 5300
Wire Wire Line
	10250 5300 9850 5300
Wire Wire Line
	10350 5050 10150 5050
Wire Wire Line
	10150 5050 10150 4700
Wire Wire Line
	9850 4700 10150 4700
Wire Wire Line
	9850 5100 10050 5100
Wire Wire Line
	10050 5100 10050 4950
Wire Wire Line
	10050 4950 10350 4950
$EndSCHEMATC