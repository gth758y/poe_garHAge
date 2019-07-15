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
P 10050 4550
F 0 "U1" H 10378 4653 60  0000 L CNN
F 1 "ATMEGA328P-AU" H 10378 4547 60  0000 L CNN
F 2 "digikey-footprints:TQFP-32_7x7mm" H 10250 4750 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589968" H 10250 4850 60  0001 L CNN
F 4 "ATMEGA328P-AU-ND" H 10250 4950 60  0001 L CNN "Digi-Key_PN"
F 5 "ATMEGA328P-AU" H 10250 5050 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 10250 5150 60  0001 L CNN "Category"
F 7 "Embedded - Microcontrollers" H 10250 5250 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589968" H 10250 5350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/ATMEGA328P-AU/ATMEGA328P-AU-ND/1832260" H 10250 5450 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MCU 8BIT 32KB FLASH 32TQFP" H 10250 5550 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 10250 5650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10250 5750 60  0001 L CNN "Status"
	1    10050 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CEC7182
P 8350 5150
F 0 "R6" V 8250 5150 50  0000 C CNN
F 1 "12k" V 8350 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8280 5150 50  0001 C CNN
F 3 "~" H 8350 5150 50  0001 C CNN
	1    8350 5150
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5CEC7228
P 8600 4800
F 0 "C7" H 8715 4846 50  0000 L CNN
F 1 "100n" H 8715 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8638 4650 50  0001 C CNN
F 3 "~" H 8600 4800 50  0001 C CNN
	1    8600 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5CEC727F
P 9650 2650
F 0 "C9" H 9765 2696 50  0000 L CNN
F 1 "100n" H 9765 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9688 2500 50  0001 C CNN
F 3 "~" H 9650 2650 50  0001 C CNN
	1    9650 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5CEC73C9
P 9100 2650
F 0 "C8" H 9215 2696 50  0000 L CNN
F 1 "100n" H 9215 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9138 2500 50  0001 C CNN
F 3 "~" H 9100 2650 50  0001 C CNN
	1    9100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5CEC7466
P 9100 2300
F 0 "#PWR019" H 9100 2150 50  0001 C CNN
F 1 "+3.3V" V 9115 2428 50  0000 L CNN
F 2 "" H 9100 2300 50  0001 C CNN
F 3 "" H 9100 2300 50  0001 C CNN
	1    9100 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5CEC751F
P 7950 3500
F 0 "#PWR017" H 7950 3250 50  0001 C CNN
F 1 "GND" H 7955 3372 50  0000 R CNN
F 2 "" H 7950 3500 50  0001 C CNN
F 3 "" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5CEC84AD
P 10150 6200
F 0 "#PWR020" H 10150 5950 50  0001 C CNN
F 1 "GND" H 10155 6027 50  0000 C CNN
F 2 "" H 10150 6200 50  0001 C CNN
F 3 "" H 10150 6200 50  0001 C CNN
	1    10150 6200
	1    0    0    -1  
$EndComp
Text GLabel 9400 4150 0    50   Output ~ 0
SS
Text GLabel 9400 4250 0    50   BiDi ~ 0
MOSI
Text GLabel 9400 4350 0    50   BiDi ~ 0
MISO
Text GLabel 9400 4450 0    50   BiDi ~ 0
SCK
Text GLabel 9400 5250 0    50   Input ~ 0
RXI
Text GLabel 9400 5350 0    50   Output ~ 0
TXO
Text GLabel 9400 3650 0    50   Output ~ 0
D1RELAY
Text GLabel 9400 3350 0    50   Output ~ 0
D2RELAY
Text GLabel 9400 3250 0    50   Output ~ 0
D3RELAY
Wire Wire Line
	9550 3450 8950 3450
Wire Wire Line
	8950 3450 8950 3350
Wire Wire Line
	9550 3550 8950 3550
Wire Wire Line
	8950 3550 8950 3650
