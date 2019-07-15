EESchema Schematic File Version 4
LIBS:garHAge_v2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2200 3750 0    50   Input ~ 0
VC36
Text HLabel 2200 3850 0    50   Input ~ 0
VC12
Text HLabel 2200 3950 0    50   Input ~ 0
VC45
Text HLabel 2200 4050 0    50   Input ~ 0
VC78
$Comp
L LoadCell-cache:MDB6S D3
U 1 1 5CF47EAD
P 3000 3400
F 0 "D3" V 2947 3741 60  0000 L CNN
F 1 "MDB6S" V 3053 3741 60  0000 L CNN
F 2 "tyler_components:Micro-DIP-4" H 3050 2850 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/MD/MDB10S.pdf" H 3050 3050 60  0001 L CNN
F 4 "MDB6SFSCT-ND" H 3050 2950 60  0001 L CNN "DigiKey Part Number"
	1    3000 3400
	0    1    1    0   
$EndComp
$Comp
L LoadCell-cache:MDB6S D4
U 1 1 5CF47F1C
P 3000 4300
F 0 "D4" V 2947 4641 60  0000 L CNN
F 1 "MDB6S" V 3053 4641 60  0000 L CNN
F 2 "tyler_components:Micro-DIP-4" H 3050 3750 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/MD/MDB10S.pdf" H 3050 3950 60  0001 L CNN
F 4 "MDB6SFSCT-ND" H 3050 3850 60  0001 L CNN "DigiKey Part Number"
	1    3000 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5CF47F7E
P 4100 3850
F 0 "C10" H 4215 3896 50  0000 L CNN
F 1 "100n" H 4215 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 3700 50  0001 C CNN
F 3 "~" H 4100 3850 50  0001 C CNN
	1    4100 3850
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:ZENER D5
U 1 1 5CF48234
P 4550 3850
F 0 "D5" V 4504 3929 50  0000 L CNN
F 1 "SMAJ58A" V 4595 3929 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 4550 3850 50  0001 C CNN
F 3 "" H 4550 3850 50  0000 C CNN
	1    4550 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5CF482B6
P 5150 3350
F 0 "R8" H 5220 3396 50  0000 L CNN
F 1 "24.9k" V 5150 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 3350 50  0001 C CNN
F 3 "~" H 5150 3350 50  0001 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5CF48334
P 5150 4250
F 0 "R9" H 5220 4296 50  0000 L CNN
F 1 "178k" V 5150 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 4250 50  0001 C CNN
F 3 "~" H 5150 4250 50  0001 C CNN
	1    5150 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5CF48351
P 5450 4250
F 0 "R10" H 5520 4296 50  0000 L CNN
F 1 "4420" V 5450 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 4250 50  0001 C CNN
F 3 "~" H 5450 4250 50  0001 C CNN
	1    5450 4250
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:PG02S4805A U3
U 1 1 5CF483E5
P 7950 3750
F 0 "U3" H 7950 4197 60  0000 C CNN
F 1 "PG02S4805A" H 7950 4091 60  0000 C CNN
F 2 "tyler_components:PG02S" H 7550 2900 60  0001 L CNN
F 3 "http://www.deltaww.com/filecenter/products/download/01/0102/datasheet/DS_PG02S.pdf" H 6950 3250 60  0001 L CNN
F 4 "941-1186-ND" H 7650 3350 60  0001 L CNN "DigiKey Part Number"
	1    7950 3750
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:NCP1090 U2
U 1 1 5CF484AA
P 6350 3750
F 0 "U2" H 6375 4147 60  0000 C CNN
F 1 "NCP1090" H 6375 4041 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 3400 60  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/NCP1090-D.PDF" H 6350 3300 60  0001 C CNN
F 4 "NCP1090DGOS-ND" H 6350 3200 60  0001 C CNN "DigiKey Part Number"
	1    6350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3750 2350 3750
Wire Wire Line
	2350 3750 2350 3000
Wire Wire Line
	2350 3000 3000 3000
Wire Wire Line
	3000 3000 3000 3100
Wire Wire Line
	2200 4050 2350 4050
Wire Wire Line
	2350 4050 2350 4700
Wire Wire Line
	2350 4700 3000 4700
Wire Wire Line
	3000 4700 3000 4600
