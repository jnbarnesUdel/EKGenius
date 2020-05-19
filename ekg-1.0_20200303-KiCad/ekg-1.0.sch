EESchema Schematic File Version 4
EELAYER 30 0
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
L AD8220ARMZ:AD8220ARMZ IC1
U 1 1 5E59B87C
P 3800 4900
F 0 "IC1" H 4350 5165 50  0000 C CNN
F 1 "AD8220ARMZ" H 4350 5074 50  0000 C CNN
F 2 "AD8220ARMZ:SOP65P490X110-8N" H 4750 5000 50  0001 L CNN
F 3 "http://www.analog.com/static/imported-files/data_sheets/AD8220.pdf" H 4750 4900 50  0001 L CNN
F 4 "AD8220ARMZ, Instrumention Amplifier, 0.3mV Offset, 74dB CMRR, Rail-Rail Output, 5 to 28V, 8-Pin MSOP" H 4750 4800 50  0001 L CNN "Description"
F 5 "1.1" H 4750 4700 50  0001 L CNN "Height"
F 6 "Analog Devices" H 4750 4600 50  0001 L CNN "Manufacturer_Name"
F 7 "AD8220ARMZ" H 4750 4500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD8220ARMZ" H 4750 4400 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=584-AD8220ARMZ" H 4750 4300 50  0001 L CNN "Mouser Price/Stock"
F 10 "6977228P" H 4750 4200 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6977228P" H 4750 4100 50  0001 L CNN "RS Price/Stock"
	1    3800 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E59CD4E
P 2250 4800
F 0 "R3" V 2043 4800 50  0000 C CNN
F 1 "10k" V 2134 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 4800 50  0001 C CNN
F 3 "~" H 2250 4800 50  0001 C CNN
	1    2250 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 4800 2650 4800
Wire Wire Line
	3800 4800 3800 4900
Wire Wire Line
	3800 5300 3800 5200
Wire Wire Line
	2400 5300 2650 5300
$Comp
L Device:R R4
U 1 1 5E5A11EF
P 2250 5300
F 0 "R4" V 2043 5300 50  0000 C CNN
F 1 "10k" V 2134 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 5300 50  0001 C CNN
F 3 "~" H 2250 5300 50  0001 C CNN
	1    2250 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E5A24DF
P 3550 5050
F 0 "R5" H 3620 5096 50  0000 L CNN
F 1 "5k" H 3620 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 5050 50  0001 C CNN
F 3 "~" H 3550 5050 50  0001 C CNN
	1    3550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4900 3700 4900
Wire Wire Line
	3700 4900 3700 5000
Wire Wire Line
	3700 5000 3800 5000
Wire Wire Line
	3550 5200 3700 5200
Wire Wire Line
	3700 5200 3700 5100
Wire Wire Line
	3700 5100 3800 5100
$Comp
L Device:C C1
U 1 1 5E5A306D
P 3200 5050
F 0 "C1" H 3315 5096 50  0000 L CNN
F 1 "10p" H 3315 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3238 4900 50  0001 C CNN
F 3 "~" H 3200 5050 50  0001 C CNN
	1    3200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4900 3200 4800
Connection ~ 3200 4800
Wire Wire Line
	3200 4800 3800 4800
Wire Wire Line
	3200 5200 3200 5300
Connection ~ 3200 5300
Wire Wire Line
	3200 5300 3800 5300
$Comp
L Device:D D3
U 1 1 5E5A3DE8
P 2900 4550
F 0 "D3" V 2854 4629 50  0000 L CNN
F 1 "D" V 2945 4629 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323F" H 2900 4550 50  0001 C CNN
F 3 "~" H 2900 4550 50  0001 C CNN
	1    2900 4550
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 5E5A45C5
P 2650 4550
F 0 "D1" V 2604 4629 50  0000 L CNN
F 1 "D" V 2695 4629 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323F" H 2650 4550 50  0001 C CNN
F 3 "~" H 2650 4550 50  0001 C CNN
	1    2650 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D4
