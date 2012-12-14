#!/bin/bash
tput clear 

choice=0

while [choice! = 8 ]

do
tput clear
tput cup 6 26
echo "================================"
echo "     "
echo "    User Menu Options  "
echo "     "
echo "================================"
echo "     "

echo "1.       Change Password"
echo "2.       See the disk space"
echo "3.       Login to other box using ssh"
echo "4.       Show all Service running"
echo "5.       Show all ports opened"
echo "6.       Show all java apps running"
echo "7.       Facility to kill a  app"
echo "8.       Exit"
echo "   "
echo "   Enter your Menu Option (1 to 8):"/c

read choice

case $choice in

1) passwd 
   
 ;;

2) dk -k
 ;;

3) ssh -l user@hostname
;;

4) ps -A 

;;

5) netstat -a
 ;;

6) ps -ef |grep java
;;

7) kill - 9 3214 
;;

8) exit ;;
*) echo " Invalid choice" ;;

esac

clear
done







