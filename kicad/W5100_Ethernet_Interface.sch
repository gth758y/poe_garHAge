EESchema Schematic File Version 4
LIBS:garHAge_v2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Device:R R14
U 1 1 5CF6E76C
P 7100 4750
F 0 "R14" V 7200 4750 50  0000 C CNN
F 1 "12.4k" V 7100 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7030 4750 50  0001 C CNN
F 3 "~" H 7100 4750 50  0001 C CNN
	1    7100 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5CF6E80D
P 7450 4250
F 0 "R15" H 7520 4296 50  0000 L CNN
F 1 "1M" V 7450 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 4250 50  0001 C CNN
F 3 "~" H 7450 4250 50  0001 C CNN
	1    7450 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y2
U 1 1 5CF70340
P 6950 4250
F 0 "Y2" V 6904 4381 50  0000 L CNN
F 1 "25MHz" V 6995 4381 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 6950 4250 50  0001 C CNN
F 3 "~" H 6950 4250 50  0001 C CNN
	1    6950 4250
	0    1    1    0   
$EndComp
$Comp
L Device:C C25
U 1 1 5CF7196F
P 7850 4450
F 0 "C25" V 7800 4300 50  0000 C CNN
F 1 "18p" V 7689 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7888 4300 50  0001 C CNN
F 3 "~" H 7850 4450 50  0001 C CNN
	1    7850 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 5CF76108
P 3450 3650
F 0 "C17" H 3150 3700 50  0000 L CNN
F 1 "100n" H 3200 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3488 3500 50  0001 C CNN
F 3 "~" H 3450 3650 50  0001 C CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5CF7619A
P 3850 3650
F 0 "C18" H 3600 3700 50  0000 L CNN
F 1 "100n" H 3600 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3888 3500 50  0001 C CNN
F 3 "~" H 3850 3650 50  0001 C CNN
	1    3850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5CF761DF
P 4250 3650
F 0 "C19" H 4000 3700 50  0000 L CNN
F 1 "100n" H 4000 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 3500 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5CF76224
P 4650 3650
F 0 "C20" H 4400 3700 50  0000 L CNN
F 1 "100n" H 4400 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4688 3500 50  0001 C CNN
F 3 "~" H 4650 3650 50  0001 C CNN
	1    4650 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5CF7626F
P 5050 3650
F 0 "C21" H 4800 3700 50  0000 L CNN
F 1 "100n" H 4800 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5088 3500 50  0001 C CNN
F 3 "~" H 5050 3650 50  0001 C CNN
	1    5050 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5CF71AA1
P 7850 4050
F 0 "C24" V 7800 3900 50  0000 C CNN
F 1 "18p" V 7689 4050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7888 3900 50  0001 C CNN
F 3 "~" H 7850 4050 50  0001 C CNN
	1    7850 4050
	0    1    1    0   
$EndComp
Text HLabel 5250 4450 0    50   Input ~ 0
RD+
Text HLabel 5250 4550 0    50   Input ~ 0
RD-
Text HLabel 5250 4250 0    50   Output ~ 0
TD+
Text HLabel 5250 4350 0    50   Output ~ 0
TD-
$Comp
L power:+3.3V #PWR022
U 1 1 5CFC1BD9
P 5050 2050
F 0 "#PWR022" H 5050 1900 50  0001 C CNN
F 1 "+3.3V" H 5065 2223 50  0000 C CNN
F 2 "" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR025
U 1 1 5CFC8378
P 7200 2050
F 0 "#PWR025" H 7200 1900 50  0001 C CNN
F 1 "+3.3V" H 7215 2223 50  0000 C CNN
F 2 "" H 7200 2050 50  0001 C CNN
F 3 "" H 7200 2050 50  0001 C CNN
	1    7200 2050
	1    0    0    -1  
