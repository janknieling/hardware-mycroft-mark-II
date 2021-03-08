EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 8 8
Title "MCU & Fan"
Date "2021-01-27"
Rev "Rev6 - v2"
Comp "Mycroft AI"
Comment1 "SJ-201-R6"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5FD2A551
P 5150 3175
AR Path="/5EA9C461/5FD2A551" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD2A551" Ref="#PWR0194"  Part="1" 
F 0 "#PWR0194" H 5150 2925 50  0001 C CNN
F 1 "GND" H 5155 3002 50  0000 C CNN
F 2 "" H 5150 3175 50  0001 C CNN
F 3 "" H 5150 3175 50  0001 C CNN
	1    5150 3175
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD2A557
P 5150 1775
AR Path="/5EA9C67D/5FD2A557" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FD2A557" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD2A557" Ref="#PWR0195"  Part="1" 
F 0 "#PWR0195" H 5150 1625 50  0001 C CNN
F 1 "+3.3V" H 5150 1925 50  0000 C CNN
F 2 "" H 5150 1775 50  0001 C CNN
F 3 "" H 5150 1775 50  0001 C CNN
	1    5150 1775
	1    0    0    -1  
$EndComp
Text GLabel 5750 2575 2    51   Input ~ 0
Neopixel
$Comp
L Connector:TestPoint TP?
U 1 1 5FD2A55F
P 5825 2075
AR Path="/5EA9C461/5FD2A55F" Ref="TP?"  Part="1" 
AR Path="/5FD1D934/5FD2A55F" Ref="TP2"  Part="1" 
F 0 "TP2" H 5750 2275 50  0000 L CNN
F 1 "ATTinyProg" H 5675 2350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6025 2075 50  0001 C CNN
F 3 "~" H 6025 2075 50  0001 C CNN
F 4 "DNP" H 5825 2075 50  0001 C CNN "MPN"
	1    5825 2075
	1    0    0    -1  
$EndComp
Text GLabel 4550 2175 0    51   Input ~ 0
SDA
Text GLabel 4550 2075 0    51   Input ~ 0
SCL
Text GLabel 4550 2275 0    51   Input ~ 0
UART_RXD_PI
Text GLabel 4550 2375 0    51   Input ~ 0
UART_TXD_PI
Text GLabel 6225 2175 2    50   Input ~ 0
TPU_RST_L_33
Text GLabel 6225 2275 2    50   Output ~ 0
TPU_PGOOD_33
Text GLabel 6200 2675 2    50   Input ~ 0
TPU_PMIC_EN_33
Text Notes 6600 2975 2    50   ~ 0
Coral TPU
Text GLabel 5750 2475 2    51   Input ~ 0
FanPWM
Wire Wire Line
	5750 2275 6225 2275
Wire Wire Line
	5750 2175 6225 2175
Text GLabel 5750 2375 2    51   Input ~ 0
FanTach
Wire Wire Line
	6200 2675 5750 2675
$Comp
L MCU_Microchip_ATtiny:ATtiny1614-SS U?
U 1 1 5FD2A577
P 5150 2475
AR Path="/5EA9C461/5FD2A577" Ref="U?"  Part="1" 
AR Path="/5FD1D934/5FD2A577" Ref="U13"  Part="1" 
F 0 "U13" H 4700 3125 50  0000 C CNN
F 1 "ATtiny1614-SS" H 4750 1825 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5150 2475 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny1614-data-sheet-40001995A.pdf" H 5150 2475 50  0001 C CNN
F 4 "C481364" H 5150 2475 50  0001 C CNN "LCSC"
F 5 "ATTINY1614-SSNR" H 5150 2475 50  0001 C CNN "MPN"
	1    5150 2475
	1    0    0    -1  
$EndComp
Text GLabel 6025 2075 2    50   Input ~ 0
ATtinyRESET
Wire Wire Line
	5825 2075 5750 2075
Wire Notes Line
	6175 2900 6175 2125
