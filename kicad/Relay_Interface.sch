EESchema Schematic File Version 4
LIBS:garHAge_v2-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Device:LED D8
U 1 1 5D13F6F1
P 3850 1750
F 0 "D8" H 3850 1550 50  0000 C CNN
F 1 "BLUE" H 3850 1650 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
	1    3850 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5D13F755
P 5350 2000
F 0 "R21" V 5250 2000 50  0000 C CNN
F 1 "1k" V 5350 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 2000 50  0001 C CNN
F 3 "~" H 5350 2000 50  0001 C CNN
	1    5350 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5D13F7B8
P 3850 1550
F 0 "R18" V 3750 1550 50  0000 C CNN
F 1 "100" V 3850 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 1550 50  0001 C CNN
F 3 "~" H 3850 1550 50  0001 C CNN
	1    3850 1550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR031
U 1 1 5D13FAEF
P 3100 1550
F 0 "#PWR031" H 3100 1400 50  0001 C CNN
F 1 "+3.3V" V 3115 1678 50  0000 L CNN
F 2 "" H 3100 1550 50  0001 C CNN
F 3 "" H 3100 1550 50  0001 C CNN
	1    3100 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 1550 3700 1550
Wire Wire Line
	3100 1750 3700 1750
Wire Wire Line
	4000 1550 4300 1550
Wire Wire Line
	4000 1750 4300 1750
$Comp
L dk_Transistors-Bipolar-BJT-Single:BC846B_215 Q1
U 1 1 5D140041
P 6000 2000
F 0 "Q1" H 6188 2053 60  0000 L CNN
F 1 "BC846B_215" H 6188 1947 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 6200 2200 60  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6200 2300 60  0001 L CNN
F 4 "1727-2920-1-ND" H 6200 2400 60  0001 L CNN "Digi-Key_PN"
F 5 "BC846B,215" H 6200 2500 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 2600 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 6200 2700 60  0001 L CNN "Family"
F 8 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6200 2800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nexperia-usa-inc/BC846B,215/1727-2920-1-ND/763459" H 6200 2900 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 65V 0.1A SOT23" H 6200 3000 60  0001 L CNN "Description"
F 11 "Nexperia USA Inc." H 6200 3100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 3200 60  0001 L CNN "Status"
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 K1
U 1 1 5D1402FB
P 7400 1450
F 0 "K1" H 7728 1496 50  0000 L CNN
F 1 "G5LE-14_DC3" H 7728 1405 50  0000 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 7600 1650 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7600 1750 60  0001 L CNN
F 4 "Z3326-ND" H 7600 1850 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC3" H 7600 1950 60  0001 L CNN "MPN"
F 6 "Relays" H 7600 2050 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 7600 2150 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7600 2250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC3/Z3326-ND/1815628" H 7600 2350 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 7600 2450 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 7600 2550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7600 2650 60  0001 L CNN "Status"
	1    7400 1450
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J5
U 1 1 5D1404B0
P 8700 1500
F 0 "J5" H 8373 1402 60  0000 R CNN
F 1 "SJ1-2503A" H 8373 1508 60  0000 R CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 8900 1700 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 8900 1800 60  0001 L CNN
F 4 "CP1-2503A-ND" H 8900 1900 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 8900 2000 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 8900 2100 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 8900 2200 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 8900 2300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 8900 2400 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 8900 2500 60  0001 L CNN "Description"
F 11 "CUI Inc." H 8900 2600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 2700 60  0001 L CNN "Status"
	1    8700 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 1750 4900 2000
Wire Wire Line
	4900 2000 5200 2000
Wire Wire Line
	5500 2000 5800 2000
Wire Wire Line
	4900 1550 5250 1550
$Comp
L power:+3.3V #PWR034
U 1 1 5D140EE1
P 5250 1050
F 0 "#PWR034" H 5250 900 50  0001 C CNN
F 1 "+3.3V" H 5265 1223 50  0000 C CNN
F 2 "" H 5250 1050 50  0001 C CNN
F 3 "" H 5250 1050 50  0001 C CNN
	1    5250 1050
	1    0    0    -1  