U 1 1 5E5A58EA
P 2900 5550
F 0 "D4" V 2854 5629 50  0000 L CNN
F 1 "D" V 2945 5629 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323F" H 2900 5550 50  0001 C CNN
F 3 "~" H 2900 5550 50  0001 C CNN
	1    2900 5550
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5E5A58F0
P 2650 5550
F 0 "D2" V 2604 5629 50  0000 L CNN
F 1 "D" V 2695 5629 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323F" H 2650 5550 50  0001 C CNN
F 3 "~" H 2650 5550 50  0001 C CNN
	1    2650 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 5400 2650 5300
Connection ~ 2650 5300
Wire Wire Line
	2650 5300 2900 5300
Wire Wire Line
	2900 5400 2900 5300
Connection ~ 2900 5300
Wire Wire Line
	2900 5300 3200 5300
Wire Wire Line
	2900 4700 2900 4800
Connection ~ 2900 4800
Wire Wire Line
	2900 4800 3200 4800
Wire Wire Line
	2650 4700 2650 4800
Connection ~ 2650 4800
Wire Wire Line
	2650 4800 2900 4800
Text GLabel 2650 5700 3    50   Input ~ 0
V+
Text GLabel 2900 5700 3    50   Input ~ 0
V-
Text GLabel 2900 4400 1    50   Input ~ 0
V+
Text GLabel 2650 4400 1    50   Input ~ 0
V-
$Comp
L Device:C C3
U 1 1 5E5A8D79
P 3800 5450
F 0 "C3" H 3915 5496 50  0000 L CNN
F 1 "2.2p" H 3915 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 5300 50  0001 C CNN
F 3 "~" H 3800 5450 50  0001 C CNN
	1    3800 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E5A9636
P 3800 4650
F 0 "C2" H 3915 4696 50  0000 L CNN
F 1 "2.2p" H 3915 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 4500 50  0001 C CNN
F 3 "~" H 3800 4650 50  0001 C CNN
	1    3800 4650
	1    0    0    -1  
$EndComp
Connection ~ 3800 5300
$Comp
L power:GNDREF #PWR05
U 1 1 5E5AA529
P 3800 5600
F 0 "#PWR05" H 3800 5350 50  0001 C CNN
F 1 "GNDREF" H 3805 5427 50  0000 C CNN
F 2 "" H 3800 5600 50  0001 C CNN
F 3 "" H 3800 5600 50  0001 C CNN
	1    3800 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5E5ABD3F
P 3800 4500
F 0 "#PWR04" H 3800 4250 50  0001 C CNN
F 1 "GNDREF" H 3805 4327 50  0000 C CNN
F 2 "" H 3800 4500 50  0001 C CNN
F 3 "" H 3800 4500 50  0001 C CNN
	1    3800 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR010
U 1 1 5E5AD5F9
P 5450 5300
F 0 "#PWR010" H 5450 5050 50  0001 C CNN
F 1 "GNDREF" H 5455 5127 50  0000 C CNN
F 2 "" H 5450 5300 50  0001 C CNN
F 3 "" H 5450 5300 50  0001 C CNN
	1    5450 5300
	1    0    0    -1  
$EndComp
Text GLabel 5100 5300 3    50   Input ~ 0
V-
Wire Wire Line
	4900 5200 5100 5200
Wire Wire Line
	5100 5200 5100 5300
$Comp
L Device:C C6
U 1 1 5E5B3ABF
P 4900 5600
F 0 "C6" H 5015 5646 50  0000 L CNN
F 1 "100n" H 5015 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4938 5450 50  0001 C CNN
F 3 "~" H 4900 5600 50  0001 C CNN
	1    4900 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E5B5661
P 4900 4500
F 0 "C5" H 5015 4546 50  0000 L CNN
F 1 "100n" H 5015 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4938 4350 50  0001 C CNN
F 3 "~" H 4900 4500 50  0001 C CNN
	1    4900 4500
	1    0    0    -1  
