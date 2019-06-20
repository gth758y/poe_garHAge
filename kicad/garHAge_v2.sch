EESchema Schematic File Version 4
LIBS:garHAge_v2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L dk_Embedded-Microcontrollers:ATMEGA328P-AU U1
U 1 1 5CEEC7D4
P 9150 3600
F 0 "U1" H 9478 3703 60  0000 L CNN
F 1 "ATMEGA328P-AU" H 9478 3597 60  0000 L CNN
F 2 "digikey-footprints:TQFP-32_7x7mm" H 9350 3800 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589968" H 9350 3900 60  0001 L CNN
F 4 "ATMEGA328P-AU-ND" H 9350 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "ATMEGA328P-AU" H 9350 4100 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 9350 4200 60  0001 L CNN "Category"
F 7 "Embedded - Microcontrollers" H 9350 4300 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589968" H 9350 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/ATMEGA328P-AU/ATMEGA328P-AU-ND/1832260" H 9350 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MCU 8BIT 32KB FLASH 32TQFP" H 9350 4600 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 9350 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9350 4800 60  0001 L CNN "Status"
	1    9150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CEC7182
P 6650 4200
F 0 "R5" V 6550 4200 50  0000 C CNN
F 1 "12k" V 6650 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 4200 50  0001 C CNN
F 3 "~" H 6650 4200 50  0001 C CNN
	1    6650 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5CEC7228
P 6900 3850
F 0 "C6" H 7015 3896 50  0000 L CNN
F 1 "100n" H 7015 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6938 3700 50  0001 C CNN
F 3 "~" H 6900 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5CEC727F
P 8750 1700
F 0 "C10" H 8865 1746 50  0000 L CNN
F 1 "100n" H 8865 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8788 1550 50  0001 C CNN
F 3 "~" H 8750 1700 50  0001 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5CEC73C9
P 8200 1700
F 0 "C9" H 8315 1746 50  0000 L CNN
F 1 "100n" H 8315 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8238 1550 50  0001 C CNN
F 3 "~" H 8200 1700 50  0001 C CNN
	1    8200 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5CEC7466
P 8200 1300
F 0 "#PWR014" H 8200 1150 50  0001 C CNN
F 1 "+3.3V" V 8215 1428 50  0000 L CNN
F 2 "" H 8200 1300 50  0001 C CNN
F 3 "" H 8200 1300 50  0001 C CNN
	1    8200 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5CEC751F
P 7050 2550
F 0 "#PWR013" H 7050 2300 50  0001 C CNN
F 1 "GND" V 7055 2422 50  0000 R CNN
F 2 "" H 7050 2550 50  0001 C CNN
F 3 "" H 7050 2550 50  0001 C CNN
	1    7050 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5CEC84AD
P 9250 5250
F 0 "#PWR015" H 9250 5000 50  0001 C CNN
F 1 "GND" H 9255 5077 50  0000 C CNN
F 2 "" H 9250 5250 50  0001 C CNN
F 3 "" H 9250 5250 50  0001 C CNN
	1    9250 5250
	1    0    0    -1  
$EndComp
Text GLabel 8500 3200 0    50   Output ~ 0
SS
Text GLabel 8500 3300 0    50   BiDi ~ 0
MOSI
Text GLabel 8500 3400 0    50   BiDi ~ 0
MISO
Text GLabel 8500 3500 0    50   BiDi ~ 0
SCK
Text GLabel 8500 4300 0    50   Input ~ 0
RXI
Text GLabel 8500 4400 0    50   Output ~ 0
TXO
Text GLabel 8500 2700 0    50   Output ~ 0
D1RELAY
Text GLabel 8500 2400 0    50   Output ~ 0
D2RELAY
Text GLabel 8500 2300 0    50   Output ~ 0
D3RELAY
Wire Wire Line
	8650 2500 8050 2500
Wire Wire Line
	8050 2500 8050 2400
Wire Wire Line
	8650 2600 8050 2600
Wire Wire Line
	8050 2600 8050 2700
Wire Wire Line
	8500 2300 8650 2300
Wire Wire Line
	8500 2400 8650 2400
Wire Wire Line
	8650 3200 8500 3200
Wire Wire Line
	8500 3300 8650 3300
Wire Wire Line
	8650 3400 8500 3400
Wire Wire Line
	8500 3500 8650 3500
Wire Wire Line
	8650 4300 8500 4300