$Comp
L Device:R_Small R?
U 1 1 5FD2A584
P 5925 2075
AR Path="/5EA9C461/5FD2A584" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FD2A584" Ref="R?"  Part="1" 
AR Path="/5EA9C76D/5FD2A584" Ref="R?"  Part="1" 
AR Path="/5EAB86B0/5FD2A584" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FD2A584" Ref="R9"  Part="1" 
F 0 "R9" V 5850 2025 50  0000 L CNN
F 1 "4.7k" V 6000 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5925 2075 50  0001 C CNN
F 3 "~" H 5925 2075 50  0001 C CNN
F 4 "0402WGF4701TCE" H 5925 2075 50  0001 C CNN "MPN"
F 5 "C25900" H 5925 2075 50  0001 C CNN "LCSC"
F 6 "RC0402JR-074K7L" H 5925 2075 50  0001 C CNN "Tempo"
	1    5925 2075
	0    1    1    0   
$EndComp
Text Notes 3600 925  0    197  ~ 0
MCU - ATtiny 1614
Connection ~ 5825 2075
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5FD46665
P 2200 6675
AR Path="/5EAB86B0/5FD46665" Ref="Q?"  Part="1" 
AR Path="/5FD1D934/5FD46665" Ref="Q1"  Part="1" 
F 0 "Q1" H 2391 6721 50  0000 L CNN
F 1 "MMBT3904" H 2391 6630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2400 6600 50  0001 L CIN
F 3 "" H 2200 6675 50  0001 L CNN
F 4 "C382281" H 2200 6675 50  0001 C CNN "LCSC"
F 5 "MMBT3904" H 2200 6675 50  0001 C CNN "MPN"
F 6 "https://lcsc.com/product-detail/New-Arrivals_KEXIN-MMBT3904_C382281.html" H 2200 6675 50  0001 C CNN "Link"
	1    2200 6675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD4666B
P 2300 6875
AR Path="/5EAB86B0/5FD4666B" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD4666B" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 2300 6625 50  0001 C CNN
F 1 "GND" H 2305 6702 50  0000 C CNN
F 2 "" H 2300 6875 50  0001 C CNN
F 3 "" H 2300 6875 50  0001 C CNN
	1    2300 6875
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FD46674
P 1750 6675
AR Path="/5EA9C461/5FD46674" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FD46674" Ref="R?"  Part="1" 
AR Path="/5EA9C76D/5FD46674" Ref="R?"  Part="1" 
AR Path="/5EAB86B0/5FD46674" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FD46674" Ref="R2"  Part="1" 
F 0 "R2" V 1650 6675 50  0000 L CNN
F 1 "4.7k" V 1850 6625 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1750 6675 50  0001 C CNN
F 3 "~" H 1750 6675 50  0001 C CNN
F 4 "0402WGF4701TCE" H 1750 6675 50  0001 C CNN "MPN"
F 5 "C25900" H 1750 6675 50  0001 C CNN "LCSC"
F 6 "RC0402JR-074K7L" H 1750 6675 50  0001 C CNN "Tempo"
	1    1750 6675
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FD4667D
P 2300 6075
AR Path="/5EA9C461/5FD4667D" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FD4667D" Ref="R?"  Part="1" 
AR Path="/5EA9C76D/5FD4667D" Ref="R?"  Part="1" 
AR Path="/5EAB86B0/5FD4667D" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FD4667D" Ref="R18"  Part="1" 
F 0 "R18" H 2375 6100 50  0000 L CNN
F 1 "4.7k" H 2375 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2300 6075 50  0001 C CNN
F 3 "~" H 2300 6075 50  0001 C CNN
F 4 "0402WGF4701TCE" H 2300 6075 50  0001 C CNN "MPN"
F 5 "C25900" H 2300 6075 50  0001 C CNN "LCSC"
F 6 "RC0402JR-074K7L" H 2300 6075 50  0001 C CNN "Tempo"
	1    2300 6075
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FD46683
P 3300 6125
AR Path="/5EAAC9A5/5FD46683" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FD46683" Ref="#PWR?"  Part="1" 
AR Path="/5EAB86B0/5FD46683" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD46683" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 3300 5975 50  0001 C CNN
F 1 "+12V" H 3315 6298 50  0000 C CNN
F 2 "" H 3300 6125 50  0001 C CNN
F 3 "" H 3300 6125 50  0001 C CNN
	1    3300 6125
	1    0    0    -1  