$EndComp
Text GLabel 5100 4800 1    50   Input ~ 0
V+
$Comp
L power:GNDREF #PWR09
U 1 1 5E5B6824
P 4900 5750
F 0 "#PWR09" H 4900 5500 50  0001 C CNN
F 1 "GNDREF" H 4905 5577 50  0000 C CNN
F 2 "" H 4900 5750 50  0001 C CNN
F 3 "" H 4900 5750 50  0001 C CNN
	1    4900 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 5E5B6ECF
P 4900 4350
F 0 "#PWR08" H 4900 4100 50  0001 C CNN
F 1 "GNDREF" H 4905 4177 50  0000 C CNN
F 2 "" H 4900 4350 50  0001 C CNN
F 3 "" H 4900 4350 50  0001 C CNN
	1    4900 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 5100 5450 5100
Wire Wire Line
	5450 5100 5450 5300
Wire Wire Line
	4900 5450 4900 5200
Connection ~ 4900 5200
Wire Wire Line
	4900 4650 4900 4900
Wire Wire Line
	5100 4800 5100 4900
Wire Wire Line
	5100 4900 4900 4900
Connection ~ 4900 4900
$Comp
L Device:C C8
U 1 1 5E5BD131
P 6250 5000
F 0 "C8" V 6502 5000 50  0000 C CNN
F 1 "4.7u" V 6411 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6288 4850 50  0001 C CNN
F 3 "~" H 6250 5000 50  0001 C CNN
	1    6250 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 5000 6100 5000
$Comp
L Device:C C10
U 1 1 5E5BEF5B
P 6800 5150
F 0 "C10" V 7052 5150 50  0000 C CNN
F 1 "4.7u" V 6961 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6838 5000 50  0001 C CNN
F 3 "~" H 6800 5150 50  0001 C CNN
	1    6800 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5E5BFF21
P 7150 5150
F 0 "R6" V 6943 5150 50  0000 C CNN
F 1 "10k" V 7034 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7080 5150 50  0001 C CNN
F 3 "~" H 7150 5150 50  0001 C CNN
	1    7150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5000 6800 5000
Wire Wire Line
	6800 5000 7150 5000
Connection ~ 6800 5000
Text GLabel 6800 5300 3    50   Input ~ 0
VG
Text GLabel 7150 5300 3    50   Input ~ 0
VG
$Comp
L Amplifier_Operational:LM324 U2
U 1 1 5E5C44FA
P 8350 5100
F 0 "U2" H 8350 5467 50  0000 C CNN
F 1 "LM324" H 8350 5376 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8300 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8400 5300 50  0001 C CNN
	1    8350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5000 8050 5000
Connection ~ 7150 5000
Text GLabel 7550 5600 0    50   Input ~ 0
VG
$Comp
L Device:R R7
U 1 1 5E5C7721
P 7700 5600
F 0 "R7" V 7907 5600 50  0000 C CNN
F 1 "1k" V 7816 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 5600 50  0001 C CNN
F 3 "~" H 7700 5600 50  0001 C CNN
	1    7700 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E5C7ED6
P 8350 5600
F 0 "R8" V 8143 5600 50  0000 C CNN
F 1 "10k" V 8234 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8280 5600 50  0001 C CNN
F 3 "~" H 8350 5600 50  0001 C CNN
	1    8350 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E5C94A3
P 9400 5350
F 0 "R10" V 9193 5350 50  0000 C CNN
F 1 "10k" V 9284 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 5350 50  0001 C CNN
F 3 "~" H 9400 5350 50  0001 C CNN
	1    9400 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5E5C9C02
P 9050 5100
F 0 "R9" V 8843 5100 50  0000 C CNN
F 1 "24k" V 8934 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 5100 50  0001 C CNN
F 3 "~" H 9050 5100 50  0001 C CNN
	1    9050 5100
	0    1    1    0   