Wire Wire Line
	2700 3400 2550 3400
Wire Wire Line
	2550 3400 2550 4300
Wire Wire Line
	2700 4300 2550 4300
Connection ~ 2550 4300
Wire Wire Line
	2550 4300 2550 4900
Wire Wire Line
	3300 3400 3500 3400
Wire Wire Line
	3500 3400 3500 3000
Wire Wire Line
	3300 4300 3500 4300
Wire Wire Line
	3500 4300 3500 3400
Connection ~ 3500 3400
Wire Wire Line
	2200 3950 3000 3950
Wire Wire Line
	3000 3950 3000 4000
Wire Wire Line
	2200 3850 3000 3850
Wire Wire Line
	3000 3850 3000 3700
Wire Wire Line
	5750 4900 5750 3900
Wire Wire Line
	5750 3900 5850 3900
Wire Wire Line
	5450 4400 5450 4900
Connection ~ 5450 4900
Wire Wire Line
	5450 4900 5750 4900
Wire Wire Line
	5150 4400 5150 4900
Connection ~ 5150 4900
Wire Wire Line
	5150 4900 5450 4900
Wire Wire Line
	4550 4050 4550 4900
Wire Wire Line
	2550 4900 4100 4900
Connection ~ 4550 4900
Wire Wire Line
	4550 4900 5150 4900
Wire Wire Line
	4100 4000 4100 4900
Connection ~ 4100 4900
Wire Wire Line
	4100 4900 4550 4900
Wire Wire Line
	3500 3000 4100 3000
Wire Wire Line
	5150 3000 5150 3200
Wire Wire Line
	4100 3700 4100 3000
Connection ~ 4100 3000
Wire Wire Line
	4100 3000 4550 3000
Wire Wire Line
	4550 3650 4550 3000
Connection ~ 4550 3000
Wire Wire Line
	4550 3000 5150 3000
Wire Wire Line
	5150 3500 5150 3600
Wire Wire Line
	5150 3600 5850 3600
Wire Wire Line
	5450 4100 5450 3800
Wire Wire Line
	5450 3800 5850 3800
Wire Wire Line
	5150 4100 5150 3700
Wire Wire Line
	5150 3700 5850 3700
Wire Wire Line
	6900 3600 6900 3550
Wire Wire Line
	6900 3550 7200 3550
Wire Wire Line
	7450 3950 7200 3950
Wire Wire Line
	6900 3950 6900 3900
Wire Wire Line
	5150 3000 7200 3000
Wire Wire Line
	7200 3000 7200 3550
Connection ~ 5150 3000
Connection ~ 7200 3550
Wire Wire Line
	7200 3550 7450 3550
$Comp
L Device:CP1 C11
U 1 1 5CF4D7E3
P 7200 3750
F 0 "C11" H 7315 3796 50  0000 L CNN
F 1 "22u" H 7315 3705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7200 3750 50  0001 C CNN
F 3 "~" H 7200 3750 50  0001 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3550 7200 3600
Wire Wire Line
	7200 3900 7200 3950
Connection ~ 7200 3950
Wire Wire Line
	7200 3950 6900 3950
NoConn ~ 7450 3750
NoConn ~ 6900 3700
NoConn ~ 8350 3700
NoConn ~ 8350 3800
NoConn ~ 6900 3800
$Comp
L Device:C C12
U 1 1 5CF51D26
P 8800 3750
F 0 "C12" H 8915 3796 50  0000 L CNN
F 1 "10u" H 8915 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8838 3600 50  0001 C CNN
F 3 "~" H 8800 3750 50  0001 C CNN
	1    8800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3550 8800 3550
Wire Wire Line
	8800 3550 8800 3600
Wire Wire Line
	8450 3950 8800 3950
Wire Wire Line
	8800 3950 8800 3900
Text HLabel 9250 3550 2    50   Output ~ 0
3.3V
Text HLabel 9250 3950 2    50   Output ~ 0
GND
Wire Wire Line
	8800 3550 9250 3550
Connection ~ 8800 3550
Wire Wire Line
	8800 3950 9250 3950
Connection ~ 8800 3950
Text Notes 5000 2450 0    98   ~ 20
802.3af Power over Ethernet
$EndSCHEMATC