$EndComp
NoConn ~ 8300 1500
$Comp
L power:GND #PWR037
U 1 1 5D141A30
P 6100 2300
F 0 "#PWR037" H 6100 2050 50  0001 C CNN
F 1 "GND" H 6105 2127 50  0000 C CNN
F 2 "" H 6100 2300 50  0001 C CNN
F 3 "" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2200 6100 2300
$Comp
L Device:LED D9
U 1 1 5D142008
P 3850 3900
F 0 "D9" H 3850 3700 50  0000 C CNN
F 1 "BLUE" H 3850 3800 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 3900 50  0001 C CNN
F 3 "~" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5D14200F
P 5350 4150
F 0 "R22" V 5250 4150 50  0000 C CNN
F 1 "1k" V 5350 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 4150 50  0001 C CNN
F 3 "~" H 5350 4150 50  0001 C CNN
	1    5350 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5D142016
P 3850 3700
F 0 "R19" V 3750 3700 50  0000 C CNN
F 1 "100" V 3850 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 3700 50  0001 C CNN
F 3 "~" H 3850 3700 50  0001 C CNN
	1    3850 3700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR032
U 1 1 5D14202D
P 3100 3700
F 0 "#PWR032" H 3100 3550 50  0001 C CNN
F 1 "+3.3V" V 3115 3828 50  0000 L CNN
F 2 "" H 3100 3700 50  0001 C CNN
F 3 "" H 3100 3700 50  0001 C CNN
	1    3100 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 3700 3700 3700
Wire Wire Line
	3100 3900 3700 3900
Wire Wire Line
	4000 3700 4300 3700
Wire Wire Line
	4000 3900 4300 3900
$Comp
L dk_Transistors-Bipolar-BJT-Single:BC846B_215 Q2
U 1 1 5D142047
P 6000 4150
F 0 "Q2" H 6188 4203 60  0000 L CNN
F 1 "BC846B_215" H 6188 4097 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 6200 4350 60  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6200 4450 60  0001 L CNN
F 4 "1727-2920-1-ND" H 6200 4550 60  0001 L CNN "Digi-Key_PN"
F 5 "BC846B,215" H 6200 4650 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 4750 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 6200 4850 60  0001 L CNN "Family"
F 8 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6200 4950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nexperia-usa-inc/BC846B,215/1727-2920-1-ND/763459" H 6200 5050 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 65V 0.1A SOT23" H 6200 5150 60  0001 L CNN "Description"
F 11 "Nexperia USA Inc." H 6200 5250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 5350 60  0001 L CNN "Status"
	1    6000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3900 4900 4150
Wire Wire Line
	4900 4150 5200 4150
Wire Wire Line
	5500 4150 5800 4150
Wire Wire Line
	6100 3950 6100 3800
Wire Wire Line
	4900 3700 5250 3700
$Comp
L power:+3.3V #PWR035
U 1 1 5D142079
P 5250 3200
F 0 "#PWR035" H 5250 3050 50  0001 C CNN
F 1 "+3.3V" H 5265 3373 50  0000 C CNN
F 2 "" H 5250 3200 50  0001 C CNN
F 3 "" H 5250 3200 50  0001 C CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5D142089
P 6100 4450
F 0 "#PWR038" H 6100 4200 50  0001 C CNN
F 1 "GND" H 6105 4277 50  0000 C CNN
F 2 "" H 6100 4450 50  0001 C CNN
F 3 "" H 6100 4450 50  0001 C CNN
	1    6100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4350 6100 4450
$Comp
L Device:LED D10
U 1 1 5D142AB1
P 3850 6200
F 0 "D10" H 3850 6000 50  0000 C CNN
F 1 "BLUE" H 3850 6100 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 6200 50  0001 C CNN
F 3 "~" H 3850 6200 50  0001 C CNN
	1    3850 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5D142AB8
P 5350 6450
F 0 "R23" V 5250 6450 50  0000 C CNN
F 1 "1k" V 5350 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 6450 50  0001 C CNN
F 3 "~" H 5350 6450 50  0001 C CNN
	1    5350 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5D142ABF
P 3850 6000
F 0 "R20" V 3750 6000 50  0000 C CNN
F 1 "100" V 3850 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 6000 50  0001 C CNN
F 3 "~" H 3850 6000 50  0001 C CNN
	1    3850 6000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 5D142AD6
P 3100 6000
F 0 "#PWR033" H 3100 5850 50  0001 C CNN
F 1 "+3.3V" V 3115 6128 50  0000 L CNN
F 2 "" H 3100 6000 50  0001 C CNN
F 3 "" H 3100 6000 50  0001 C CNN
	1    3100 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 6000 3700 6000
Wire Wire Line
	3100 6200 3700 6200
Wire Wire Line
	4000 6000 4300 6000
Wire Wire Line
	4000 6200 4300 6200
