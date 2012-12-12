#!/bin/bash

while true
do
echo -e "\n+++++++\n MENU \n+++++++\n\n1.change password\n2.See the disk space\n3.Login to other box using ssh\n4.Show all Service running\n5.Show all ports opened\n6.Show all java apps running\n7.Facility to kill a  app\n8.Exit\n"

echo -e "\n Enter your Choice [1-8]:\t"
read Choice


case "$Choice" in

1)
echo -e "\n You have choose to change password\n"
echo -e "\n Enter username to change password\n"
read -i username
passwd $username
echo -e "\n Enter any key to continue"
read key
;;
2)
echo -e "\n you have choose display disk space\n"
df -lh
echo -e "\n Enter any key to continue"
read key
;;
3)
echo -e "\n you have choose to ssh into a different box\n"
echo -e "\n hostname or IP Address of the box\n"
read -i HostID
if [ ping -c 3 $HostID 1> /dev/null && $? -ne 0 ]; then
echo -e "\n Host not reachable"
else
echo -e "\n Enter the Login ID\n"
read -i LoginID
`ssh  $LoginID@$HostID`
fi
echo -e "\n Enter any key to continue"
read key
;;
4)
echo -e "\n you have choose to list all running services \n"
ls /etc/init.d/ > services.txt
for "i" in `cat services.txt`
do
/etc/init.d/$i status |grep run  >> running_services.txt
done
cat running_services.txt
echo -e "\n Enter any key to continue"
read key
;;
5)
echo -e "\n you have choose to list all opened ports \n"
netstat -nalp

echo -e "\n Enter any key to continue"
read key
;;

6)
echo -e "\n you have choose to list all running java app's \n"
ps aux|grep java
echo -e "\n Enter any key to continue"
read key
;;

7)
echo -e "\n you have choose to kill a process\n";
echo -e "\n Enter process ID\n"
read -i processID
kill -9 $processID
echo -e "\n Enter any key to continue"
read key
;;
8)
exit

;;
*)
echo -e "\n Invalid option\n"
echo -e "\n Enter any key to continue"
read key
esac
done
