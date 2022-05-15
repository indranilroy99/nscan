#!/bin/bash
figlet NSCAN
echo  -e "\e[1;36m ☢ Automating The Network Scanning ☢  \e[0m" 
echo  -e "\e[1;36m      ☢ inspired from nmap ☢        \e[0m" 

sleep 1

echo  -en "\e[1;93m  [+] Enter the target IP  or Domain name >>>     \e[0m" 
read IP
sleep 1

# creating a menu with the following options
echo  -e "\e[1;93m  [+] SELECT THE SCAN-TYPE   \e[0m" 
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

echo  -en  "\e[1;93m   [+] ENTER YOUR SELECTION >>>    \e[0m" 

# Running a forever loop using while statement
# This loop will run untill select the exit option.
# User will be asked to select option again and again

read choice

case $choice in
  
  1) clear ;echo  -e "\e[1;37m [+] Performing host scan for $IP  \e[0m" 
      nmap   $IP;;
  
  2) clear ;echo  -e "\e[1;37m [+] Performing TCP SYN scan for $IP  \e[0m" 
      nmap  -sS -T4 $IP;;
      
  3) clear ;echo  -e "\e[1;37m [+] Performing Connect scan for $IP  \e[0m" 
      nmap   -sT -T4 $IP;;   

  4) clear ;echo  -e "\e[1;37m [+] Performing ACK scan for $IP  \e[0m"   
      nmap   -sA  -T4 $IP;;

  5)  clear ;echo  -e "\e[1;37m [+] Performing Window scan for $IP  \e[0m"   
      nmap   -sW -T4 $IP;; 
  
  6)  clear ;echo  -e "\e[1;37m [+] Performing Maimon scan for $IP  \e[0m"     
      nmap   -sM -T4 $IP;; 
  7) clear ;echo  -e "\e[1;37m [+] Performing UDP scan for $IP  \e[0m"   
      nmap   -sU -T4 $IP;;
  
 8) clear ;echo  -e "\e[1;37m [+] Performing TCP NULL scan for $IP  \e[0m"   
      nmap   -sN -T4 $IP;;

 9) clear ;echo  -e "\e[1;37m [+] Performing FIN  scan for $IP  \e[0m"      
    nmap   -sF -T4 $IP;;
  
10) clear ;echo  -e "\e[1;37m [+] Performing Xmas scan for $IP  \e[0m"   
    nmap   -sX -T4 $IP;;
 
11) clear ;echo  -e "\e[1;37m [+] Performing COOKIE-ECHO  scan for $IP  \e[0m"    
    nmap   -sZ -T4 $IP;;   

12)clear ;echo  -e "\e[1;37m [+] Performing IP-PROTOCOL scan for $IP  \e[0m"   
    nmap   -sO -T4 $IP;;

13) clear ;echo  -e "\e[1;37m [+] Performing SCRIPT INIT scan for $IP  \e[0m"     
    nmap   -sY -T4 $IP;;  
       
14) clear 
   echo  -en  "\e[1;93m [+] Enter the subnet>>>  \e[0m" 
    read subnet
      echo  -e "\e[1;37m [+] Performing Netbios scan  for $subnet  \e[0m" 
      nmap -sV -v -p 139,445 $subnet;; 
      
15) clear ;echo  -e "\e[1;37m [+] Finding Netbios name for $IP  \e[0m" 
      nmap -sU — script nbstat.nse -p 137  $IP;;
      

16) clear ;echo  -e "\e[1;37m [+] Performig Ping  scan for $IP  \e[0m" 
      nmap -sP  $IP;;
      
17)  clear 
      echo  -en  "\e[1;93m [+] Enter the Zombie Hostname>>>  \e[0m" 
       read zombie
       echo  -e "\e[1;37m [+] Performing Idle Scan for $IP  \e[0m" 
       nmap  -Pn -p- -sI $zombie $IP;;
 
  *) echo  -e "\e[1;41m   invalid option !    \e[0m" ;;
     
esac
echo  -en  "\e[1;36m   QUITTING....   \e[0m" 
sleep 2