$EndComp
Text GLabel 1000 1250 1    50   Input ~ 0
V+
$Comp
L Amplifier_Operational:LM324 U2
U 5 1 5E5CBCCE
P 1100 1550
F 0 "U2" H 1058 1596 50  0000 L CNN
F 1 "LM324" H 1058 1505 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1050 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 1150 1750 50  0001 C CNN
	5    1100 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 5E5D04FE
P 1000 1850
F 0 "#PWR01" H 1000 1600 50  0001 C CNN
F 1 "GNDREF" H 1005 1677 50  0000 C CNN
F 2 "" H 1000 1850 50  0001 C CNN
F 3 "" H 1000 1850 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5600 8050 5600
Wire Wire Line
	8050 5600 8050 5200
Wire Wire Line
	8200 5600 8050 5600
Connection ~ 8050 5600
Wire Wire Line
	8650 5100 8750 5100
Wire Wire Line
	9200 5100 9400 5100
Wire Wire Line
	9400 5100 9400 5200
Wire Wire Line
	8500 5600 8750 5600
Wire Wire Line
	8750 5600 8750 5100
Connection ~ 8750 5100
Wire Wire Line
	8750 5100 8900 5100
$Comp
L power:GNDREF #PWR014
U 1 1 5E5E70AC
P 9400 5500
F 0 "#PWR014" H 9400 5250 50  0001 C CNN
F 1 "GNDREF" H 9405 5327 50  0000 C CNN
F 2 "" H 9400 5500 50  0001 C CNN
F 3 "" H 9400 5500 50  0001 C CNN
	1    9400 5500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 2 1 5E5F3420
P 2800 1750
F 0 "U2" H 2800 2117 50  0000 C CNN
F 1 "LM324" H 2800 2026 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2750 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2850 1950 50  0001 C CNN
	2    2800 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E5FAAB0
P 2000 1400
F 0 "R1" V 1793 1400 50  0000 C CNN
F 1 "10k" V 1884 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 1400 50  0001 C CNN
F 3 "~" H 2000 1400 50  0001 C CNN
	1    2000 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5E5FB406
P 2000 1850
F 0 "R2" V 1793 1850 50  0000 C CNN
F 1 "10k" V 1884 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 1850 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
	1    2000 1850
	-1   0    0    1   
$EndComp
Text GLabel 2000 1250 1    50   Input ~ 0
V+
Text GLabel 3200 1750 2    50   Input ~ 0
VG
$Comp
L power:GNDREF #PWR03
U 1 1 5E60E0C7
P 2000 2000
F 0 "#PWR03" H 2000 1750 50  0001 C CNN
F 1 "GNDREF" H 2005 1827 50  0000 C CNN
F 2 "" H 2000 2000 50  0001 C CNN
F 3 "" H 2000 2000 50  0001 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1550 2000 1650
Wire Wire Line
	2500 1650 2000 1650
Connection ~ 2000 1650
Wire Wire Line
	2000 1650 2000 1700
Wire Wire Line
	2500 1850 2500 2050
Wire Wire Line
	2500 2050 3100 2050
Wire Wire Line
	3100 2050 3100 1750
Wire Wire Line
	3200 1750 3100 1750
Connection ~ 3100 1750
$Comp
L Device:L L2
U 1 1 5E61FD79
P 6500 2000
F 0 "L2" V 6690 2000 50  0000 C CNN
F 1 "4.7u" V 6599 2000 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 6500 2000 50  0001 C CNN
F 3 "~" H 6500 2000 50  0001 C CNN
	1    6500 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 2000 6350 2000
$Comp
L Device:L L1
U 1 1 5E61E600
P 5500 1400
F 0 "L1" V 5690 1400 50  0000 C CNN
F 1 "4.7u" V 5599 1400 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 5500 1400 50  0001 C CNN
F 3 "~" H 5500 1400 50  0001 C CNN
	1    5500 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 1400 5350 1400