$EndComp
Text GLabel 3800 6675 2    51   Input ~ 0
FanTach
Wire Wire Line
	3750 6125 3300 6125
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FD4668D
P 3950 6125
AR Path="/5EA9C461/5FD4668D" Ref="J?"  Part="1" 
AR Path="/5EAB86B0/5FD4668D" Ref="J?"  Part="1" 
AR Path="/5FD1D934/5FD4668D" Ref="J7"  Part="1" 
F 0 "J7" H 3868 5700 50  0000 C CNN
F 1 "FanConnector" H 3868 5791 50  0000 C CNN
F 2 "Mycroft:FanPinHeader_1x04_P2.54mm_Vertical" H 3950 6125 50  0001 C CNN
F 3 "~" H 3950 6125 50  0001 C CNN
F 4 "744-81-04TG1B" H 3950 6125 50  0001 C CNN "MPN"
F 5 "C402775" H 3950 6125 50  0001 C CNN "LCSC"
	1    3950 6125
	1    0    0    -1  
$EndComp
Text GLabel 1650 6675 0    51   Input ~ 0
FanPWM
$Comp
L power:GND #PWR?
U 1 1 5FD46694
P 3925 5750
AR Path="/5EAB86B0/5FD46694" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD46694" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 3925 5500 50  0001 C CNN
F 1 "GND" H 3930 5577 50  0000 C CNN
F 2 "" H 3925 5750 50  0001 C CNN
F 3 "" H 3925 5750 50  0001 C CNN
	1    3925 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 5750 3750 5750
Wire Wire Line
	3750 5750 3750 6025
Wire Wire Line
	3750 6325 2300 6325
Wire Wire Line
	2300 6325 2300 6475
Text Label 3175 6325 0    50   ~ 0
FAN_PWM
$Comp
L power:+12V #PWR?
U 1 1 5FD4669F
P 2300 5975
AR Path="/5EAAC9A5/5FD4669F" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FD4669F" Ref="#PWR?"  Part="1" 
AR Path="/5EAB86B0/5FD4669F" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD4669F" Ref="#PWR0188"  Part="1" 
F 0 "#PWR0188" H 2300 5825 50  0001 C CNN
F 1 "+12V" H 2315 6148 50  0000 C CNN
F 2 "" H 2300 5975 50  0001 C CNN
F 3 "" H 2300 5975 50  0001 C CNN
	1    2300 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6175 2300 6325
Connection ~ 2300 6325
Wire Wire Line
	2000 6675 1850 6675
Wire Wire Line
	3750 6225 3050 6225
Wire Wire Line
	3050 6225 3050 6675
Wire Wire Line
	3050 6675 3375 6675
$Comp
L Device:R_Small R?
U 1 1 5FD466AD
P 3475 6675
AR Path="/5EA9C461/5FD466AD" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FD466AD" Ref="R?"  Part="1" 
AR Path="/5EA9C76D/5FD466AD" Ref="R?"  Part="1" 
AR Path="/5EAB86B0/5FD466AD" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FD466AD" Ref="R20"  Part="1" 
F 0 "R20" V 3400 6625 50  0000 L CNN
F 1 "27k" V 3550 6650 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3475 6675 50  0001 C CNN
F 3 "~" H 3475 6675 50  0001 C CNN
F 4 "C25771" H 3475 6675 50  0001 C CNN "LCSC"
F 5 "0402WGF2702TCE" H 3475 6675 50  0001 C CNN "MPN"
	1    3475 6675
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD466B3
P 3725 6975
AR Path="/5EAB86B0/5FD466B3" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FD466B3" Ref="#PWR0189"  Part="1" 
F 0 "#PWR0189" H 3725 6725 50  0001 C CNN
F 1 "GND" H 3730 6802 50  0000 C CNN
F 2 "" H 3725 6975 50  0001 C CNN
F 3 "" H 3725 6975 50  0001 C CNN
	1    3725 6975
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FD466BB
P 3725 6875
AR Path="/5EA9C461/5FD466BB" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FD466BB" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FD466BB" Ref="R?"  Part="1" 
AR Path="/5EAB86B0/5FD466BB" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FD466BB" Ref="R25"  Part="1" 
F 0 "R25" H 3775 6950 50  0000 L CNN
F 1 "10k" H 3775 6825 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3725 6875 50  0001 C CNN
F 3 "~" H 3725 6875 50  0001 C CNN
F 4 "RC0402FR-0710KL" H 3725 6875 50  0001 C CNN "MPN"
F 5 "C25744" H 3725 6875 50  0001 C CNN "LCSC"
	1    3725 6875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6675 3725 6675
