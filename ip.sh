#!/bin/bash
# ==========================================
# TOOL  : TOR AUTO IP CHANGER
# OWNER : @XRS_ADMIN (Telegram)
# STATUS: PREMIUM & PRIVATE
# ==========================================
# WARNING: CREDIT CHURANE WALE KI MAA KI CHU*
# ==========================================

clear
echo -e "\e[1;32m"
echo "  __  ______  ____       _    ____  __  __ ___ _   _ "
echo "  \ \/ /  _ \/ ___|     / \  |  _ \|  \/  |_ _| \ | |"
echo "   \  /| |_) \___ \    / _ \ | | | | |\/| || ||  \| |"
echo "   /  \|  _ < ___) |  / ___ \| |_| | |  | || || |\  |"
echo "  /_/\_\_| \_\____/  /_/   \_\____/|_|  |_|___|_| \_|"
echo -e "\e[0m"
echo -e "\e[1;33m       OWNER: @bigbull8809 | JOIN TG FOR UPDATES \e[0m"
echo "--------------------------------------------------------"

# Tor check karein
if ! command -v tor &> /dev/null
then
    echo -e "\e[1;31m[!] Tor install nahi hai. Pehle 'pkg install tor' karein.\e[0m"
    exit
fi

# Tor ko background mein start karein
pkill -9 tor
tor > /dev/null &
sleep 5

echo -e "\e[1;36m[+] Tor started successfully!\e[0m"
echo -e "\e[1;35m[+] Starting IP Rotation... (Ctrl+C to stop)\e[0m"

while true
do
    pkill -HUP tor
    NEW_IP=$(torsocks curl -s https://checkip.amazonaws.com)
    echo -e "\e[1;32m[✓] IP Changed Successfully! New IP: \e[1;37m$NEW_IP\e[0m"
    # Delay: Yahan 10-20 second set kar sakte hain
    sleep 15
done