Wire Wire Line
	9400 3250 9550 3250
Wire Wire Line
	9400 3350 9550 3350
Wire Wire Line
	9550 4150 9400 4150
Wire Wire Line
	9400 4250 9550 4250
Wire Wire Line
	9550 4350 9400 4350
Wire Wire Line
	9400 4450 9550 4450
Wire Wire Line
	9550 5250 9400 5250
Wire Wire Line
	9400 5350 9550 5350
Wire Wire Line
	9550 3650 9400 3650
Wire Wire Line
	9100 2500 9650 2500
Wire Wire Line
	10050 2950 10050 2500
Wire Wire Line
	10050 2500 9650 2500
Connection ~ 9650 2500
Wire Wire Line
	10150 2950 10150 2500
Wire Wire Line
	10150 2500 10050 2500
Connection ~ 10050 2500
Wire Wire Line
	10250 2950 10250 2500
Wire Wire Line
	10250 2500 10150 2500
Connection ~ 10150 2500
$Comp
L power:+3.3V #PWR016
U 1 1 5CEF0147
P 7800 5100
F 0 "#PWR016" H 7800 4950 50  0001 C CNN
F 1 "+3.3V" H 7815 5228 50  0000 L CNN
F 2 "" H 7800 5100 50  0001 C CNN
F 3 "" H 7800 5100 50  0001 C CNN
	1    7800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5150 8600 5150
Text GLabel 8450 4650 0    50   Input ~ 0
DTR
Text GLabel 8450 5400 0    50   Input ~ 0
RST
Wire Wire Line
	8600 5400 8600 5150
Connection ~ 8600 5150
Wire Wire Line
	8450 4650 8600 4650
Wire Wire Line
	8600 4950 8600 5150
NoConn ~ 9550 5550
NoConn ~ 9550 5750
NoConn ~ 9550 4850
NoConn ~ 9550 4950
NoConn ~ 9550 5050
Wire Wire Line
	10250 6050 10150 6050
Connection ~ 10150 6050
Wire Wire Line
	10150 6050 10050 6050
Wire Wire Line
	7950 3500 8100 3500
Wire Wire Line
	9650 2800 9100 2800
Connection ~ 9100 2800
Wire Wire Line
	9100 2800 8700 2800
Connection ~ 8100 3500
Wire Wire Line
	9850 5900 10150 5900
Wire Wire Line
	10150 5900 10150 6050
Wire Wire Line
	10150 6200 10150 6050
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J1
U 1 1 5CEFA297
P 1450 2650
F 0 "J1" H 1506 2997 60  0000 C CNN
F 1 "SJ1-2503A" H 1506 2891 60  0000 C CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 1650 2850 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 1650 2950 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1650 3050 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 1650 3150 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1650 3250 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 1650 3350 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 1650 3450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 1650 3550 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 1650 3650 60  0001 L CNN "Description"
F 11 "CUI Inc." H 1650 3750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 3850 60  0001 L CNN "Status"
	1    1450 2650
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J2
U 1 1 5CEFA3B9
P 1450 3350
F 0 "J2" H 1506 3697 60  0000 C CNN
F 1 "SJ1-2503A" H 1506 3591 60  0000 C CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 1650 3550 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 1650 3650 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1650 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 1650 3850 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1650 3950 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 1650 4050 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 1650 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 1650 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 1650 4350 60  0001 L CNN "Description"
F 11 "CUI Inc." H 1650 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 4550 60  0001 L CNN "Status"
	1    1450 3350
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J3
U 1 1 5CEFA403
P 1450 4050
F 0 "J3" H 1506 4397 60  0000 C CNN
F 1 "SJ1-2503A" H 1506 4291 60  0000 C CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 1650 4250 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 1650 4350 60  0001 L CNN
F 4 "CP1-2503A-ND" H 1650 4450 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 1650 4550 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1650 4650 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 1650 4750 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 1650 4850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 1650 4950 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 1650 5050 60  0001 L CNN "Description"
F 11 "CUI Inc." H 1650 5150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 5250 60  0001 L CNN "Status"
	1    1450 4050
	1    0    0    -1  
