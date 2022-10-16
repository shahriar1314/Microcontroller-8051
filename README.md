# Microcontroller-8051
Different codes for microcontroller 8051 using assembly language


## 16bit_Subtractor
<b>Problem Statement:</b> Design a 16bit subtractor and make necessary code to show the negative result
<br><br>
We will store the value in the following manner:
<p align="center">
  <img src="https://user-images.githubusercontent.com/95894329/195997462-cd3cc6cb-1487-4fe3-a5e1-0c6b1ebe89be.png" width="380" height="120">
</p>
If the result is negative, the carry flag will be set. In this scenerio we need to take the 2's complement of the answer to get the actual difference. 

## 33% Duty Cycle
<b>Problem Statement:</b> Design a square wave generator with 33% duty cycle on any pin of port 1 of AT89C51. The time period should be 15ms. The frequency of the crystal oscillator is 22MHz. 
<br><br>Given, 
Frequency of the crystal oscillator of AT89C51, F=22MHz
<br>
Thus, 
Frequency for 1 Machine Cycle = 22/12 MHz = 1.833MHz
<br>Time period for 1 Machine Cycle = 0.545e-6
<br><br>
We need to generate 33% duty cycle of a time period of 15ms. So, we can design a delay for 5ms and call 3 times to get 15ms time period. 
<p align="center"> 2*(0.545e-6)*x =5e-3
x = 4587 (appx)
x=18*255 (appx)
</p>

## Count00to99
<b>Problem Statement:</b> Write a code to continuously count from 00 to 99. 
<br><br>
We stored the initial values ar saved in R6, R7 (in line 6, 7) for ones and tens place respectively. 

## Display your ID
<b>Problem Statement:</b> Interface LCD with 8051 microcontroller and display your student ID

## Palindrom_checker
<b>Problem Statement:</b> Design a 7 byte palindrome checker > if palindrom send 'Y' to port '1' else send 'N' to port 1    
<br>
We will check the First and Last byte at the beginning. Then the second byte and the second last byte... this way we can check whether it's a palindrome or not


## Temperature_checker
<b>Problem Statement:</b> Design a security system to prevent overheating of a vehicle using assembly language. Continuously monitor the temperature of the vehicle (assume the binary data is available in port 1). If the temperature exceeds 210 degree Fahrenheit, simultaneously turn on a buzzer and a red LED. 
