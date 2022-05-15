#!/bin/bash
figlet NSCAN
echo "☢ Automating The Network Scanning ☢"
echo "      ☢ inspired from nmap ☢       "
echo"####################################################################################################################"
sleep 1
echo -n "[+] Enter the target IP >>>"
read IP
sleep 1

# creating a menu with the following options
echo "[+] SELECT THE SCAN-TYPE  "
echo " 1. HOST SCAN"
echo " 2. TCP SYN scan"
echo " 3. Connect Scan"
echo " 4. ACK Scan "
echo " 5. Window  SCAN"
echo " 6. Maimon Scan"
echo " 7. UDP Scan"
echo " 8. TCP NULL Scan "
echo " 9. FIN Scan"
echo " 10. Xmas Scan"
echo " 11. COOKIE-ECHO  Scan"
echo " 12. IP protocol Scan"
echo " 13. SCRIPT INIT Scan"
echo " 14. Netbios Scan"
echo " 15. Display Netbios name"
echo " 16. Ping Scan "
echo " 17. Idle Scan "

sleep 1 

echo -n " [+] ENTER YOUR SELECTION >>> "

# Running a forever loop using while statement
# This loop will run untill select the exit option.
# User will be asked to select option again and again

read choice

case $choice in
  
  1) clear ; echo "Performing host scan for $IP "
      nmap   $IP;;
  
  2)  clear ; echo "Performing TCP SYN scan for $IP "
      nmap  -sS -t4 $IP;;
      
  3)  clear ; echo "Performing Connect scan for $IP "
      nmap   -sT -T4 $IP;;   
  4)  clear ; echo "Performing ACK scan for $IP "
      nmap   -sA  -T4 $IP;;
  5)  clear ; echo "Performing Window  scan for $IP "
      nmap   -sW -T4 $IP;;   
  6)  clear ; echo "Performing Maimon  scan for $IP "
      nmap   -sM -T4 $IP;; 
  7)  clear ; echo "Performing UDP  scan for $IP "
      nmap   -sU -T4 $IP;;
  8)  clear ; echo "Performing TCP NULL  scan for $IP "
      nmap   -sN -T4 $IP;;
  9)  clear ;echo "Performing FIN  scan for $IP "
      nmap   -sF -T4 $IP;;
  10)  clear ; echo "Performing Xmas  scan for $IP "
      nmap   -sX -T4 $IP;;
  11)  clear ; echo "Performing COOKIE-ECHO  scan for $IP "
      nmap   -sZ -T4 $IP;;   
  12)  clear ; echo "Performing IP-PROTOCOL  scan for $IP "
      nmap   -sO -T4 $IP;;
  13)  clear ; echo "Performing SCRIPT INIT  scan for $IP "
      nmap   -sY -T4 $IP;;  
       
  14) clear 
      echo -n "Enter the subnet"
      read subnet
      echo "Performing Netbios scan on $subnet "
      nmap -sV -v -p 139,445 $subnet;; 
      
  15)  clear ;echo "Finding Netbios name for $IP "
      nmap -sU — script nbstat.nse -p 137  $IP;;
      
  16)  clear ; echo "Performing Ping  scan for $IP "
      nmap -sP  $IP;;
      
  17)  clear 
       echo -n "Enter the Zombie Hostname"
       read zombie
       echo "Performing Idle  scan for $IP "
       nmap  -Pn -p- -sI $zombie $IP;;
 
  *) echo "invalid option";;
     
esac
echo "quitting...."
sleep 2
