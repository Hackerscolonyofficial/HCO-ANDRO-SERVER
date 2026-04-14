#!/bin/bash
# Starting the HCO-ANDRO-SERVER Dashboard
echo "🔥 HCO-ANDRO-SERVER is booting up..."
cd server
pm2 start index.js --name "HCO-SERVER"
echo "───────────────────────────────────────────"
echo "🌐 Dashboard URL: http://localhost:22533"
echo "🔑 Default User: admin"
echo "🔑 Default Pass: admin"
echo "───────────────────────────────────────────"
echo "Use 'pm2 stop HCO-SERVER' to shut down."