$Comp
L dk_Transistors-Bipolar-BJT-Single:BC846B_215 Q3
U 1 1 5D142AF0
P 6000 6450
F 0 "Q3" H 6188 6503 60  0000 L CNN
F 1 "BC846B_215" H 6188 6397 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 6200 6650 60  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6200 6750 60  0001 L CNN
F 4 "1727-2920-1-ND" H 6200 6850 60  0001 L CNN "Digi-Key_PN"
F 5 "BC846B,215" H 6200 6950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6200 7050 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 6200 7150 60  0001 L CNN "Family"
F 8 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6200 7250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nexperia-usa-inc/BC846B,215/1727-2920-1-ND/763459" H 6200 7350 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 65V 0.1A SOT23" H 6200 7450 60  0001 L CNN "Description"
F 11 "Nexperia USA Inc." H 6200 7550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6200 7650 60  0001 L CNN "Status"
	1    6000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6200 4900 6450
Wire Wire Line
	4900 6450 5200 6450
Wire Wire Line
	5500 6450 5800 6450
Wire Wire Line
	6100 6250 6100 6100
Wire Wire Line
	4900 6000 5250 6000
$Comp
L power:+3.3V #PWR036
U 1 1 5D142B22
P 5250 5500
F 0 "#PWR036" H 5250 5350 50  0001 C CNN
F 1 "+3.3V" H 5265 5673 50  0000 C CNN
F 2 "" H 5250 5500 50  0001 C CNN
F 3 "" H 5250 5500 50  0001 C CNN
	1    5250 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5D142B32
P 6100 6750
F 0 "#PWR039" H 6100 6500 50  0001 C CNN
F 1 "GND" H 6105 6577 50  0000 C CNN
F 2 "" H 6100 6750 50  0001 C CNN
F 3 "" H 6100 6750 50  0001 C CNN
	1    6100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6650 6100 6750
Text HLabel 3100 6200 0    50   Input ~ 0
D3R
Text HLabel 3100 3900 0    50   Input ~ 0
D2R
Text HLabel 3100 1750 0    50   Input ~ 0
D1R
$Comp
L dk_CGRKM4007-HF:CGRKM4007-HF D11
U 1 1 5D15A230
P 6100 1550
F 0 "D11" V 6353 1446 60  0000 R CNN
F 1 "CGRKM4007-HF" V 6247 1446 60  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 6300 1190 60  0001 C CNN
F 3 "" H 6100 1550 60  0000 C CNN
	1    6100 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 1050 5250 1150
Wire Wire Line
	6100 1150 5250 1150
Connection ~ 5250 1150
Wire Wire Line
	5250 1150 5250 1550
Wire Wire Line
	5250 5500 5250 5600
$Comp
L dk_CGRKM4007-HF:CGRKM4007-HF D12
U 1 1 5D15C98C
P 6100 3700
F 0 "D12" V 6353 3596 60  0000 R CNN
F 1 "CGRKM4007-HF" V 6247 3596 60  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 6300 3340 60  0001 C CNN
F 3 "" H 6100 3700 60  0000 C CNN
	1    6100 3700
	0    -1   -1   0   
$EndComp
$Comp
L dk_CGRKM4007-HF:CGRKM4007-HF D13
U 1 1 5D15CDDD
P 6100 6000
F 0 "D13" V 6353 5896 60  0000 R CNN
F 1 "CGRKM4007-HF" V 6247 5896 60  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 6300 5640 60  0001 C CNN
F 3 "" H 6100 6000 60  0000 C CNN
	1    6100 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3300 5250 3300
Wire Wire Line
	5250 3200 5250 3300
Connection ~ 5250 3300
Wire Wire Line
	5250 3300 5250 3700
Wire Wire Line
	6100 5600 5250 5600
Connection ~ 5250 5600
Wire Wire Line
	5250 5600 5250 6000
Wire Wire Line
	6100 1150 7200 1150
Wire Wire Line
	7200 1750 6900 1750
Wire Wire Line
	6900 1750 6900 1650
Wire Wire Line
	6900 1650 6100 1650
Wire Wire Line
	7600 1150 7900 1150
Wire Wire Line
	7900 1150 7900 1400
Wire Wire Line
	7900 1400 8300 1400
Wire Wire Line
	7400 1150 7400 1050
Wire Wire Line
	7400 1050 8300 1050
Wire Wire Line
	8300 1050 8300 1300
Wire Wire Line
	7500 1750 8300 1750
Wire Wire Line
	8300 1750 8300 1600