$EndComp
NoConn ~ 1850 2650
NoConn ~ 1850 2750
NoConn ~ 1850 3350
NoConn ~ 1850 3450
NoConn ~ 1850 4050
NoConn ~ 1850 4150
Wire Wire Line
	8450 5400 8600 5400
$Comp
L power:GND #PWR02
U 1 1 5CF015F8
P 2000 3100
F 0 "#PWR02" H 2000 2850 50  0001 C CNN
F 1 "GND" H 2005 2927 50  0000 C CNN
F 2 "" H 2000 3100 50  0001 C CNN
F 3 "" H 2000 3100 50  0001 C CNN
	1    2000 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CF0161A
P 2000 3850
F 0 "#PWR03" H 2000 3600 50  0001 C CNN
F 1 "GND" H 2005 3677 50  0000 C CNN
F 2 "" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 3250 2000 3250
Wire Wire Line
	2000 3250 2000 3100
Wire Wire Line
	1850 3950 2000 3950
Wire Wire Line
	2000 3950 2000 3850
$Comp
L LoadCell-rescue:0813-1X1T-57-F J4
U 1 1 5CF16AA1
P 2350 5700
F 0 "J4" H 2481 6687 60  0000 C CNN
F 1 "0813-1X1T-57-F" H 2481 6581 60  0000 C CNN
F 2 "tyler_components:0813-1X1T-57-F_RJ45-Jack" H 1750 4700 60  0001 L CNN
F 3 "http://belfuse.com/pdfs/0813-1X1T-57-F.pdf" H 1750 4900 60  0001 L CNN
F 4 "507-1421-ND" H 1750 4800 60  0001 L CNN "DigiKey Part Number"
	1    2350 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CF16B13
P 3950 5000
F 0 "R1" V 3850 5000 50  0000 C CNN
F 1 "49.9" V 3950 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 5000 50  0001 C CNN
F 3 "~" H 3950 5000 50  0001 C CNN
	1    3950 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CF16E9B
P 3950 5200
F 0 "R2" V 3850 5200 50  0000 C CNN
F 1 "49.9" V 3950 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 5200 50  0001 C CNN
F 3 "~" H 3950 5200 50  0001 C CNN
	1    3950 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CF16ECA
P 3950 5400
F 0 "R3" V 3850 5400 50  0000 C CNN
F 1 "49.9" V 3950 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 5400 50  0001 C CNN
F 3 "~" H 3950 5400 50  0001 C CNN
	1    3950 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CF16EFF
P 3950 5600
F 0 "R4" V 3850 5600 50  0000 C CNN
F 1 "49.9" V 3950 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 5600 50  0001 C CNN
F 3 "~" H 3950 5600 50  0001 C CNN
	1    3950 5600
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5CF1708A
P 4750 5500
F 0 "C4" V 4498 5500 50  0000 C CNN
F 1 "10n" V 4589 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 5350 50  0001 C CNN
F 3 "~" H 4750 5500 50  0001 C CNN
	1    4750 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5CF170D3
P 4750 4700
F 0 "C3" V 4498 4700 50  0000 C CNN
F 1 "22n" V 4589 4700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 4550 50  0001 C CNN
F 3 "~" H 4750 4700 50  0001 C CNN
	1    4750 4700
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 5CF171C0
P 4300 4450
F 0 "L1" H 4353 4496 50  0000 L CNN
F 1 "1uH" H 4353 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4300 4450 50  0001 C CNN
F 3 "~" H 4300 4450 50  0001 C CNN
	1    4300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5000 3300 5000
Wire Wire Line
	3200 5200 3350 5200
Wire Wire Line
	4100 5000 4300 5000
Wire Wire Line
	4100 5200 4300 5200
Wire Wire Line
	4100 5400 4300 5400