Wire Wire Line
	6100 1400 5650 1400
$Comp
L Device:C C7
U 1 1 5E636844
P 5500 1050
F 0 "C7" V 5752 1050 50  0000 C CNN
F 1 "10u" V 5661 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5538 900 50  0001 C CNN
F 3 "~" H 5500 1050 50  0001 C CNN
	1    5500 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1400 6100 1100
Wire Wire Line
	6100 1050 5650 1050
Connection ~ 6100 1400
Wire Wire Line
	5350 1050 4750 1050
Wire Wire Line
	4700 1050 4700 1900
Wire Wire Line
	4700 1900 4900 1900
$Comp
L Device:C C9
U 1 1 5E63C240
P 6500 1600
F 0 "C9" V 6752 1600 50  0000 C CNN
F 1 "100n" V 6661 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 1450 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6500 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 1900 6300 1900
Wire Wire Line
	6350 1900 6350 1600
Wire Wire Line
	6650 1600 6850 1600
Wire Wire Line
	6850 1600 6850 3050
Wire Wire Line
	6850 3050 4750 3050
Wire Wire Line
	4700 3050 4700 2200
Wire Wire Line
	4700 2200 4900 2200
$Comp
L power:GNDREF #PWR06
U 1 1 5E642850
P 4300 2350
F 0 "#PWR06" H 4300 2100 50  0001 C CNN
F 1 "GNDREF" H 4305 2177 50  0000 C CNN
F 2 "" H 4300 2350 50  0001 C CNN
F 3 "" H 4300 2350 50  0001 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2300 4300 2300
Wire Wire Line
	4300 2300 4300 2350
Wire Wire Line
	4900 2100 4300 2100
Wire Wire Line
	4300 2100 4300 2300
Connection ~ 4300 2300
$Comp
L power:GNDREF #PWR012
U 1 1 5E646924
P 6650 2200
F 0 "#PWR012" H 6650 1950 50  0001 C CNN
F 1 "GNDREF" H 6655 2027 50  0000 C CNN
F 2 "" H 6650 2200 50  0001 C CNN
F 3 "" H 6650 2200 50  0001 C CNN
	1    6650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2000 6650 2200
Wire Wire Line
	6650 2200 6100 2200
$Comp
L Device:C C4
U 1 1 5E6517C4
P 4350 1800
F 0 "C4" V 4602 1800 50  0000 C CNN
F 1 "10u" V 4511 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4388 1650 50  0001 C CNN
F 3 "~" H 4350 1800 50  0001 C CNN
	1    4350 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5E6538E0
P 7250 1800
F 0 "C11" V 7502 1800 50  0000 C CNN
F 1 "10u" V 7411 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7288 1650 50  0001 C CNN
F 3 "~" H 7250 1800 50  0001 C CNN
	1    7250 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 2100 7250 2100
Wire Wire Line
	4900 2000 4350 2000
Wire Wire Line
	4350 2000 4350 1950
$Comp
L power:GNDREF #PWR07
U 1 1 5E658B7D
P 4350 1650
F 0 "#PWR07" H 4350 1400 50  0001 C CNN
F 1 "GNDREF" H 4355 1477 50  0000 C CNN
F 2 "" H 4350 1650 50  0001 C CNN
F 3 "" H 4350 1650 50  0001 C CNN
	1    4350 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR013
U 1 1 5E65A660
P 7250 1650
F 0 "#PWR013" H 7250 1400 50  0001 C CNN
F 1 "GNDREF" H 7255 1477 50  0000 C CNN
F 2 "" H 7250 1650 50  0001 C CNN
F 3 "" H 7250 1650 50  0001 C CNN
	1    7250 1650
	-1   0    0    1   
$EndComp
Text GLabel 4250 2000 0    50   Input ~ 0
V+
Wire Wire Line
	4350 2000 4250 2000