$EndComp
Text HLabel 10300 1400 2    50   Output ~ 0
MISO
Text HLabel 10300 1500 2    50   Input ~ 0
MOSI
Text HLabel 10300 1200 2    50   Input ~ 0
SS
Text HLabel 10300 1300 2    50   Input ~ 0
SCK
$Comp
L tyler_components:W5500 U4
U 1 1 5D0A74E0
P 6100 2400
F 0 "U4" H 6125 2475 50  0000 C CNN
F 1 "W5500" H 6125 2384 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 6100 2400 50  0001 C CNN
F 3 "" H 6100 2400 50  0001 C CNN
	1    6100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4050 6950 4050
Wire Wire Line
	6950 4100 6950 4050
Connection ~ 6950 4050
Wire Wire Line
	6950 4050 7450 4050
Wire Wire Line
	7450 4100 7450 4050
Connection ~ 7450 4050
Wire Wire Line
	7450 4050 7700 4050
Wire Wire Line
	6600 4450 6950 4450
Wire Wire Line
	7450 4400 7450 4450
Connection ~ 7450 4450
Wire Wire Line
	7450 4450 7700 4450
Wire Wire Line
	6950 4400 6950 4450
Connection ~ 6950 4450
Wire Wire Line
	6950 4450 7450 4450
$Comp
L power:GND #PWR026
U 1 1 5D0C793F
P 7350 5650
F 0 "#PWR026" H 7350 5400 50  0001 C CNN
F 1 "GND" H 7355 5477 50  0000 C CNN
F 2 "" H 7350 5650 50  0001 C CNN
F 3 "" H 7350 5650 50  0001 C CNN
	1    7350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4750 6950 4750
$Comp
L Device:C C23
U 1 1 5D0E5382
P 7800 5050
F 0 "C23" H 7915 5096 50  0000 L CNN
F 1 "4.7u" H 7915 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7838 4900 50  0001 C CNN
F 3 "~" H 7800 5050 50  0001 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4650 7800 4650
Wire Wire Line
	7800 4650 7800 4900
Wire Wire Line
	7250 4750 7350 4750
$Comp
L power:GND #PWR024
U 1 1 5D104937
P 5350 5650
F 0 "#PWR024" H 5350 5400 50  0001 C CNN
F 1 "GND" H 5355 5477 50  0000 C CNN
F 2 "" H 5350 5650 50  0001 C CNN
F 3 "" H 5350 5650 50  0001 C CNN
	1    5350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4850 5350 4850
Wire Wire Line
	5350 4850 5350 4950
Wire Wire Line
	5650 4950 5350 4950
Connection ~ 5350 4950
Wire Wire Line
	5350 4950 5350 5050
Wire Wire Line
	5650 5050 5350 5050
Connection ~ 5350 5050
Wire Wire Line
	5350 5050 5350 5150
Wire Wire Line
	5650 5150 5350 5150
Connection ~ 5350 5150
Wire Wire Line
	5350 5150 5350 5250
Wire Wire Line
	5650 5250 5350 5250
Connection ~ 5350 5250
Wire Wire Line
	5350 5250 5350 5350
Wire Wire Line
	5650 5350 5350 5350
Connection ~ 5350 5350
Wire Wire Line
	5350 5350 5350 5450
Wire Wire Line
	5650 5450 5350 5450
Connection ~ 5350 5450
Wire Wire Line
	5350 5450 5350 5650
Wire Wire Line
	5650 2650 5050 2650
Wire Wire Line
	5050 2650 5050 2050
Wire Wire Line
	5650 2750 5050 2750
Wire Wire Line
	5050 2750 5050 2650
Connection ~ 5050 2650
Wire Wire Line
	5650 2850 5050 2850
Wire Wire Line
	5050 2850 5050 2750
Connection ~ 5050 2750
Wire Wire Line
	5650 2950 5050 2950
Connection ~ 5050 2850
Wire Wire Line
	5650 3050 5050 3050
Wire Wire Line
	5050 2850 5050 2950
Connection ~ 5050 2950
Wire Wire Line
	5050 2950 5050 3050
Wire Wire Line
	5650 3150 5050 3150
Wire Wire Line
	5050 3150 5050 3050