Wire Wire Line
	8500 4400 8650 4400
Wire Wire Line
	8650 2700 8500 2700
Wire Wire Line
	8200 1550 8750 1550
Wire Wire Line
	8200 1300 8200 1550
Connection ~ 8200 1550
Wire Wire Line
	9150 2000 9150 1550
Wire Wire Line
	9150 1550 8750 1550
Connection ~ 8750 1550
Wire Wire Line
	9250 2000 9250 1550
Wire Wire Line
	9250 1550 9150 1550
Connection ~ 9150 1550
Wire Wire Line
	9350 2000 9350 1550
Wire Wire Line
	9350 1550 9250 1550
Connection ~ 9250 1550
$Comp
L power:+3.3V #PWR012
U 1 1 5CEF0147
P 6200 4200
F 0 "#PWR012" H 6200 4050 50  0001 C CNN
F 1 "+3.3V" V 6215 4328 50  0000 L CNN
F 2 "" H 6200 4200 50  0001 C CNN
F 3 "" H 6200 4200 50  0001 C CNN
	1    6200 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 4200 6350 4200
Wire Wire Line
	6800 4200 6900 4200
Wire Wire Line
	6350 4200 6350 4700
Connection ~ 6350 4200
Wire Wire Line
	6350 4200 6500 4200
Text GLabel 6750 3700 0    50   Input ~ 0
DTR
Text GLabel 6750 4450 0    50   Input ~ 0
RST
Wire Wire Line
	6900 4450 6900 4200
Connection ~ 6900 4200
Wire Wire Line
	6750 3700 6900 3700
Wire Wire Line
	6900 4000 6900 4200
NoConn ~ 8650 4600
NoConn ~ 8650 4800
NoConn ~ 8650 3000
NoConn ~ 8650 3100
NoConn ~ 8650 3900
NoConn ~ 8650 4000
NoConn ~ 8650 4100
Wire Wire Line
	9350 5100 9250 5100
Connection ~ 9250 5100
Wire Wire Line
	9250 5100 9150 5100
Wire Wire Line
	7050 2550 7200 2550
Wire Wire Line
	8750 1850 8200 1850
Wire Wire Line
	7200 1850 7200 2400
Connection ~ 8200 1850
Wire Wire Line
	8200 1850 7200 1850
Connection ~ 7200 2550
Wire Wire Line
	8950 4950 9250 4950
Wire Wire Line
	9250 4950 9250 5100
Wire Wire Line
	9250 5250 9250 5100
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J6
U 1 1 5CEFA297
P 5600 1850
F 0 "J6" H 5656 2197 60  0000 C CNN
F 1 "SJ1-2503A" H 5656 2091 60  0000 C CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 5800 2050 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 5800 2150 60  0001 L CNN
F 4 "CP1-2503A-ND" H 5800 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 5800 2350 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 5800 2450 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 5800 2550 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 5800 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 5800 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 5800 2850 60  0001 L CNN "Description"
F 11 "CUI Inc." H 5800 2950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 3050 60  0001 L CNN "Status"
	1    5600 1850
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J7
U 1 1 5CEFA3B9
P 5600 2550
F 0 "J7" H 5656 2897 60  0000 C CNN
F 1 "SJ1-2503A" H 5656 2791 60  0000 C CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 5800 2750 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 5800 2850 60  0001 L CNN
F 4 "CP1-2503A-ND" H 5800 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 5800 3050 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 5800 3150 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 5800 3250 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 5800 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 5800 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 5800 3550 60  0001 L CNN "Description"
F 11 "CUI Inc." H 5800 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 3750 60  0001 L CNN "Status"
	1    5600 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J8
U 1 1 5CEFA403
P 5600 3250
F 0 "J8" H 5656 3597 60  0000 C CNN
F 1 "SJ1-2503A" H 5656 3491 60  0000 C CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 5800 3450 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 5800 3550 60  0001 L CNN
F 4 "CP1-2503A-ND" H 5800 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 5800 3750 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 5800 3850 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 5800 3950 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 5800 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 5800 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 5800 4250 60  0001 L CNN "Description"
F 11 "CUI Inc." H 5800 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 4450 60  0001 L CNN "Status"
	1    5600 3250
	1    0    0    -1  
$EndComp
NoConn ~ 6000 1850
NoConn ~ 6000 1950
NoConn ~ 6000 2550
NoConn ~ 6000 2650
NoConn ~ 6000 3250
NoConn ~ 6000 3350
Wire Wire Line
	6750 4450 6900 4450