Connection ~ 4350 2000
Text GLabel 7250 2200 3    50   Input ~ 0
V-
Wire Wire Line
	7250 1950 7250 2100
Wire Wire Line
	7250 2200 7250 2100
Connection ~ 7250 2100
Connection ~ 6650 2200
Text GLabel 6350 1100 2    50   Input ~ 0
3.3-5V
Wire Wire Line
	6300 1900 6300 1100
Wire Wire Line
	6300 1100 6350 1100
Connection ~ 6300 1900
Wire Wire Line
	6300 1900 6350 1900
Wire Wire Line
	6100 1100 6300 1100
Connection ~ 6100 1100
Wire Wire Line
	6100 1100 6100 1050
Connection ~ 6300 1100
$Comp
L power:GNDREF #PWR011
U 1 1 5E672DE4
P 5500 2800
F 0 "#PWR011" H 5500 2550 50  0001 C CNN
F 1 "GNDREF" H 5505 2627 50  0000 C CNN
F 2 "" H 5500 2800 50  0001 C CNN
F 3 "" H 5500 2800 50  0001 C CNN
	1    5500 2800
	0    -1   -1   0   
$EndComp
$Comp
L SJ-43514:SJ-43514 J1
U 1 1 5E6793D6
P 1800 5150
F 0 "J1" V 2154 5278 50  0000 L CNN
F 1 "SJ-43514" V 2245 5278 50  0000 L CNN
F 2 "SJ-43514:SJ43514" H 2450 5250 50  0001 L CNN
F 3 "https://www.cui.com/product/resource/sj-4351x.pdf" H 2450 5150 50  0001 L CNN
F 4 "Phone Connectors audio jack, 3.5 mm, rt, 4 conductor, through hole, 0 switches" H 2450 5050 50  0001 L CNN "Description"
F 5 "5" H 2450 4950 50  0001 L CNN "Height"
F 6 "CUI Devices" H 2450 4850 50  0001 L CNN "Manufacturer_Name"
F 7 "SJ-43514" H 2450 4750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-SJ-43514" H 2450 4650 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=490-SJ-43514" H 2450 4550 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2450 4450 50  0001 L CNN "RS Part Number"
F 11 "" H 2450 4350 50  0001 L CNN "RS Price/Stock"
	1    1800 5150
	-1   0    0    1   
$EndComp
Connection ~ 3800 4800
NoConn ~ 1000 5050
Wire Wire Line
	2100 5300 2000 5300
Wire Wire Line
	2000 5300 2000 5050
Wire Wire Line
	2000 5050 1800 5050
Wire Wire Line
	1800 4950 2100 4950
Wire Wire Line
	2100 4950 2100 4800
$Comp
L power:GNDREF #PWR02
U 1 1 5E69D995
P 1800 5150
F 0 "#PWR02" H 1800 4900 50  0001 C CNN
F 1 "GNDREF" H 1805 4977 50  0000 C CNN
F 2 "" H 1800 5150 50  0001 C CNN
F 3 "" H 1800 5150 50  0001 C CNN
	1    1800 5150
	1    0    0    -1  
$EndComp
Text GLabel 3550 4900 0    50   Input ~ 0
RG1
Text GLabel 3550 5200 0    50   Input ~ 0
RG2
Text GLabel 9600 4200 3    50   Input ~ 0
RG1
Text GLabel 9250 4200 3    50   Input ~ 0
RG2
$Comp
L Device:R R12
U 1 1 5E5E716F
P 9100 3900
F 0 "R12" V 9307 3900 50  0000 C CNN
F 1 "24.9k" V 9216 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 3900 50  0001 C CNN
F 3 "~" H 9100 3900 50  0001 C CNN
	1    9100 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E5E784A
