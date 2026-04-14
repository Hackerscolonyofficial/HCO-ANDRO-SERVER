#!/bin/bash
# ==========================================
# TOOL: HCO-ANDRO-SERVER V1.0
# AUTHOR: HCF & HCO COMMUNITY
# ==========================================

echo -e "\e[1;36m"
echo "  _    _  _____  ____              _   _ _____  _____   ____  "
echo " | |  | |/ ____|/ __ \      /\    | \ | |  __ \|  __ \ / __ \ "
echo " | |__| | |    | |  | |    /  \   |  \| | |  | | |__) | |  | |"
echo " |  __  | |    | |  | |   / /\ \  | . \` | |  | |  _  /| |  | |"
echo " | |  | | |____| |__| |  / ____ \ | |\  | |__| | | \ \| |__| |"
echo " |_|  |_|\_____|\____/  /_/    \_\_| \_|_____/|_|  \_\\____/ "
echo "              SERVER CONTROL PANEL Azhar
echo -e "\e[0m"

echo "⏳ Initializing HCO-ANDRO-SERVER Setup..."
pkg update && pkg upgrade -y
pkg install nodejs git python openjdk-17 -y
npm install pm2 -g

echo "📦 Fetching Core Engine..."
# Background mein engine download hoga par folder ka naam HCO-ANDRO-SERVER rahega
git clone https://github.com/D3VL/L3MON.git .core_engine
mv .core_engine/* .
rm -rf .core_engine

echo "⚙️ Configuring Private Server..."
cd server
npm install

echo -e "\e[1;32m✅ HCO-ANDRO-SERVER IS READY! \e[0m"
echo -e "\e[1;33m🚀 Start Dashboard: bash start.sh \e[0m"