$Comp
L power:GND #PWR010
U 1 1 5CF015F8
P 6150 2300
F 0 "#PWR010" H 6150 2050 50  0001 C CNN
F 1 "GND" H 6155 2127 50  0000 C CNN
F 2 "" H 6150 2300 50  0001 C CNN
F 3 "" H 6150 2300 50  0001 C CNN
	1    6150 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5CF0161A
P 6150 3050
F 0 "#PWR011" H 6150 2800 50  0001 C CNN
F 1 "GND" H 6155 2877 50  0000 C CNN
F 2 "" H 6150 3050 50  0001 C CNN
F 3 "" H 6150 3050 50  0001 C CNN
	1    6150 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2750 7200 2700
Wire Wire Line
	6000 2450 6150 2450
Wire Wire Line
	6150 2450 6150 2300
Wire Wire Line
	6000 3150 6150 3150
Wire Wire Line
	6150 3150 6150 3050
$Comp
L LoadCell-rescue:0813-1X1T-57-F J1
U 1 1 5CF16AA1
P 1350 5300
F 0 "J1" H 1481 6287 60  0000 C CNN
F 1 "0813-1X1T-57-F" H 1481 6181 60  0000 C CNN
F 2 "tyler_components:0813-1X1T-57-F_RJ45-Jack" H 750 4300 60  0001 L CNN
F 3 "http://belfuse.com/pdfs/0813-1X1T-57-F.pdf" H 750 4500 60  0001 L CNN
F 4 "507-1421-ND" H 750 4400 60  0001 L CNN "DigiKey Part Number"
	1    1350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CF16B13
P 2950 4600
F 0 "R1" V 2850 4600 50  0000 C CNN
F 1 "49.9" V 2950 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 4600 50  0001 C CNN
F 3 "~" H 2950 4600 50  0001 C CNN
	1    2950 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CF16E9B
P 2950 4800
F 0 "R2" V 2850 4800 50  0000 C CNN
F 1 "49.9" V 2950 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 4800 50  0001 C CNN
F 3 "~" H 2950 4800 50  0001 C CNN
	1    2950 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CF16ECA
P 2950 5000
F 0 "R3" V 2850 5000 50  0000 C CNN
F 1 "49.9" V 2950 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 5000 50  0001 C CNN
F 3 "~" H 2950 5000 50  0001 C CNN
	1    2950 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CF16EFF
P 2950 5200
F 0 "R4" V 2850 5200 50  0000 C CNN
F 1 "49.9" V 2950 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 5200 50  0001 C CNN
F 3 "~" H 2950 5200 50  0001 C CNN
	1    2950 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5CF16F50
P 3750 4700
F 0 "C4" V 3498 4700 50  0000 C CNN
F 1 "100n" V 3589 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 4550 50  0001 C CNN
F 3 "~" H 3750 4700 50  0001 C CNN
	1    3750 4700
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5CF1708A
P 3750 5100
F 0 "C5" V 3498 5100 50  0000 C CNN
F 1 "100n" V 3589 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 4950 50  0001 C CNN
F 3 "~" H 3750 5100 50  0001 C CNN
	1    3750 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5CF170D3
P 3750 4300
F 0 "C3" V 3498 4300 50  0000 C CNN
F 1 "100n" V 3589 4300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 4150 50  0001 C CNN
F 3 "~" H 3750 4300 50  0001 C CNN
	1    3750 4300
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 5CF171C0
P 3300 4050
F 0 "L1" H 3353 4096 50  0000 L CNN
F 1 "1uH" H 3353 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3300 4050 50  0001 C CNN
F 3 "~" H 3300 4050 50  0001 C CNN
	1    3300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4600 2300 4600
Wire Wire Line
	2200 4800 2350 4800
Wire Wire Line
	3100 4600 3300 4600
Wire Wire Line
	3300 4600 3300 4700
Wire Wire Line
	3300 4700 3600 4700
Wire Wire Line
	3100 4800 3300 4800
Wire Wire Line
	3300 4800 3300 4700
Connection ~ 3300 4700
Wire Wire Line
	3100 5000 3300 5000
Wire Wire Line
	3300 5000 3300 5100
Wire Wire Line
	3300 5100 3600 5100
Wire Wire Line
	3100 5200 3300 5200