Connection ~ 5050 3050
Wire Wire Line
	5650 3250 5050 3250
Wire Wire Line
	5050 3250 5050 3150
Connection ~ 5050 3150
NoConn ~ 5650 3450
Wire Wire Line
	3450 3500 3450 3250
Wire Wire Line
	3450 3250 3850 3250
Wire Wire Line
	3850 3500 3850 3250
Connection ~ 3850 3250
Wire Wire Line
	3850 3250 4250 3250
Wire Wire Line
	4250 3500 4250 3250
Connection ~ 4250 3250
Wire Wire Line
	4250 3250 4650 3250
Wire Wire Line
	4650 3500 4650 3250
Connection ~ 4650 3250
Wire Wire Line
	4650 3250 5050 3250
Wire Wire Line
	5050 3500 5050 3250
Wire Wire Line
	3450 3800 3850 3800
Connection ~ 3850 3800
Wire Wire Line
	3850 3800 4250 3800
Connection ~ 4250 3800
Wire Wire Line
	4250 3800 4650 3800
Connection ~ 4650 3800
Wire Wire Line
	4650 3800 5050 3800
$Comp
L power:GND #PWR021
U 1 1 5D1D84FE
P 4250 3950
F 0 "#PWR021" H 4250 3700 50  0001 C CNN
F 1 "GND" H 4255 3777 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3800 4250 3950
Wire Wire Line
	5250 4250 5650 4250
Wire Wire Line
	5650 4350 5250 4350
Wire Wire Line
	5250 4450 5650 4450
Wire Wire Line
	5650 4550 5250 4550
Connection ~ 5050 3250
Wire Wire Line
	10100 1300 10300 1300
Wire Wire Line
	10300 1400 10100 1400
Wire Wire Line
	10100 1500 10300 1500
Wire Wire Line
	10300 1600 10100 1600
$Comp
L Connector_Generic:Conn_02x06_Odd_Even X4
U 1 1 5D24B17A
P 9800 1400
F 0 "X4" H 9850 1817 50  0000 C CNN
F 1 "SPI Disconnect" H 9850 1726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 9800 1400 50  0001 C CNN
F 3 "~" H 9800 1400 50  0001 C CNN
	1    9800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2550 5500 2550
Text HLabel 10300 1700 2    50   Output ~ 0
RESET
Wire Wire Line
	10100 1200 10300 1200
Text HLabel 10300 1600 2    50   Input ~ 0
INT
Wire Wire Line
	10300 1700 10100 1700
$Comp
L Device:C C22
U 1 1 5D2F861E
P 5350 3650
F 0 "C22" H 5150 3750 50  0000 L CNN
F 1 "10n" H 5150 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5388 3500 50  0001 C CNN
F 3 "~" H 5350 3650 50  0001 C CNN
	1    5350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3350 5350 3350
Wire Wire Line
	5350 3350 5350 3500
NoConn ~ 5650 3650
NoConn ~ 5650 3750
NoConn ~ 5650 3850
NoConn ~ 5650 3950
NoConn ~ 5650 4050
NoConn ~ 6600 3650
NoConn ~ 6600 3850
NoConn ~ 6600 4950
NoConn ~ 6600 5050
NoConn ~ 6600 5150
NoConn ~ 6600 5250
NoConn ~ 6600 5350
NoConn ~ 6600 5450
Text GLabel 9300 1200 0    50   Input ~ 0
W_CS
Text GLabel 9300 1300 0    50   Input ~ 0
W_SCLK
Text GLabel 9300 1400 0    50   Input ~ 0
W_MISO
Text GLabel 9300 1500 0    50   Input ~ 0
W_MOSI
Text GLabel 9300 1600 0    50   Input ~ 0
W_INT
Text GLabel 9300 1700 0    50   Input ~ 0
W_RESET
Wire Wire Line
	9300 1200 9600 1200
Wire Wire Line
	9300 1300 9600 1300
Wire Wire Line
	9300 1400 9600 1400