Text Notes 1625 7475 0    50   ~ 0
Reference Fan Design:\nhttps://www.electroschematics.com/4-wire-pc-fan/
Wire Wire Line
	3725 6775 3725 6675
Connection ~ 3725 6675
Wire Wire Line
	3725 6675 3575 6675
Text Notes 2425 5575 0    59   ~ 0
Fan Controller
Wire Notes Line
	4300 5475 4300 7600
Wire Notes Line
	4300 7600 1050 7600
Wire Notes Line
	1050 7600 1050 5475
Wire Notes Line
	1050 5475 4300 5475
Text Notes 4775 1450 0    59   ~ 0
MCU - ATtiny 1614
Wire Notes Line
	3550 1225 3550 3650
Wire Notes Line
	3550 3650 6950 3650
Wire Notes Line
	6950 3650 6950 1225
Wire Notes Line
	6950 1225 3550 1225
$Comp
L power:+3.3V #PWR?
U 1 1 5FFAEEA7
P 9000 1425
AR Path="/5EA9C67D/5FFAEEA7" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FFAEEA7" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FFAEEA7" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 9000 1275 50  0001 C CNN
F 1 "+3.3V" H 9000 1575 50  0000 C CNN
F 2 "" H 9000 1425 50  0001 C CNN
F 3 "" H 9000 1425 50  0001 C CNN
	1    9000 1425
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0203
U 1 1 5FFAF87E
P 8275 1425
F 0 "#PWR0203" H 8275 1275 50  0001 C CNN
F 1 "+1V8" H 8290 1598 50  0000 C CNN
F 2 "" H 8275 1425 50  0001 C CNN
F 3 "" H 8275 1425 50  0001 C CNN
	1    8275 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1550 9000 1425
Wire Wire Line
	8275 1525 8275 1425
Wire Wire Line
	8275 1550 8275 1525
Connection ~ 8275 1525
Wire Wire Line
	8275 1750 8275 1825
Wire Wire Line
	8275 1825 8475 1825
Wire Wire Line
	8275 1525 8675 1525
Wire Wire Line
	9000 1825 9000 1750
Wire Wire Line
	8875 1825 9000 1825
Text Notes 11200 2475 0    50   ~ 0
Reference Design for level shifter\nhttp://cdn.sparkfun.com/datasheets/BreakoutBoards/Logic_Level_Bidirectional.pdf
Wire Notes Line
	6900 2125 6900 2900
Wire Notes Line
	6175 2900 6900 2900
Wire Notes Line
	6175 2125 6900 2125
Text GLabel 9000 1825 2    50   Input ~ 0
TPU_RST_L_33
$Comp
L power:+3.3V #PWR?
U 1 1 5FFBB81A
P 9025 2375
AR Path="/5EA9C67D/5FFBB81A" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FFBB81A" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FFBB81A" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 9025 2225 50  0001 C CNN
F 1 "+3.3V" H 9025 2525 50  0000 C CNN
F 2 "" H 9025 2375 50  0001 C CNN
F 3 "" H 9025 2375 50  0001 C CNN
	1    9025 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0205
U 1 1 5FFBB820
P 8300 2375
F 0 "#PWR0205" H 8300 2225 50  0001 C CNN
F 1 "+1V8" H 8315 2548 50  0000 C CNN
F 2 "" H 8300 2375 50  0001 C CNN
F 3 "" H 8300 2375 50  0001 C CNN
	1    8300 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9025 2500 9025 2375
Wire Wire Line
	8300 2475 8300 2375
Wire Wire Line
	8300 2500 8300 2475
Connection ~ 8300 2475
Wire Wire Line
	8300 2700 8300 2775
Wire Wire Line
	8300 2775 8500 2775
Wire Wire Line
	8300 2475 8700 2475
Wire Wire Line
	9025 2775 9025 2700
Wire Wire Line
	8900 2775 9025 2775