Wire Wire Line
	4300 5400 4300 5500
Wire Wire Line
	4300 5500 4600 5500
Wire Wire Line
	4100 5600 4300 5600
Wire Wire Line
	4300 5600 4300 5500
Connection ~ 4300 5500
Wire Wire Line
	3200 5100 3500 5100
Wire Wire Line
	3500 5100 3500 4700
Wire Wire Line
	3500 4700 4300 4700
Wire Wire Line
	4300 4600 4300 4700
Connection ~ 4300 4700
Wire Wire Line
	4300 4700 4600 4700
Wire Wire Line
	4900 4700 4900 5100
Connection ~ 4900 5100
Wire Wire Line
	4900 5100 4900 5500
$Comp
L power:GND #PWR010
U 1 1 5CF40531
P 5200 5100
F 0 "#PWR010" H 5200 4850 50  0001 C CNN
F 1 "GND" V 5205 4972 50  0000 R CNN
F 2 "" H 5200 5100 50  0001 C CNN
F 3 "" H 5200 5100 50  0001 C CNN
	1    5200 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 5100 5200 5100
$Comp
L power:+3.3V #PWR08
U 1 1 5CF45556
P 4300 4150
F 0 "#PWR08" H 4300 4000 50  0001 C CNN
F 1 "+3.3V" H 4315 4323 50  0000 C CNN
F 2 "" H 4300 4150 50  0001 C CNN
F 3 "" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4150 4300 4300
$Comp
L power:+3.3V #PWR011
U 1 1 5CF5769F
P 5250 6600
F 0 "#PWR011" H 5250 6450 50  0001 C CNN
F 1 "+3.3V" H 5265 6773 50  0000 C CNN
F 2 "" H 5250 6600 50  0001 C CNN
F 3 "" H 5250 6600 50  0001 C CNN
	1    5250 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CF576EC
P 5250 7200
F 0 "#PWR012" H 5250 6950 50  0001 C CNN
F 1 "GND" H 5255 7027 50  0000 C CNN
F 2 "" H 5250 7200 50  0001 C CNN
F 3 "" H 5250 7200 50  0001 C CNN
	1    5250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6750 5250 6750
Wire Wire Line
	5250 6750 5250 6600
Wire Wire Line
	4900 7050 5250 7050
Wire Wire Line
	5250 7050 5250 7200
$Sheet
S 3700 6500 1200 750 
U 5CF47E03
F0 "PoE_PD_Interface" 50
F1 "PoE_PD_Interface.sch" 50
F2 "VC36" I L 3700 6800 50 
F3 "VC12" I L 3700 6650 50 
F4 "VC45" I L 3700 6950 50 
F5 "VC78" I L 3700 7100 50 
F6 "3.3V" O R 4900 6750 50 
F7 "GND" O R 4900 7050 50 
$EndSheet
$Sheet
S 4350 2850 1200 650 
U 5CF6E2C0
F0 "W5100_Ethernet_Interface" 50
F1 "W5100_Ethernet_Interface.sch" 50
F2 "RD+" I L 4350 3250 50 
F3 "RD-" I L 4350 3400 50 
F4 "TD+" I L 4350 2950 50 
F5 "TD-" I L 4350 3100 50 
F6 "MISO" O R 5550 3300 50 
F7 "MOSI" I R 5550 3200 50 
F8 "SS" I R 5550 3100 50 
F9 "SCK" I R 5550 3000 50 
F10 "RESET" O R 5550 2900 50 
F11 "INT" I R 5550 3400 50 
$EndSheet
Connection ~ 3300 5000
Wire Wire Line
	3300 5000 3800 5000
Wire Wire Line
	3350 3100 3350 5200
Connection ~ 3350 5200
Wire Wire Line
	3350 5200 3800 5200