Wire Wire Line
	9300 1500 9600 1500
Wire Wire Line
	9300 1600 9600 1600
Wire Wire Line
	9300 1700 9600 1700
Text GLabel 5500 2550 0    50   Output ~ 0
W_RESET
Text GLabel 7400 2950 2    50   Output ~ 0
W_CS
Text GLabel 7400 3050 2    50   Output ~ 0
W_MISO
Text GLabel 7400 3150 2    50   Output ~ 0
W_MOSI
Text GLabel 7400 3250 2    50   Output ~ 0
W_SCLK
Text GLabel 7400 3350 2    50   Output ~ 0
W_INT
Wire Wire Line
	7400 3050 6600 3050
Wire Wire Line
	6600 3150 7400 3150
Wire Wire Line
	6600 3250 7400 3250
Wire Wire Line
	6600 3350 7400 3350
Wire Wire Line
	6600 2950 7400 2950
$Comp
L Device:R R16
U 1 1 5D2DA984
P 7500 3550
F 0 "R16" V 7600 3550 50  0000 C CNN
F 1 "330" V 7500 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7430 3550 50  0001 C CNN
F 3 "~" H 7500 3550 50  0001 C CNN
	1    7500 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5D2DAA17
P 7500 3750
F 0 "R17" V 7600 3750 50  0000 C CNN
F 1 "330" V 7500 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7430 3750 50  0001 C CNN
F 3 "~" H 7500 3750 50  0001 C CNN
	1    7500 3750
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5D2DAA74
P 8200 3550
F 0 "D6" H 8192 3295 50  0000 C CNN
F 1 "GREEN" H 8192 3386 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8200 3550 50  0001 C CNN
F 3 "~" H 8200 3550 50  0001 C CNN
	1    8200 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5D2DAB22
P 8200 3750
F 0 "D7" H 8200 3650 50  0000 C CNN
F 1 "YELLOW" H 8200 3850 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8200 3750 50  0001 C CNN
F 3 "~" H 8200 3750 50  0001 C CNN
	1    8200 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 3550 7350 3550
Wire Wire Line
	7350 3750 6600 3750
Wire Wire Line
	7650 3550 8050 3550
Wire Wire Line
	7650 3750 8050 3750
$Comp
L power:+3.3V #PWR028
U 1 1 5D2E6868
P 8600 3650
F 0 "#PWR028" H 8600 3500 50  0001 C CNN
F 1 "+3.3V" H 8615 3823 50  0000 C CNN
F 2 "" H 8600 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3550 8600 3550
Wire Wire Line
	8600 3550 8600 3650
Wire Wire Line
	8350 3750 8600 3750
Wire Wire Line
	8600 3750 8600 3650
Connection ~ 8600 3650
$Comp
L power:GND #PWR027
U 1 1 5D2ECFF7
P 7800 5650
F 0 "#PWR027" H 7800 5400 50  0001 C CNN
F 1 "GND" H 7805 5477 50  0000 C CNN
F 2 "" H 7800 5650 50  0001 C CNN
F 3 "" H 7800 5650 50  0001 C CNN
	1    7800 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5D2ED026
P 8600 4450
F 0 "#PWR030" H 8600 4200 50  0001 C CNN
F 1 "GND" H 8605 4277 50  0000 C CNN
F 2 "" H 8600 4450 50  0001 C CNN
F 3 "" H 8600 4450 50  0001 C CNN
	1    8600 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5D2ED08B
P 8600 4050
F 0 "#PWR029" H 8600 3800 50  0001 C CNN
F 1 "GND" H 8605 3877 50  0000 C CNN
F 2 "" H 8600 4050 50  0001 C CNN
F 3 "" H 8600 4050 50  0001 C CNN
	1    8600 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 4750 7350 5650
Wire Wire Line
	7800 5200 7800 5650
Wire Wire Line
	8000 4050 8600 4050
Wire Wire Line
	8000 4450 8600 4450