Connection ~ 6100 1650
Connection ~ 6100 1150
Wire Wire Line
	6100 1650 6100 1550
Wire Wire Line
	6100 1800 6100 1650
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 K2
U 1 1 5D16E87C
P 7400 3600
F 0 "K2" H 7728 3646 50  0000 L CNN
F 1 "G5LE-14_DC3" H 7728 3555 50  0000 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 7600 3800 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7600 3900 60  0001 L CNN
F 4 "Z3326-ND" H 7600 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC3" H 7600 4100 60  0001 L CNN "MPN"
F 6 "Relays" H 7600 4200 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 7600 4300 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7600 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC3/Z3326-ND/1815628" H 7600 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 7600 4600 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 7600 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7600 4800 60  0001 L CNN "Status"
	1    7400 3600
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J6
U 1 1 5D16E88C
P 8700 3650
F 0 "J6" H 8373 3552 60  0000 R CNN
F 1 "SJ1-2503A" H 8373 3658 60  0000 R CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 8900 3850 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 8900 3950 60  0001 L CNN
F 4 "CP1-2503A-ND" H 8900 4050 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 8900 4150 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 8900 4250 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 8900 4350 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 8900 4450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 8900 4550 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 8900 4650 60  0001 L CNN "Description"
F 11 "CUI Inc." H 8900 4750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 4850 60  0001 L CNN "Status"
	1    8700 3650
	-1   0    0    1   
$EndComp
NoConn ~ 8300 3650
Wire Wire Line
	6100 3300 7200 3300
Wire Wire Line
	7200 3900 6900 3900
Wire Wire Line
	6900 3900 6900 3800
Wire Wire Line
	6900 3800 6100 3800
Wire Wire Line
	7600 3300 7900 3300
Wire Wire Line
	7900 3300 7900 3550
Wire Wire Line
	7900 3550 8300 3550
Wire Wire Line
	7400 3300 7400 3200
Wire Wire Line
	7400 3200 8300 3200
Wire Wire Line
	8300 3200 8300 3450
Wire Wire Line
	7500 3900 8300 3900
Wire Wire Line
	8300 3900 8300 3750
$Comp
L dk_Power-Relays-Over-2-Amps:G5LE-14_DC5 K3
U 1 1 5D16F847
P 7400 5900
F 0 "K3" H 7728 5946 50  0000 L CNN
F 1 "G5LE-14_DC3" H 7728 5855 50  0000 L CNN
F 2 "digikey-footprints:Relay_THT_G5LE-14" H 7600 6100 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7600 6200 60  0001 L CNN
F 4 "Z3326-ND" H 7600 6300 60  0001 L CNN "Digi-Key_PN"
F 5 "G5LE-14 DC3" H 7600 6400 60  0001 L CNN "MPN"
F 6 "Relays" H 7600 6500 60  0001 L CNN "Category"
F 7 "Power Relays, Over 2 Amps" H 7600 6600 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 7600 6700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/G5LE-14-DC3/Z3326-ND/1815628" H 7600 6800 60  0001 L CNN "DK_Detail_Page"
F 10 "RELAY GEN PURPOSE SPDT 10A 5V" H 7600 6900 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 7600 7000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7600 7100 60  0001 L CNN "Status"
	1    7400 5900
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Audio-Connectors:SJ1-2503A J7
U 1 1 5D16F857
P 8700 5950
F 0 "J7" H 8373 5852 60  0000 R CNN
F 1 "SJ1-2503A" H 8373 5958 60  0000 R CNN
F 2 "digikey-footprints:Headphone_Jack_2.5mm_SJ1-2503A" H 8900 6150 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 8900 6250 60  0001 L CNN
F 4 "CP1-2503A-ND" H 8900 6350 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-2503A" H 8900 6450 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 8900 6550 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 8900 6650 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-2503a.pdf" H 8900 6750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 8900 6850 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 2.5MM R/A" H 8900 6950 60  0001 L CNN "Description"
F 11 "CUI Inc." H 8900 7050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 7150 60  0001 L CNN "Status"
	1    8700 5950
	-1   0    0    1   
$EndComp
NoConn ~ 8300 5950
Wire Wire Line
	6100 5600 7200 5600
Wire Wire Line
	7200 6200 6900 6200
Wire Wire Line
	6900 6200 6900 6100
Wire Wire Line
	6900 6100 6100 6100
Wire Wire Line
	7600 5600 7900 5600
Wire Wire Line
	7900 5600 7900 5850