P 9750 3900
F 0 "R13" V 9957 3900 50  0000 C CNN
F 1 "24.9k" V 9866 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 3900 50  0001 C CNN
F 3 "~" H 9750 3900 50  0001 C CNN
	1    9750 3900
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 3 1 5E5E7D20
P 9750 3250
F 0 "U2" H 9750 3617 50  0000 C CNN
F 1 "LM324" H 9750 3526 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9700 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9800 3450 50  0001 C CNN
	3    9750 3250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 4 1 5E5E8DC5
P 9750 1850
F 0 "U2" H 9750 2217 50  0000 C CNN
F 1 "LM324" H 9750 2126 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9700 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 9800 2050 50  0001 C CNN
	4    9750 1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5E5EAA59
P 9800 2300
F 0 "C12" V 9548 2300 50  0000 C CNN
F 1 "68p" V 9639 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9838 2150 50  0001 C CNN
F 3 "~" H 9800 2300 50  0001 C CNN
	1    9800 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E5ECD75
P 9000 1850
F 0 "R11" V 9207 1850 50  0000 C CNN
F 1 "499k" V 9116 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 1850 50  0001 C CNN
F 3 "~" H 9000 1850 50  0001 C CNN
	1    9000 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5E5EF1B4
P 9800 2650
F 0 "R14" V 10007 2650 50  0000 C CNN
F 1 "866k" V 9916 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9730 2650 50  0001 C CNN
F 3 "~" H 9800 2650 50  0001 C CNN
	1    9800 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5E5F17BC
P 10200 2950
F 0 "R15" H 10130 2904 50  0000 R CNN
F 1 "12.7k" H 10130 2995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10130 2950 50  0001 C CNN
F 3 "~" H 10200 2950 50  0001 C CNN
	1    10200 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 3900 9300 3900
Wire Wire Line
	8950 3900 8950 4200
Wire Wire Line
	8950 4200 9250 4200
Wire Wire Line
	9600 4200 9900 4200
Wire Wire Line
	9900 4200 9900 3900
Wire Wire Line
	9300 3900 9300 3150
Wire Wire Line
	9300 3150 9450 3150
Connection ~ 9300 3900
Wire Wire Line
	9300 3900 9600 3900
Wire Wire Line
	9450 3350 9450 3550
Wire Wire Line
	9450 3550 10200 3550
Wire Wire Line
	10200 3550 10200 3250
Wire Wire Line
	10050 3250 10200 3250
Connection ~ 10200 3250
Wire Wire Line
	10200 3250 10200 3100
Wire Wire Line
	10200 2800 10200 1950
Wire Wire Line
	10200 1950 10050 1950
Wire Wire Line
	10050 1950 10050 2300
Wire Wire Line
	10050 2650 9950 2650
Connection ~ 10050 1950
Wire Wire Line
	9950 2300 10050 2300
Connection ~ 10050 2300
Wire Wire Line
	9350 1850 9450 1850
Wire Wire Line
	9650 2300 9350 2300
Connection ~ 9350 2300
Wire Wire Line
	9350 2300 9350 1850
Wire Wire Line
	9350 1850 9150 1850
Connection ~ 9350 1850
$Comp
L power:GNDREF #PWR015
U 1 1 5E68E930
P 10200 1750
F 0 "#PWR015" H 10200 1500 50  0001 C CNN
F 1 "GNDREF" H 10205 1577 50  0000 C CNN
F 2 "" H 10200 1750 50  0001 C CNN
F 3 "" H 10200 1750 50  0001 C CNN
	1    10200 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 1750 10200 1750
Text GLabel 8850 1850 0    50   Input ~ 0
RLD
Text GLabel 1000 5150 0    50   Input ~ 0
RLD
Wire Wire Line
	9350 2300 9350 2650
Wire Wire Line
	10050 2300 10050 2650
Wire Wire Line
	9650 2650 9350 2650
Text GLabel 9400 5100 2    50   Input ~ 0
AMPOUT
$Comp
L power:GNDREF #PWR016
U 1 1 5E7D2E0C
P 4750 1050
F 0 "#PWR016" H 4750 800 50  0001 C CNN
F 1 "GNDREF" H 4755 877 50  0000 C CNN
F 2 "" H 4750 1050 50  0001 C CNN
F 3 "" H 4750 1050 50  0001 C CNN
	1    4750 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR017