Wire Wire Line
	3300 5200 3300 5100
Connection ~ 3300 5100
Wire Wire Line
	2200 4700 2500 4700
Wire Wire Line
	2500 4700 2500 4300
Wire Wire Line
	2500 4300 3300 4300
Wire Wire Line
	3300 4200 3300 4300
Connection ~ 3300 4300
Wire Wire Line
	3300 4300 3600 4300
Wire Wire Line
	3900 4300 3900 4700
Connection ~ 3900 4700
Wire Wire Line
	3900 4700 3900 5100
$Comp
L power:GND #PWR06
U 1 1 5CF40531
P 4200 4700
F 0 "#PWR06" H 4200 4450 50  0001 C CNN
F 1 "GND" V 4205 4572 50  0000 R CNN
F 2 "" H 4200 4700 50  0001 C CNN
F 3 "" H 4200 4700 50  0001 C CNN
	1    4200 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 4700 4200 4700
$Comp
L power:+3.3V #PWR03
U 1 1 5CF45556
P 3300 3750
F 0 "#PWR03" H 3300 3600 50  0001 C CNN
F 1 "+3.3V" H 3315 3923 50  0000 C CNN
F 2 "" H 3300 3750 50  0001 C CNN
F 3 "" H 3300 3750 50  0001 C CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3750 3300 3900
$Comp
L power:+3.3V #PWR07
U 1 1 5CF5769F
P 4250 6200
F 0 "#PWR07" H 4250 6050 50  0001 C CNN
F 1 "+3.3V" H 4265 6373 50  0000 C CNN
F 2 "" H 4250 6200 50  0001 C CNN
F 3 "" H 4250 6200 50  0001 C CNN
	1    4250 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5CF576EC
P 4250 6800
F 0 "#PWR08" H 4250 6550 50  0001 C CNN
F 1 "GND" H 4255 6627 50  0000 C CNN
F 2 "" H 4250 6800 50  0001 C CNN
F 3 "" H 4250 6800 50  0001 C CNN
	1    4250 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6350 4250 6350
Wire Wire Line
	4250 6350 4250 6200
Wire Wire Line
	3900 6650 4250 6650
Wire Wire Line
	4250 6650 4250 6800
$Sheet
S 2700 6100 1200 750 
U 5CF47E03
F0 "PoE_PD_Interface" 50
F1 "PoE_PD_Interface.sch" 50
F2 "VC36" I L 2700 6400 50 
F3 "VC12" I L 2700 6250 50 
F4 "VC45" I L 2700 6550 50 
F5 "VC78" I L 2700 6700 50 
F6 "3.3V" O R 3900 6350 50 
F7 "GND" O R 3900 6650 50 
$EndSheet
$Sheet
S 3350 2450 1200 650 
U 5CF6E2C0
F0 "W5100_Ethernet_Interface" 50
F1 "W5100_Ethernet_Interface.sch" 50
F2 "RD+" I L 3350 2850 50 
F3 "RD-" I L 3350 3000 50 
F4 "TD+" I L 3350 2550 50 
F5 "TD-" I L 3350 2700 50 
F6 "MISO" O R 4550 2900 50 
F7 "MOSI" I R 4550 2800 50 
F8 "SS" I R 4550 2700 50 
F9 "SCK" I R 4550 2600 50 
F10 "RESET" O R 4550 2500 50 
F11 "INT" I R 4550 3000 50 
$EndSheet
Connection ~ 2300 4600
Wire Wire Line
	2300 4600 2800 4600
Wire Wire Line
	2350 2700 2350 4800
Connection ~ 2350 4800
Wire Wire Line
	2350 4800 2800 4800
Text GLabel 4750 2600 2    50   Input ~ 0
SCK
Text GLabel 4750 2700 2    50   Input ~ 0
SS
Text GLabel 4750 2800 2    50   Input ~ 0
MOSI
Text GLabel 4750 2900 2    50   Output ~ 0
MISO
Wire Wire Line
	4550 2600 4750 2600
Wire Wire Line
	4750 2700 4550 2700
Wire Wire Line
	4550 2800 4750 2800
Wire Wire Line
	4750 2900 4550 2900
