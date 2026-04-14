#!/bin/bash

# Screen clear for professional look
clear

# 1. Elite ASCII ART (Green Color)
echo -e "\e[1;32m"
echo "  _    _  _____  ____              _   _ _____  _____   ____  "
echo " | |  | |/ ____|/ __ \      /\    | \ | |  __ \|  __ \ / __ \ "
echo " | |__| | |    | |  | |    /  \   |  \| | |  | | |__) | |  | |"
echo " |  __  | |    | |  | |   / /\ \  | . \` | |  | |  _  /| |  | |"
echo " | |  | | |____| |__| |  / ____ \ | |\  | |__| | | \ \| |__| |"
echo " |_|  |_|\_____|\____/  /_/    \_\_| \_|_____/|_|  \_\\____/ "
echo -e "\e[0m"

# 2. Branding & Welcome
echo -e "\e[1;33m       WELCOME TO HACKERS COLONY - ANDROID SERVER \e[0m"
echo -e "\e[1;36m              Created by: Azhar (HCO Team) \e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"

# 3. The Lock System
echo -e "\n\e[1;31m  [!] ALERT: THIS TOOL IS CURRENTLY LOCKED! \e[0m"
echo -e "\e[1;37m  To unlock and use this tool, you MUST subscribe to\e[0m"
echo -e "\e[1;37m  our YouTube channel first.\e[0m"
echo -e "\n\e[1;34m  🔗 YouTube Link: \e[4mhttps://youtube.com/@hackers_colony_tech\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"

echo -e "\n\e[1;33m  [?] Have you subscribed? (Press ENTER to verify & install)\e[0m"
read -p "" 

# Start Installation
echo -e "\n\e[1;32m  [*] Verification Successful! Starting Installation...\e[0m"
sleep 2

# 4. System Requirements
echo -e "\n\e[1;34m[*] Installing Core Dependencies...\e[0m"
apt update && apt upgrade -y
pkg install nodejs git python openjdk-17 wget -y > /dev/null 2>&1
npm install pm2 -g > /dev/null 2>&1

# 5. Engine Setup (Bypassing external branding)
echo -e "\e[1;34m[*] Building HCO-ANDRO Private Engine...\e[0m"
git clone https://github.com/D3VL/L3MON.git .core_tmp > /dev/null 2>&1
mv .core_tmp/* .
rm -rf .core_tmp

# Hard Branding Rename
grep -rl "L3MON" . | xargs sed -i 's/L3MON/HCO-ANDRO-SERVER/g' > /dev/null 2>&1

# 6. Final Server Configuration
echo -e "\e[1;34m[*] Finalizing Server Modules (Azhar Edition)...\e[0m"
cd server
npm install > /dev/null 2>&1

# Final Success Display
clear
echo -e "\e[1;32m"
echo "──────────────────────────────────────────────────────────"
echo "         ✅ HCO-ANDRO-SERVER BY AZHAR IS READY!          "
echo "──────────────────────────────────────────────────────────"
echo -e "\e[0m"
echo -e "\e[1;33m  🚀 To Start Dashboard: \e[1;37mpm2 start index.js\e[0m"
echo -e "\e[1;33m  🌐 Access URL        : \e[1;37mhttp://localhost:22533\e[0m"
echo -e "\e[1;33m  🔑 Default Login     : \e[1;37madmin / admin\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"