Text GLabel 5750 3000 2    50   Input ~ 0
SCK
Text GLabel 5750 3100 2    50   Input ~ 0
SS
Text GLabel 5750 3200 2    50   Input ~ 0
MOSI
Text GLabel 5750 3300 2    50   Output ~ 0
MISO
Wire Wire Line
	5550 3000 5750 3000
Wire Wire Line
	5750 3100 5550 3100
Wire Wire Line
	5550 3200 5750 3200
Wire Wire Line
	5750 3300 5550 3300
$Comp
L LoadCell-cache:CONN_02X03 X1
U 1 1 5D0CFD22
P 1600 1350
F 0 "X1" H 1600 1665 50  0000 C CNN
F 1 "ICSP" H 1600 1574 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1600 150 50  0001 C CNN
F 3 "" H 1600 150 50  0000 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:Conn_01x06 X3
U 1 1 5D0CFE1D
P 4150 1200
F 0 "X3" H 4229 1192 50  0000 L CNN
F 1 "Serial Interface" H 4229 1101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 4150 1200 50  0001 C CNN
F 3 "" H 4150 1200 50  0001 C CNN
	1    4150 1200
	1    0    0    -1  
$EndComp
Text GLabel 1050 1250 0    50   Input ~ 0
MISO
Text GLabel 1050 1350 0    50   Output ~ 0
SCK
Text GLabel 1050 1450 0    50   Input ~ 0
RST
Text GLabel 2050 1350 2    50   Output ~ 0
MOSI
Wire Wire Line
	1050 1250 1350 1250
Wire Wire Line
	1350 1350 1050 1350
Wire Wire Line
	1050 1450 1350 1450
Wire Wire Line
	1850 1350 2050 1350
$Comp
L power:GND #PWR05
U 1 1 5D0E4D4F
P 2050 1550
F 0 "#PWR05" H 2050 1300 50  0001 C CNN
F 1 "GND" H 2055 1377 50  0000 C CNN
F 2 "" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0001 C CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5D0E4DA0
P 2050 1200
F 0 "#PWR04" H 2050 1050 50  0001 C CNN
F 1 "+3.3V" H 2065 1373 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "" H 2050 1200 50  0001 C CNN
	1    2050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1250 2050 1250
Wire Wire Line
	2050 1250 2050 1200
Wire Wire Line
	1850 1450 2050 1450
Wire Wire Line
	2050 1450 2050 1550
$Comp
L power:+3.3V #PWR06
U 1 1 5D0F022F
P 3400 950
F 0 "#PWR06" H 3400 800 50  0001 C CNN
F 1 "+3.3V" H 3415 1123 50  0000 C CNN
F 2 "" H 3400 950 50  0001 C CNN
F 3 "" H 3400 950 50  0001 C CNN
	1    3400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D0F0280
P 3600 1650
F 0 "#PWR07" H 3600 1400 50  0001 C CNN
F 1 "GND" H 3605 1477 50  0000 C CNN
F 2 "" H 3600 1650 50  0001 C CNN
F 3 "" H 3600 1650 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1000 3600 1000
Wire Wire Line
	3600 1000 3600 1100
Wire Wire Line
	3950 1100 3600 1100
Connection ~ 3600 1100
Wire Wire Line
	3600 1100 3600 1650
Text GLabel 3850 1300 0    50   Input ~ 0
RXI
Text GLabel 3850 1400 0    50   Output ~ 0
TXO
Text GLabel 3850 1500 0    50   Input ~ 0
DTR
Wire Wire Line
	3850 1300 3950 1300
Wire Wire Line
	3950 1400 3850 1400
Wire Wire Line
	3850 1500 3950 1500
$Sheet
S 9400 1000 950  500 
U 5D115E19
F0 "Relay_Interface" 50
F1 "Relay_Interface.sch" 50
F2 "D3R" I L 9400 1400 50 
F3 "D2R" I L 9400 1250 50 
F4 "D1R" I L 9400 1100 50 
$EndSheet
Wire Wire Line
	3200 5700 3600 5700