$Comp
L LoadCell-cache:CONN_02X03 X1
U 1 1 5D0CFD22
P 1900 1600
F 0 "X1" H 1900 1915 50  0000 C CNN
F 1 "ICSP" H 1900 1824 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1900 400 50  0001 C CNN
F 3 "" H 1900 400 50  0000 C CNN
	1    1900 1600
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:Conn_01x06 J2
U 1 1 5D0CFE1D
P 4650 1350
F 0 "J2" H 4729 1342 50  0000 L CNN
F 1 "Serial Interface" H 4729 1251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
Text GLabel 1350 1500 0    50   Input ~ 0
MISO
Text GLabel 1350 1600 0    50   Output ~ 0
SCK
Text GLabel 1350 1700 0    50   Input ~ 0
RST
Text GLabel 2350 1600 2    50   Output ~ 0
MOSI
Wire Wire Line
	1350 1500 1650 1500
Wire Wire Line
	1650 1600 1350 1600
Wire Wire Line
	1350 1700 1650 1700
Wire Wire Line
	2150 1600 2350 1600
$Comp
L power:GND #PWR02
U 1 1 5D0E4D4F
P 2350 1800
F 0 "#PWR02" H 2350 1550 50  0001 C CNN
F 1 "GND" H 2355 1627 50  0000 C CNN
F 2 "" H 2350 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5D0E4DA0
P 2350 1450
F 0 "#PWR01" H 2350 1300 50  0001 C CNN
F 1 "+3.3V" H 2365 1623 50  0000 C CNN
F 2 "" H 2350 1450 50  0001 C CNN
F 3 "" H 2350 1450 50  0001 C CNN
	1    2350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1500 2350 1500
Wire Wire Line
	2350 1500 2350 1450
Wire Wire Line
	2150 1700 2350 1700
Wire Wire Line
	2350 1700 2350 1800
$Comp
L power:+3.3V #PWR05
U 1 1 5D0F022F
P 4200 1000
F 0 "#PWR05" H 4200 850 50  0001 C CNN
F 1 "+3.3V" H 4215 1173 50  0000 C CNN
F 2 "" H 4200 1000 50  0001 C CNN
F 3 "" H 4200 1000 50  0001 C CNN
	1    4200 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D0F0280
P 4100 1800
F 0 "#PWR04" H 4100 1550 50  0001 C CNN
F 1 "GND" H 4105 1627 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1350 4200 1350
Wire Wire Line
	4200 1350 4200 1000
Wire Wire Line
	4450 1150 4100 1150
Wire Wire Line
	4100 1150 4100 1250
Wire Wire Line
	4450 1250 4100 1250
Connection ~ 4100 1250
Wire Wire Line
	4100 1250 4100 1800
Text GLabel 4350 1450 0    50   Input ~ 0
RXI
Text GLabel 4350 1550 0    50   Output ~ 0
TXO
Text GLabel 4350 1650 0    50   Input ~ 0
DTR
Wire Wire Line
	4350 1450 4450 1450
Wire Wire Line
	4450 1550 4350 1550
Wire Wire Line
	4350 1650 4450 1650
$Sheet
S 6500 5300 950  500 
U 5D115E19
F0 "Relay_Interface" 50
F1 "Relay_Interface.sch" 50
F2 "D3R" I L 6500 5700 50 
F3 "D2R" I L 6500 5550 50 
F4 "D1R" I L 6500 5400 50 
$EndSheet
Wire Wire Line
	2200 5300 2600 5300
Wire Wire Line
	2600 5300 2600 6250
Wire Wire Line
	2600 6250 2700 6250
Wire Wire Line
	2200 5400 2500 5400
Wire Wire Line
	2500 5400 2500 6400
Wire Wire Line
	2500 6400 2700 6400
Wire Wire Line
	2200 5500 2400 5500
Wire Wire Line
	2400 5500 2400 6550
Wire Wire Line
	2400 6550 2700 6550
Wire Wire Line
	2200 5600 2300 5600
Wire Wire Line
	2300 5600 2300 6700
Wire Wire Line
	2300 6700 2700 6700
Text GLabel 6150 5400 0    50   Input ~ 0
D1RELAY
Text GLabel 6150 5550 0    50   Input ~ 0
D2RELAY
Text GLabel 6150 5700 0    50   Input ~ 0
D3RELAY
Wire Wire Line
	6150 5400 6500 5400
Wire Wire Line
	6150 5550 6500 5550
Wire Wire Line
	6150 5700 6500 5700
