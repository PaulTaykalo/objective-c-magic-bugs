objective-c-magic-bugs
======================
#NSLog Magic  
##Intro:  
Original project had around 40K lines of code, and it was really painful to find the reason of this bug  .

##Description:  
You have very small project, with not so much amount lines of code, and it crashes "sometimes". 
Some strange things of this project:  
* It crashes only when it's being run on iOS Simulator  
* It crashes only when it's being run on iOS Simulator with 5.1 version  
* It won't crash if NSLog call will be commented out  
  
## Goals  
0. Code should not crash (Easiest one, just uncommend NSLog call).  
1. Find "problematic" method(s)  
2. Does uncommenting NSLog REALLY fix main problem?  
4. What is the reason of crash?  
8. Find why it isn't crashing on the Device  
16. Why NSLog is able to fix the problem?  
32. Reproduce this bug on other Base SDK's / iOS Simulator versions

##Outro:  
Goals from 0 to 1 are pretty easy to achive  
Starting from goal 4, you need some skills that may not be related to Objective-C itself.   

Are you experienced enough to achieve all goals, or at least up to goal#16 ? :)  