Wire Wire Line
	3600 5700 3600 6650
Wire Wire Line
	3600 6650 3700 6650
Wire Wire Line
	3200 5800 3500 5800
Wire Wire Line
	3500 5800 3500 6800
Wire Wire Line
	3500 6800 3700 6800
Wire Wire Line
	3200 5900 3400 5900
Wire Wire Line
	3400 5900 3400 6950
Wire Wire Line
	3400 6950 3700 6950
Wire Wire Line
	3200 6000 3300 6000
Wire Wire Line
	3300 6000 3300 7100
Wire Wire Line
	3300 7100 3700 7100
Text GLabel 9050 1100 0    50   Input ~ 0
D1RELAY
Text GLabel 9050 1250 0    50   Input ~ 0
D2RELAY
Text GLabel 9050 1400 0    50   Input ~ 0
D3RELAY
Wire Wire Line
	9050 1100 9400 1100
Wire Wire Line
	9050 1250 9400 1250
Wire Wire Line
	9050 1400 9400 1400
$Comp
L Device:Crystal Y1
U 1 1 5D0C9F1D
P 8750 3500
F 0 "Y1" V 8650 3300 50  0000 L CNN
F 1 "8MHz" V 8850 3250 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 8750 3500 50  0001 C CNN
F 3 "https://www.ctscorp.com/wp-content/uploads/ATS-ATSSM.pdf" H 8750 3500 50  0001 C CNN
	1    8750 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 3650 8750 3650
Wire Wire Line
	8950 3350 8750 3350
$Comp
L Device:C C5
U 1 1 5D0D71CD
P 8400 3350
F 0 "C5" V 8500 3200 50  0000 L CNN
F 1 "18p" V 8500 3400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 3200 50  0001 C CNN
F 3 "~" H 8400 3350 50  0001 C CNN
	1    8400 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 5D0D728A
P 8400 3650
F 0 "C6" V 8500 3700 50  0000 L CNN
F 1 "18p" V 8500 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 3500 50  0001 C CNN
F 3 "~" H 8400 3650 50  0001 C CNN
	1    8400 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 3350 8550 3350
Connection ~ 8750 3350
Wire Wire Line
	8750 3650 8550 3650
Connection ~ 8750 3650
Wire Wire Line
	8250 3350 8100 3350
Wire Wire Line
	8100 3350 8100 3500
Wire Wire Line
	8250 3650 8100 3650
Wire Wire Line
	8100 3650 8100 3500
Text GLabel 5750 2900 2    50   Input ~ 0
RESET
Text GLabel 5750 3400 2    50   Input ~ 0
INT
Wire Wire Line
	5750 2900 5550 2900
Wire Wire Line
	5750 3400 5550 3400
Text GLabel 8450 4950 0    50   Input ~ 0
RESET
Wire Wire Line
	8450 4950 8600 4950
Connection ~ 8600 4950
$Comp
L power:GND #PWR01
U 1 1 5D44C8FB
P 2000 2400
F 0 "#PWR01" H 2000 2150 50  0001 C CNN
F 1 "GND" H 2005 2227 50  0000 C CNN
F 2 "" H 2000 2400 50  0001 C CNN
F 3 "" H 2000 2400 50  0001 C CNN
	1    2000 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 2550 2000 2550
Wire Wire Line
	2000 2550 2000 2400
Text GLabel 9400 5450 0    50   Output ~ 0
INT
Wire Wire Line
	9400 5450 9550 5450
$Comp
L Device:C C1
U 1 1 5D0CBC97
P 3750 3400
F 0 "C1" V 4000 3400 50  0000 C CNN
F 1 "6.8n" V 3900 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3788 3250 50  0001 C CNN
F 3 "~" H 3750 3400 50  0001 C CNN
	1    3750 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5D0CBDB3
P 4050 3250
F 0 "C2" V 4150 3350 50  0000 C CNN
F 1 "6.8n" V 4000 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 3100 50  0001 C CNN
F 3 "~" H 4050 3250 50  0001 C CNN
	1    4050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5600 3450 5600