$Comp
L power:+3.3V #PWR?
U 1 1 5FFC05C4
P 9025 3375
AR Path="/5EA9C67D/5FFC05C4" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FFC05C4" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FFC05C4" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 9025 3225 50  0001 C CNN
F 1 "+3.3V" H 9025 3525 50  0000 C CNN
F 2 "" H 9025 3375 50  0001 C CNN
F 3 "" H 9025 3375 50  0001 C CNN
	1    9025 3375
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0207
U 1 1 5FFC05CA
P 8300 3375
F 0 "#PWR0207" H 8300 3225 50  0001 C CNN
F 1 "+1V8" H 8315 3548 50  0000 C CNN
F 2 "" H 8300 3375 50  0001 C CNN
F 3 "" H 8300 3375 50  0001 C CNN
	1    8300 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9025 3500 9025 3375
Wire Wire Line
	8300 3475 8300 3375
Wire Wire Line
	8300 3500 8300 3475
Connection ~ 8300 3475
Wire Wire Line
	8300 3700 8300 3775
Wire Wire Line
	8300 3775 8500 3775
Wire Wire Line
	8300 3475 8700 3475
Wire Wire Line
	9025 3775 9025 3700
Wire Wire Line
	8900 3775 9025 3775
$Comp
L power:+3.3V #PWR?
U 1 1 5FFC2AF0
P 9025 4325
AR Path="/5EA9C67D/5FFC2AF0" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/5FFC2AF0" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/5FFC2AF0" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 9025 4175 50  0001 C CNN
F 1 "+3.3V" H 9025 4475 50  0000 C CNN
F 2 "" H 9025 4325 50  0001 C CNN
F 3 "" H 9025 4325 50  0001 C CNN
	1    9025 4325
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0209
U 1 1 5FFC2AF6
P 8300 4325
F 0 "#PWR0209" H 8300 4175 50  0001 C CNN
F 1 "+1V8" H 8315 4498 50  0000 C CNN
F 2 "" H 8300 4325 50  0001 C CNN
F 3 "" H 8300 4325 50  0001 C CNN
	1    8300 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	9025 4450 9025 4325
Wire Wire Line
	8300 4425 8300 4325
Wire Wire Line
	8300 4450 8300 4425
Connection ~ 8300 4425
Wire Wire Line
	8300 4650 8300 4725
Wire Wire Line
	8300 4725 8500 4725
Wire Wire Line
	8300 4425 8700 4425
Wire Wire Line
	9025 4725 9025 4650
Wire Wire Line
	8900 4725 9025 4725
Text GLabel 9025 2775 2    50   Output ~ 0
TPU_PGOOD_33
Text GLabel 9025 3775 2    50   Input ~ 0
TPU_PMIC_EN_33
Text GLabel 9025 4725 2    50   Input ~ 0
TPU_INTR_33
Text GLabel 8300 4725 0    50   Input ~ 0
TPU_INTR_18
Text GLabel 8300 3775 0    50   Input ~ 0
TPU_PMIC_EN_18
Text GLabel 8300 2775 0    50   Output ~ 0
TPU_PGOOD_18
Text GLabel 8275 1825 0    50   Input ~ 0
TPU_RST_L_18
Text GLabel 5750 2775 2    51   Input ~ 0
GPIO_PA7
Text GLabel 5575 4100 0    51   Input ~ 0
GPIO_PA7
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 604E9FFC
P 5775 4100
F 0 "J10" H 5855 4092 50  0000 L CNN
F 1 "Conn_01x04" H 5855 4001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5775 4100 50  0001 C CNN
F 3 "~" H 5775 4100 50  0001 C CNN
F 4 "DNP" H 5775 4100 50  0001 C CNN "MPN"
	1    5775 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604EAE38
P 5575 4300
AR Path="/5EA9C461/604EAE38" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/604EAE38" Ref="#PWR0199"  Part="1" 
F 0 "#PWR0199" H 5575 4050 50  0001 C CNN
F 1 "GND" H 5580 4127 50  0000 C CNN
F 2 "" H 5575 4300 50  0001 C CNN
F 3 "" H 5575 4300 50  0001 C CNN
	1    5575 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 604EB042