$Comp
L Device:Crystal Y1
U 1 1 5D0C9F1D
P 7850 2550
F 0 "Y1" V 7804 2681 50  0000 L CNN
F 1 "8MHz" V 7895 2681 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 7850 2550 50  0001 C CNN
F 3 "https://www.ctscorp.com/wp-content/uploads/ATS-ATSSM.pdf" H 7850 2550 50  0001 C CNN
	1    7850 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2700 7850 2700
Wire Wire Line
	8050 2400 7850 2400
$Comp
L Device:C C7
U 1 1 5D0D71CD
P 7500 2400
F 0 "C7" H 7615 2446 50  0000 L CNN
F 1 "18p" H 7615 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7538 2250 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
	1    7500 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 5D0D728A
P 7500 2700
F 0 "C8" H 7615 2746 50  0000 L CNN
F 1 "18p" H 7615 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7538 2550 50  0001 C CNN
F 3 "~" H 7500 2700 50  0001 C CNN
	1    7500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2400 7650 2400
Connection ~ 7850 2400
Wire Wire Line
	7850 2700 7650 2700
Connection ~ 7850 2700
Wire Wire Line
	7350 2400 7200 2400
Connection ~ 7200 2400
Wire Wire Line
	7200 2400 7200 2550
Wire Wire Line
	7350 2700 7200 2700
Connection ~ 7200 2700
Wire Wire Line
	7200 2700 7200 2550
Text GLabel 4750 2500 2    50   Input ~ 0
RESET
Text GLabel 4750 3000 2    50   Input ~ 0
INT
Wire Wire Line
	4750 2500 4550 2500
Wire Wire Line
	4750 3000 4550 3000
Text GLabel 6750 4000 0    50   Input ~ 0
RESET
Wire Wire Line
	6750 4000 6900 4000
Connection ~ 6900 4000
Wire Wire Line
	6900 4200 8650 4200
Wire Wire Line
	6350 4700 8650 4700
Wire Wire Line
	6000 3450 7600 3450
Wire Wire Line
	7600 3450 7600 3800
Wire Wire Line
	7600 3800 8650 3800
Wire Wire Line
	6000 2750 6300 2750
Wire Wire Line
	6300 2750 6300 3350
Wire Wire Line
	6300 3350 7700 3350
Wire Wire Line
	7700 3350 7700 3700
Wire Wire Line
	7700 3700 8650 3700
Wire Wire Line
	6000 2050 6400 2050
Wire Wire Line
	6400 2050 6400 3250
Wire Wire Line
	6400 3250 7800 3250
Wire Wire Line
	7800 3250 7800 3600
Wire Wire Line
	7800 3600 8650 3600
$Comp
L power:GND #PWR09
U 1 1 5D44C8FB
P 6150 1600
F 0 "#PWR09" H 6150 1350 50  0001 C CNN
F 1 "GND" H 6155 1427 50  0000 C CNN
F 2 "" H 6150 1600 50  0001 C CNN
F 3 "" H 6150 1600 50  0001 C CNN
	1    6150 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1750 6150 1750
Wire Wire Line
	6150 1750 6150 1600
Text GLabel 8500 4500 0    50   Output ~ 0
INT
Wire Wire Line
	8500 4500 8650 4500
$Comp
L Device:C C1
U 1 1 5D0CBC97
P 2750 3000
F 0 "C1" V 2498 3000 50  0000 C CNN
F 1 "10n" V 2589 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2788 2850 50  0001 C CNN
F 3 "~" H 2750 3000 50  0001 C CNN
	1    2750 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5D0CBDB3
P 3050 2850
F 0 "C2" V 2798 2850 50  0000 C CNN
F 1 "10n" V 2889 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 2700 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 5200 2450 5200
Wire Wire Line
	2900 3000 3350 3000
Wire Wire Line
	2600 3000 2450 3000
Wire Wire Line
	2450 3000 2450 5200
Connection ~ 2450 5200
Wire Wire Line
	2450 5200 2800 5200
Wire Wire Line
	2200 5000 2400 5000
Wire Wire Line
	3200 2850 3350 2850
Wire Wire Line
	2350 2700 3350 2700
Wire Wire Line
	2900 2850 2400 2850
Wire Wire Line
	2400 2850 2400 5000
Connection ~ 2400 5000
Wire Wire Line
	2400 5000 2800 5000
Wire Wire Line
	3350 2550 2300 2550
Wire Wire Line
	2300 2550 2300 4600
NoConn ~ 8650 2800
NoConn ~ 8650 2900
$EndSCHEMATC