Wire Wire Line
	3900 3400 4350 3400
Wire Wire Line
	3600 3400 3450 3400
Wire Wire Line
	3450 3400 3450 5600
Connection ~ 3450 5600
Wire Wire Line
	3450 5600 3800 5600
Wire Wire Line
	3200 5400 3400 5400
Wire Wire Line
	4200 3250 4350 3250
Wire Wire Line
	3350 3100 4350 3100
Wire Wire Line
	3900 3250 3400 3250
Wire Wire Line
	3400 3250 3400 5400
Connection ~ 3400 5400
Wire Wire Line
	3400 5400 3800 5400
Wire Wire Line
	4350 2950 3300 2950
Wire Wire Line
	3300 2950 3300 5000
NoConn ~ 9550 4550
NoConn ~ 9550 4650
Text GLabel 2100 2850 2    50   Output ~ 0
D1SENSOR
Text GLabel 2100 3550 2    50   Output ~ 0
D2SENSOR
Text GLabel 2100 4250 2    50   Output ~ 0
D3SENSOR
Text GLabel 9400 3750 0    50   Input ~ 0
D1SENSOR
Text GLabel 9400 3850 0    50   Input ~ 0
D2SENSOR
Text GLabel 9400 3950 0    50   Input ~ 0
D3SENSOR
Wire Wire Line
	2100 2850 1850 2850
Wire Wire Line
	2100 3550 1850 3550
Wire Wire Line
	2100 4250 1850 4250
Wire Wire Line
	9400 3750 9550 3750
Wire Wire Line
	9550 3850 9400 3850
Wire Wire Line
	9400 3950 9550 3950
Wire Wire Line
	4300 5000 4300 5100
$Comp
L LoadCell-cache:+3.3V #PWR09
U 1 1 5D2A9E69
P 4450 5000
F 0 "#PWR09" H 4450 4850 50  0001 C CNN
F 1 "+3.3V" H 4465 5173 50  0000 C CNN
F 2 "" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5100 4450 5100
Wire Wire Line
	4450 5100 4450 5000
Connection ~ 4300 5100
Wire Wire Line
	4300 5100 4300 5200
$Comp
L Device:LED D1
U 1 1 5D2A0124
P 6900 1250
F 0 "D1" H 6892 995 50  0000 C CNN
F 1 "BLUE" H 6892 1086 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6900 1250 50  0001 C CNN
F 3 "~" H 6900 1250 50  0001 C CNN
	1    6900 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5D2AE1D1
P 6400 1250
F 0 "R5" V 6300 1250 50  0000 C CNN
F 1 "330" V 6400 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 1250 50  0001 C CNN
F 3 "~" H 6400 1250 50  0001 C CNN
	1    6400 1250
	0    1    1    0   
$EndComp
$Comp
L LoadCell-cache:+3.3V #PWR013
U 1 1 5D2AE285
P 5900 950
F 0 "#PWR013" H 5900 800 50  0001 C CNN
F 1 "+3.3V" H 5915 1123 50  0000 C CNN
F 2 "" H 5900 950 50  0001 C CNN
F 3 "" H 5900 950 50  0001 C CNN
	1    5900 950 
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:GND #PWR014
U 1 1 5D2AE32B
P 7300 1400
F 0 "#PWR014" H 7300 1150 50  0001 C CNN
F 1 "GND" H 7305 1227 50  0000 C CNN
F 2 "" H 7300 1400 50  0001 C CNN
F 3 "" H 7300 1400 50  0001 C CNN
	1    7300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1250 6250 1250
Wire Wire Line
	6550 1250 6750 1250
Wire Wire Line
	7050 1250 7300 1250