P 5575 4000
AR Path="/5EA9C67D/604EB042" Ref="#PWR?"  Part="1" 
AR Path="/5EA9C461/604EB042" Ref="#PWR?"  Part="1" 
AR Path="/5FD1D934/604EB042" Ref="#PWR0200"  Part="1" 
F 0 "#PWR0200" H 5575 3850 50  0001 C CNN
F 1 "+3.3V" H 5575 4150 50  0000 C CNN
F 2 "" H 5575 4000 50  0001 C CNN
F 3 "" H 5575 4000 50  0001 C CNN
	1    5575 4000
	1    0    0    -1  
$EndComp
Text GLabel 5575 4200 0    51   Input ~ 0
GPIO0
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FFAA859
P 8675 1725
AR Path="/5EAAC9A5/5FFAA859" Ref="Q?"  Part="1" 
AR Path="/5FD1D934/5FFAA859" Ref="Q2"  Part="1" 
F 0 "Q2" V 8924 1725 50  0000 C CNN
F 1 "BSS138-DNP" V 9015 1725 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8875 1650 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8675 1725 50  0001 L CNN
F 4 "C112239-DNP" H 8675 1725 50  0001 C CNN "LCSC"
F 5 "BSS138-DNP" H 8675 1725 50  0001 C CNN "MPN"
F 6 "https://lcsc.com/product-detail/MOSFET_Shikues-BSS138_C112239.html" H 8675 1725 50  0001 C CNN "Link"
	1    8675 1725
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FFBB804
P 8700 2675
AR Path="/5EAAC9A5/5FFBB804" Ref="Q?"  Part="1" 
AR Path="/5FD1D934/5FFBB804" Ref="Q4"  Part="1" 
F 0 "Q4" V 8949 2675 50  0000 C CNN
F 1 "BSS138-DNP" V 9040 2675 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8900 2600 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8700 2675 50  0001 L CNN
F 4 "C112239-DNP" H 8700 2675 50  0001 C CNN "LCSC"
F 5 "BSS138-DNP" H 8700 2675 50  0001 C CNN "MPN"
F 6 "https://lcsc.com/product-detail/MOSFET_Shikues-BSS138_C112239.html" H 8700 2675 50  0001 C CNN "Link"
	1    8700 2675
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FFC05AE
P 8700 3675
AR Path="/5EAAC9A5/5FFC05AE" Ref="Q?"  Part="1" 
AR Path="/5FD1D934/5FFC05AE" Ref="Q5"  Part="1" 
F 0 "Q5" V 8949 3675 50  0000 C CNN
F 1 "BSS138-DNP" V 9040 3675 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8900 3600 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8700 3675 50  0001 L CNN
F 4 "C112239-DNP" H 8700 3675 50  0001 C CNN "LCSC"
F 5 "BSS138-DNP" H 8700 3675 50  0001 C CNN "MPN"
F 6 "https://lcsc.com/product-detail/MOSFET_Shikues-BSS138_C112239.html" H 8700 3675 50  0001 C CNN "Link"
	1    8700 3675
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q?
U 1 1 5FFC2ADA
P 8700 4625
AR Path="/5EAAC9A5/5FFC2ADA" Ref="Q?"  Part="1" 
AR Path="/5FD1D934/5FFC2ADA" Ref="Q6"  Part="1" 
F 0 "Q6" V 8949 4625 50  0000 C CNN
F 1 "BSS138-DNP" V 9040 4625 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8900 4550 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8700 4625 50  0001 L CNN
F 4 "C112239-DNP" H 8700 4625 50  0001 C CNN "LCSC"
F 5 "BSS138-DNP" H 8700 4625 50  0001 C CNN "MPN"
F 6 "https://lcsc.com/product-detail/MOSFET_Shikues-BSS138_C112239.html" H 8700 4625 50  0001 C CNN "Link"
	1    8700 4625
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFC05B6
P 8300 3600
AR Path="/5EA9C461/5FFC05B6" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFC05B6" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFC05B6" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFC05B6" Ref="R54"  Part="1" 
F 0 "R54" H 8350 3675 50  0000 L CNN
F 1 "10k-DNP" H 7900 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8300 3600 50  0001 C CNN
F 3 "~" H 8300 3600 50  0001 C CNN
F 4 "RC0402FR-0710KL" H 8300 3600 50  0001 C CNN "MPN"
F 5 "C25744" H 8300 3600 50  0001 C CNN "LCSC"
	1    8300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFC2AE2
