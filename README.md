# Microcontroller-8051
Different codes for microcontroller 8051 using assembly language

## Count00to99
<b>Problem Statement:</b> Write a code to continuously count from 00 to 99. 
<br> <p></p>
We stored the initial values ar saved in R6, R7 (in line 6, 7) for ones and tens place respectively. 

## 16bit_Subtractor
<b>Problem Statement:</b> Design a 16bit subtractor and make necessary code to show the negative result
<br> <p></p>
We will store the value in the following manner:
<p align="center">
  <img src="https://user-images.githubusercontent.com/95894329/195997462-cd3cc6cb-1487-4fe3-a5e1-0c6b1ebe89be.png" width="380" height="120">
</p>
  
## Palindrom_checker
<b>Problem Statement:</b> Design a 7 byte palindrome checker > if palindrom send 'Y' to port '1' else send 'N' to port 1    
<br> <p></p>
We will check the First and Last byte at the beginning. Then the second byte and the second last byte... this way we can check whether it's a palindrome or not


## Temperature_checker
<b>Problem Statement:</b> Design a security system to prevent overheating of a vehicle using assembly language. Continuously monitor the temperature of the vehicle (assume the binary data is available in port 1). If the temperature exceeds 210 degree Fahrenheit, simultaneously turn on a buzzer and a red LED. 