$Comp
L Device:R R7
U 1 1 5D2C3EA5
P 8750 4050
F 0 "R7" V 8650 4050 50  0000 C CNN
F 1 "330" V 8750 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8680 4050 50  0001 C CNN
F 3 "~" H 8750 4050 50  0001 C CNN
	1    8750 4050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D2C3F43
P 7650 4050
F 0 "D2" H 7650 4150 50  0000 C CNN
F 1 "RED" H 7650 3950 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7650 4050 50  0001 C CNN
F 3 "~" H 7650 4050 50  0001 C CNN
	1    7650 4050
	1    0    0    -1  
$EndComp
$Comp
L LoadCell-cache:GND #PWR015
U 1 1 5D2D2E46
P 7400 4200
F 0 "#PWR015" H 7400 3950 50  0001 C CNN
F 1 "GND" H 7405 4027 50  0000 C CNN
F 2 "" H 7400 4200 50  0001 C CNN
F 3 "" H 7400 4200 50  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5150 9550 5150
Wire Wire Line
	8100 5150 8100 5650
Connection ~ 8100 5150
Wire Wire Line
	8100 5150 8200 5150
Wire Wire Line
	8100 5650 9550 5650
$Comp
L Connector_Generic:Conn_01x02 X2
U 1 1 5D3BE07D
P 3050 1200
F 0 "X2" H 3050 1000 50  0000 C CNN
F 1 "Serial Pwr Disconnect" H 3050 1300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3050 1200 50  0001 C CNN
F 3 "~" H 3050 1200 50  0001 C CNN
	1    3050 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1200 3950 1200
Wire Wire Line
	3250 1100 3400 1100
Wire Notes Line style solid
	500  1900 11150 1900
Wire Wire Line
	9100 2300 9100 2500
Connection ~ 9100 2500
Wire Notes Line style solid
	7000 1900 7000 6550
Wire Notes Line style solid
	2800 1900 2800 4400
Wire Notes Line
	2800 4400 500  4400
Wire Notes Line style solid
	2600 1900 2600 500 
Wire Notes Line style solid
	5100 1900 5100 500 
Wire Notes Line style solid
	8100 1900 8100 500 
Wire Wire Line
	5900 950  5900 1250
Wire Wire Line
	7300 1250 7300 1400
Text Notes 950  700  0    98   ~ 20
ICSP Interface
Text Notes 3050 700  0    98   ~ 20
Serial Debug Interface
Wire Wire Line
	3400 1100 3400 950 
Text Notes 6000 700  0    98   ~ 20
Power Indication
Text Notes 9100 700  0    98   ~ 20
Relay Interface
Text Notes 850  2100 0    98   ~ 20
Reed Switch Interface
Text Notes 2900 2250 0    98   ~ 20
Ethernet and 802.3af PoE\nInterface
Text Notes 7100 2100 0    98   ~ 20
ATMEGA328P MCU
$Comp
L power:GND #PWR018
U 1 1 5D463C7B
P 8700 2900
F 0 "#PWR018" H 8700 2650 50  0001 C CNN
F 1 "GND" V 8705 2772 50  0000 R CNN
F 2 "" H 8700 2900 50  0001 C CNN
F 3 "" H 8700 2900 50  0001 C CNN
	1    8700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2800 8700 2900
Wire Wire Line
	7800 5150 7800 5100
Wire Wire Line
	7800 5150 8100 5150
Text Label 3450 4400 0    50   ~ 10
RD-
Text Label 3400 4000 0    50   ~ 10
RD+
Text Label 7900 4050 0    50   ~ 10
BOOT_STATUS
Wire Wire Line
	7400 4050 7400 4200
Text Label 3800 4700 0    50   ~ 10
CT
Wire Wire Line
	7400 4050 7500 4050
Wire Wire Line
	7800 4050 8600 4050
Wire Wire Line
	9000 4050 9000 4750
Wire Wire Line
	9000 4750 9550 4750
Wire Wire Line
	9000 4050 8900 4050
NoConn ~ 9550 4050
$EndSCHEMATC