$Comp
L Device:R R11
U 1 1 5D2F6E96
P 6900 2550
F 0 "R11" V 6850 2750 50  0000 C CNN
F 1 "10k" V 6900 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 2550 50  0001 C CNN
F 3 "~" H 6900 2550 50  0001 C CNN
	1    6900 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5D2F6F05
P 6900 2650
F 0 "R12" V 6850 2850 50  0000 C CNN
F 1 "10k" V 6900 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 2650 50  0001 C CNN
F 3 "~" H 6900 2650 50  0001 C CNN
	1    6900 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5D2F6F63
P 6900 2750
F 0 "R13" V 6850 2950 50  0000 C CNN
F 1 "10k" V 6900 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 2750 50  0001 C CNN
F 3 "~" H 6900 2750 50  0001 C CNN
	1    6900 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2050 7200 2550
Wire Wire Line
	6600 2550 6750 2550
Wire Wire Line
	6750 2650 6600 2650
Wire Wire Line
	6600 2750 6750 2750
Wire Wire Line
	7050 2550 7200 2550
Connection ~ 7200 2550
Wire Wire Line
	7200 2550 7200 2650
Wire Wire Line
	7050 2650 7200 2650
Connection ~ 7200 2650
Wire Wire Line
	7200 2650 7200 2750
Wire Wire Line
	7050 2750 7200 2750
Wire Notes Line style solid
	8400 500  8400 2100
Wire Notes Line style solid
	8400 2100 11200 2100
Text Notes 8500 900  0    98   ~ 20
W5500 SPI Disconnect\nfor Programming
Text Notes 4950 1550 0    98   ~ 20
W5500 Ethernet Network Access
$Comp
L Device:C C16
U 1 1 5D4C3A20
P 3000 3650
F 0 "C16" H 2750 3700 50  0000 L CNN
F 1 "100n" H 2750 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3038 3500 50  0001 C CNN
F 3 "~" H 3000 3650 50  0001 C CNN
	1    3000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5D4C3A70
P 2550 3650
F 0 "C15" H 2300 3700 50  0000 L CNN
F 1 "100n" H 2300 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2588 3500 50  0001 C CNN
F 3 "~" H 2550 3650 50  0001 C CNN
	1    2550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3250 3000 3250
Wire Wire Line
	3000 3250 3000 3500
Connection ~ 3450 3250
Wire Wire Line
	3000 3250 2550 3250
Wire Wire Line
	2550 3250 2550 3500
Connection ~ 3000 3250
Wire Wire Line
	3000 3800 3450 3800
Connection ~ 3450 3800
Wire Wire Line
	2550 3800 3000 3800
Connection ~ 3000 3800
$Comp
L power:GND #PWR023
U 1 1 5D4D1075
P 5350 3950
F 0 "#PWR023" H 5350 3700 50  0001 C CNN
F 1 "GND" H 5355 3777 50  0000 C CNN
F 2 "" H 5350 3950 50  0001 C CNN
F 3 "" H 5350 3950 50  0001 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3800 5350 3950
$Comp
L Device:CP1 C14
U 1 1 5D4D49BC
P 2100 3650
F 0 "C14" H 1850 3700 50  0000 L CNN
F 1 "10u/16V" H 1750 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2100 3650 50  0001 C CNN
F 3 "~" H 2100 3650 50  0001 C CNN
	1    2100 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C13
U 1 1 5D4D4A86
P 1700 3650
F 0 "C13" H 1450 3700 50  0000 L CNN
F 1 "10u/16V" H 1350 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1700 3650 50  0001 C CNN
F 3 "~" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3500 2100 3250
Wire Wire Line
	2100 3250 2550 3250
Connection ~ 2550 3250
Wire Wire Line
	2100 3250 1700 3250
Wire Wire Line
	1700 3250 1700 3500
Connection ~ 2100 3250
Wire Wire Line
	1700 3800 2100 3800
Wire Wire Line
	2100 3800 2550 3800
Connection ~ 2100 3800
Connection ~ 2550 3800
$EndSCHEMATC