Wire Wire Line
	7900 5850 8300 5850
Wire Wire Line
	7400 5600 7400 5500
Wire Wire Line
	7400 5500 8300 5500
Wire Wire Line
	8300 5500 8300 5750
Wire Wire Line
	7500 6200 8300 6200
Wire Wire Line
	8300 6200 8300 6050
$Comp
L dk_Optoisolators-Transistor-Photovoltaic-Output:LTV-817 U5
U 1 1 5CF0F5F5
P 4600 1650
F 0 "U5" H 4600 1997 60  0000 C CNN
F 1 "LTV-817S" H 4600 1891 60  0000 C CNN
F 2 "tyler_components:DIP-4_SMD_GullWing" V 4800 1850 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series%20201610%20.pdf" V 4800 1950 60  0001 L CNN
F 4 "160-1366-5-ND" H 4800 2050 60  0001 L CNN "Digi-Key_PN"
F 5 "LTV-817" H 4800 2150 60  0001 L CNN "MPN"
F 6 "Isolators" H 4800 2250 60  0001 L CNN "Category"
F 7 "Optoisolators - Transistor, Photovoltaic Output" H 4800 2350 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series%20201610%20.pdf" H 4800 2450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/LTV-817/160-1366-5-ND/385836" H 4800 2550 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATR 5KV TRANSISTOR 4-DIP" H 4800 2650 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 4800 2750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4800 2850 60  0001 L CNN "Status"
	1    4600 1650
	1    0    0    -1  
$EndComp
$Comp
L dk_Optoisolators-Transistor-Photovoltaic-Output:LTV-817 U6
U 1 1 5CF0F6C0
P 4600 3800
F 0 "U6" H 4600 4147 60  0000 C CNN
F 1 "LTV-817S" H 4600 4041 60  0000 C CNN
F 2 "tyler_components:DIP-4_SMD_GullWing" V 4800 4000 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series%20201610%20.pdf" V 4800 4100 60  0001 L CNN
F 4 "160-1366-5-ND" H 4800 4200 60  0001 L CNN "Digi-Key_PN"
F 5 "LTV-817S" H 4800 4300 60  0001 L CNN "MPN"
F 6 "Isolators" H 4800 4400 60  0001 L CNN "Category"
F 7 "Optoisolators - Transistor, Photovoltaic Output" H 4800 4500 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series%20201610%20.pdf" H 4800 4600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/LTV-817/160-1366-5-ND/385836" H 4800 4700 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATR 5KV TRANSISTOR 4-DIP" H 4800 4800 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 4800 4900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4800 5000 60  0001 L CNN "Status"
	1    4600 3800
	1    0    0    -1  
$EndComp
$Comp
L dk_Optoisolators-Transistor-Photovoltaic-Output:LTV-817 U7
U 1 1 5CF0F828
P 4600 6100
F 0 "U7" H 4600 6447 60  0000 C CNN
F 1 "LTV-817S" H 4600 6341 60  0000 C CNN
F 2 "tyler_components:DIP-4_SMD_GullWing" V 4800 6300 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series%20201610%20.pdf" V 4800 6400 60  0001 L CNN
F 4 "160-1366-5-ND" H 4800 6500 60  0001 L CNN "Digi-Key_PN"
F 5 "LTV-817S" H 4800 6600 60  0001 L CNN "MPN"
F 6 "Isolators" H 4800 6700 60  0001 L CNN "Category"
F 7 "Optoisolators - Transistor, Photovoltaic Output" H 4800 6800 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series%20201610%20.pdf" H 4800 6900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/LTV-817/160-1366-5-ND/385836" H 4800 7000 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATR 5KV TRANSISTOR 4-DIP" H 4800 7100 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 4800 7200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4800 7300 60  0001 L CNN "Status"
	1    4600 6100
	1    0    0    -1  
$EndComp
Connection ~ 6100 3800
Wire Wire Line
	6100 3800 6100 3700
Connection ~ 6100 6100
Wire Wire Line
	6100 6100 6100 6000
Connection ~ 6100 5600
Connection ~ 6100 3300
Wire Notes Line style solid
	500  2700 11150 2700
Wire Notes Line style solid
	500  4900 11200 4900
Wire Notes Line
	11200 5300 11200 5350
Text Notes 2800 850  0    98   ~ 20
Door 1 Relay
Text Notes 2800 3050 0    98   ~ 20
Door 2 Relay
Text Notes 2800 5350 0    98   ~ 20
Door 3 Relay
$EndSCHEMATC