U 1 1 5E7D87C6
P 4750 3050
F 0 "#PWR017" H 4750 2800 50  0001 C CNN
F 1 "GNDREF" H 4755 2877 50  0000 C CNN
F 2 "" H 4750 3050 50  0001 C CNN
F 3 "" H 4750 3050 50  0001 C CNN
	1    4750 3050
	1    0    0    -1  
$EndComp
Connection ~ 4750 3050
Wire Wire Line
	4750 3050 4700 3050
Connection ~ 4750 1050
Wire Wire Line
	4750 1050 4700 1050
Wire Wire Line
	6100 1800 6100 1400
Wire Wire Line
	4900 1800 4900 1400
$Comp
L TPS65133DPDR:TPS65133DPDR IC2
U 1 1 5E617EEC
P 4900 1800
F 0 "IC2" H 5500 2065 50  0000 C CNN
F 1 "TPS65133DPDR" H 5500 1974 50  0000 C CNN
F 2 "TPS65133DPDR:SON45P300X300X80-13N-D" H 5950 1900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps65133.pdf" H 5950 1800 50  0001 L CNN
F 4 "Split-Rail Converter, +/-5V, 250mA Dual Output Power Supply" H 5950 1700 50  0001 L CNN "Description"
F 5 "0.8" H 5950 1600 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 5950 1500 50  0001 L CNN "Manufacturer_Name"
F 7 "TPS65133DPDR" H 5950 1400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-TPS65133DPDR" H 5950 1300 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-TPS65133DPDR" H 5950 1200 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5950 1100 50  0001 L CNN "RS Part Number"
F 11 "" H 5950 1000 50  0001 L CNN "RS Price/Stock"
	1    4900 1800
	1    0    0    -1  
$EndComp
Text GLabel 6100 2600 2    50   Input ~ 0
3.3-5V
$Comp
L Device:R R16
U 1 1 5E7FD36E
P 6100 2450
F 0 "R16" H 6170 2496 50  0000 L CNN
F 1 "1k" H 6170 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 2450 50  0001 C CNN
F 3 "~" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5E8181F7
P 1100 7100
F 0 "J4" H 1180 7142 50  0000 L CNN
F 1 "BATT" H 1180 7051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1100 7100 50  0001 C CNN
F 3 "~" H 1100 7100 50  0001 C CNN
	1    1100 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5E8353D3
P 2100 7100
F 0 "J5" H 2180 7142 50  0000 L CNN
F 1 "X" H 2180 7051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 7100 50  0001 C CNN
F 3 "~" H 2100 7100 50  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5E838AF7
P 3300 7100
F 0 "J6" H 3380 7142 50  0000 L CNN
F 1 "GND" H 3380 7051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3300 7100 50  0001 C CNN
F 3 "~" H 3300 7100 50  0001 C CNN
	1    3300 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5E83C2ED
P 4500 7100
F 0 "J7" H 4580 7142 50  0000 L CNN
F 1 "A3" H 4580 7051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4500 7100 50  0001 C CNN
F 3 "~" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
Text GLabel 900  7100 0    50   Input ~ 0
3.3-5V
$Comp
L power:GNDREF #PWR018
U 1 1 5E8449CE
P 3100 7100
F 0 "#PWR018" H 3100 6850 50  0001 C CNN
F 1 "GNDREF" H 3105 6927 50  0000 C CNN
F 2 "" H 3100 7100 50  0001 C CNN
F 3 "" H 3100 7100 50  0001 C CNN
	1    3100 7100
	0    1    1    0   
$EndComp
Text GLabel 4300 7100 0    50   Input ~ 0
AMPOUT
NoConn ~ 1900 7100
$EndSCHEMATC
