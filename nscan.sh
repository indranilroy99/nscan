#!/bin/bash
figlet NSCAN
echo  -e "\e[1;36m ☢ Automating The Network Scanning ☢  \e[0m" 
echo  -e "\e[1;36m      ☢ inspired from nmap ☢        \e[0m" 

sleep 1

echo  -en "\e[1;93m  [+] Enter the target IP  or Domain name >>>     \e[0m" 
read IP
sleep 1


echo  -e "\e[1;93m  [+] SELECT THE SCAN-TYPE   \e[0m" 
echo " 1. HOST SCAN"
echo " 2. TCP SYN port scan"
echo " 3. TCP Connect Scan"
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
echo " 17. Idle Scan / Zombie Scan"
echo " 18. Service Version Scan "
echo " 19. Aggressive Scan"
echo " 20. Open Ports Only Scan "
echo " 21. ARP Discovery Scan"
echo " 22. Default NSE scripts scan"
echo " 23. Fragment Scan"
echo " 24. Disable Port Scan"
echo " 25. Disable Ping Scan"
echo " 26. UDP Ping Scan "
echo " 27. ICMP echo Ping Scan"
echo " 28. ICMP Timestamp Ping Scan"
echo " 29. ICMP Address Mask Ping Scan"
echo " 30. TCP SYN Ping Scan"
echo " 31. TCP ACK Ping Scan "
echo " 32. IP-PROTOCOL Ping Scan "
echo " 33. ARP Ping Scan "
sleep 1 
echo  -en  "\e[1;93m   [+] ENTER YOUR SELECTION >>>    \e[0m" 

    
read choice

case $choice in
  
  1) clear ;echo  -e "\e[1;43m [+] Performing host scan for $IP  \e[0m" 
      nmap  -v $IP;;
  
  2) clear ;echo  -e "\e[1;43m [+] Performing TCP SYN scan for $IP  \e[0m" 
      nmap   -T4 -sS  -v $IP;;
      
  3) clear ;echo  -e "\e[1;43m [+] Performing TCP Connect scan for $IP  \e[0m" 
      nmap  -T4 -sT  -v $IP;;   

  4) clear ;echo  -e "\e[1;43m [+] Performing ACK scan for $IP  \e[0m"   
      nmap  -T4 -sA  -v $IP;;

  5)  clear ;echo  -e "\e[1;43m [+] Performing Window scan for $IP  \e[0m"   
      nmap   -T4 -sW  -v $IP;; 
  
  6)  clear ;echo  -e "\e[1;43m [+] Performing Maimon scan for $IP  \e[0m"     
      nmap   -T4 -sM -v  $IP;; 

  7) clear ;echo  -e "\e[1;43m [+] Performing UDP scan for $IP  \e[0m"   
      nmap  -T4 -sU -v $IP;;
  
 8) clear ;echo  -e "\e[1;43m [+] Performing TCP NULL scan for $IP  \e[0m"   
      nmap  -T4 -sN -v $IP;;

 9) clear ;echo  -e "\e[1;43m [+] Performing FIN  scan for $IP  \e[0m"      
    nmap  -T4 -sF -v $IP;;
  
10) clear ;echo  -e "\e[1;43m [+] Performing Xmas scan for $IP  \e[0m"   
    nmap  -T4  -sX  -v $IP;;
 
11) clear ;echo  -e "\e[1;43m [+] Performing COOKIE-ECHO  scan for $IP  \e[0m"    
    nmap  -T4 -sZ -v $IP;;   

12)clear ;echo  -e "\e[1;43m [+] Performing IP-PROTOCOL scan for $IP  \e[0m"   
    nmap  -T4 -sO -v $IP;;

13) clear ;echo  -e "\e[1;43m [+] Performing SCRIPT INIT scan for $IP  \e[0m"     
    nmap  -T4 -sY -v  $IP;;  
       
14) clear 
   echo  -en  "\e[1;93m [+] Enter the subnet>>>  \e[0m" 
    read subnet
      echo  -e "\e[1;43m [+] Performing Netbios scan  for $subnet  \e[0m" 
      nmap -sV -v -p 139,445 $subnet;; 
      
15) clear ;echo  -e "\e[1;43m [+] Finding Netbios name for $IP  \e[0m" 
      nmap -sU — script nbstat.nse -p 137  $IP;;
      

16) clear ;echo  -e "\e[1;43m [+] Performig Ping  scan for $IP  \e[0m" 
      nmap -sP  $IP;;
      
17)  clear 
      echo  -en  "\e[1;93m [+] Enter the Zombie Hostname>>>  \e[0m" 
       read zombie
       echo  -e "\e[1;43m [+] Performing Idle Scan for $IP  \e[0m" 
       nmap -v  -Pn -p- -sI  $zombie $IP;;

18) clear ;echo  -e "\e[1;43m [+]  Service Version Scan   for $IP  \e[0m"     
    nmap  -T4 -sV -v  $IP;;  

19) clear ;echo  -e "\e[1;43m [+] Aggressive Scan for $IP  \e[0m"     
    nmap  -T4 -A -v $IP;;  

20) clear ;echo  -e "\e[1;43m [+] Open Ports Only Scan for $IP  \e[0m"     
    nmap  -T4 --open  -v  $IP;;  

21) clear ;echo  -e "\e[1;43m [+] ARP Discovery  Scan for $IP  \e[0m"  
    nmap -T4 -PR -v $IP;; 


22) clear ;echo  -e "\e[1;43m [+] Default NSE Script Scan for $IP  \e[0m"  
    nmap -T4 -sC -v $IP;; 

23) clear ;echo  -e "\e[1;43m [+] Fragment Scan for $IP  \e[0m"  
    nmap -T4 -f -v $IP;; 

24) clear ;echo  -e "\e[1;43m [+] Disable Port Scan for $IP  \e[0m"  
    nmap -T4 -sn  -v $IP;; 

25) clear ;echo  -e "\e[1;43m [+] Disable Ping  Scan for $IP  \e[0m"  
    nmap -T4 -Pn  -v $IP;; 

26) clear ;echo  -e "\e[1;43m [+] Performing UDP Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PU  -v $IP;; 

27) clear ;echo  -e "\e[1;43m [+] Performing ICMP ECHO Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PE -v $IP;; 

28) clear ;echo  -e "\e[1;43m [+] Performing ICMP Timestamp Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PP -v $IP;;

29) clear ;echo  -e "\e[1;43m [+] Performing ICMP Address Mask Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PM -v $IP;;

30) clear ;echo  -e "\e[1;43m [+] Performing TCP SYN Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PS -v  $IP;;

31) clear ;echo  -e "\e[1;43m [+] Performing TCP ACK Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PA -v  $IP;;

32) clear ;echo  -e "\e[1;43m [+] Performing IP-PROTOCOL Ping  Scan for $IP  \e[0m"  
    nmap -T4 -sn -PO -v  $IP;; 

33) clear ;echo  -e "\e[1;43m [+] Performing ARP Ping  Scan for $IP  \e[0m"  
    nmap -T4 -PR -v $IP;; 



 *) echo  -e "\e[1;41m   invalid option !    \e[0m" ;;
     
esac
echo  -en  "\e[1;36m QUITTING....   \e[0m" 
sleep 2