P 8300 4550
AR Path="/5EA9C461/5FFC2AE2" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFC2AE2" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFC2AE2" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFC2AE2" Ref="R55"  Part="1" 
F 0 "R55" H 8350 4625 50  0000 L CNN
F 1 "10k-DNP" H 7925 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8300 4550 50  0001 C CNN
F 3 "~" H 8300 4550 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 8300 4550 50  0001 C CNN "MPN"
F 5 "C25744-DNP" H 8300 4550 50  0001 C CNN "LCSC"
	1    8300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFBB80C
P 8300 2600
AR Path="/5EA9C461/5FFBB80C" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFBB80C" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFBB80C" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFBB80C" Ref="R37"  Part="1" 
F 0 "R37" H 8350 2675 50  0000 L CNN
F 1 "10k-DNP" H 7900 2575 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8300 2600 50  0001 C CNN
F 3 "~" H 8300 2600 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 8300 2600 50  0001 C CNN "MPN"
F 5 "C25744-DNP" H 8300 2600 50  0001 C CNN "LCSC"
	1    8300 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFAEA34
P 8275 1650
AR Path="/5EA9C461/5FFAEA34" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFAEA34" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFAEA34" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFAEA34" Ref="R29"  Part="1" 
F 0 "R29" H 8325 1725 50  0000 L CNN
F 1 "10k-DNP" H 7875 1650 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8275 1650 50  0001 C CNN
F 3 "~" H 8275 1650 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 8275 1650 50  0001 C CNN "MPN"
F 5 "C25744-DNP" H 8275 1650 50  0001 C CNN "LCSC"
	1    8275 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFAECC2
P 9000 1650
AR Path="/5EA9C461/5FFAECC2" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFAECC2" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFAECC2" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFAECC2" Ref="R56"  Part="1" 
F 0 "R56" H 9050 1725 50  0000 L CNN
F 1 "10k-DNP" H 9050 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9000 1650 50  0001 C CNN
F 3 "~" H 9000 1650 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 9000 1650 50  0001 C CNN "MPN"
F 5 "C25744-DNP" H 9000 1650 50  0001 C CNN "LCSC"
	1    9000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFBB814
P 9025 2600
AR Path="/5EA9C461/5FFBB814" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFBB814" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFBB814" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFBB814" Ref="R58"  Part="1" 
F 0 "R58" H 9075 2675 50  0000 L CNN
F 1 "10k-DNP" H 9075 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9025 2600 50  0001 C CNN
F 3 "~" H 9025 2600 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 9025 2600 50  0001 C CNN "MPN"
F 5 "C25744-DNP" H 9025 2600 50  0001 C CNN "LCSC"
	1    9025 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFC05BE
P 9025 3600
AR Path="/5EA9C461/5FFC05BE" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFC05BE" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFC05BE" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFC05BE" Ref="R59"  Part="1" 
F 0 "R59" H 9075 3675 50  0000 L CNN
F 1 "10k-DNP" H 9075 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9025 3600 50  0001 C CNN
F 3 "~" H 9025 3600 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 9025 3600 50  0001 C CNN "MPN"
F 5 "C25744-DNP" H 9025 3600 50  0001 C CNN "LCSC"
	1    9025 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FFC2AEA
P 9025 4550
AR Path="/5EA9C461/5FFC2AEA" Ref="R?"  Part="1" 
AR Path="/5EA9C67D/5FFC2AEA" Ref="R?"  Part="1" 
AR Path="/5EAAC9A5/5FFC2AEA" Ref="R?"  Part="1" 
AR Path="/5FD1D934/5FFC2AEA" Ref="R60"  Part="1" 
F 0 "R60" H 9075 4625 50  0000 L CNN
F 1 "10k-DNP" H 9075 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9025 4550 50  0001 C CNN
F 3 "~" H 9025 4550 50  0001 C CNN
F 4 "RC0402FR-0710KL-DNP" H 9025 4550 50  0001 C CNN "MPN"
F 5 "C25744" H 9025 4550 50  0001 C CNN "LCSC"
	1    9025 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC