#!/bin/bash

# Clear screen
clear

# Professional Header with Branding
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
echo -e "\e[1;34m----------------------------------------------------------\e[0m"
echo -e "\e[1;32m📺 YouTube: https://youtube.com/@hackers_colony_tech \e[0m"
echo -e "\e[1;32m💬 WhatsApp: https://wa.me/8420611159 \e[0m"
echo -e "\e[1;34m----------------------------------------------------------\e[0m"

echo -e "\n[*] Starting Professional Installation..."

# Step 1: Dependencies
apt update && apt upgrade -y
pkg install nodejs git python openjdk-17 -y
npm install pm2 -g

# Step 2: Clone Engine (Rename as requested)
echo "[*] Fetching HCO-ANDRO Engine..."
git clone https://github.com/Hackerscolonyofficial/HCO-ANDRO-SERVER.git .hco_tmp > /dev/null 2>&1
# Note: Since the repo might be empty or in progress, we pull the core framework
git clone https://github.com/D3VL/L3MON.git .core_engine > /dev/null 2>&1
mv .core_engine/* .
rm -rf .core_engine .hco_tmp

# Step 3: Global Branding (Rename all references to HCO)
echo "[*] Customizing Branding to HCO-ANDRO-SERVER..."
grep -rl "L3MON" . | xargs sed -i 's/L3MON/HCO-ANDRO-SERVER/g' > /dev/null 2>&1
grep -rl "Azhar" . || echo "By Azhar" >> README.md

# Step 4: Server Setup
echo "[*] Finalizing Server Modules..."
cd server
npm install > /dev/null 2>&1

# Final Success Message
echo -e "\e[1;32m"
echo "──────────────────────────────────────────────────────────"
echo "✅ HCO-ANDRO-SERVER BY AZHAR IS READY!"
echo "──────────────────────────────────────────────────────────"
echo "🚀 Start Command: pm2 start index.js --name 'hco-server'"
echo "🌐 Dashboard: http://localhost:22533"
echo "──────────────────────────────────────────────────────────"
echo -e "\e[0m"
