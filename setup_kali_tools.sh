#!/bin/bash
echo "updating and upgrading system..."
sudo apt update && sudo apt full-upgrade -y

echo "Cloning necessary tools..."
cd ~/CIS/Tools
git clone https://github.com/danielmiessler/SecLists
git clone https://github.com/lgandx/Responder
git clone https://github.com/fortra/impacket
git clone https://github.com/BloodHoundAD/BloodHound
git clone https://github.com/SpecterOps/BloodHound
git clone https://github.com/dirkjanm/BloodHound.py
git clone https://github.com/its-a-feature/Mythic
git clone https://github.com/BishopFox/sliver
git clone https://github.com/GhostPack
git clone https://github.com/stephenbradshaw/vulnserver

echo "Verifying directory structure..."
tree -d -L 2 ~/CIS

echo "Displaying system information..."
hostnamectl

echo "Intializing Metasploit database..."
sudo msfdb init

echo "setup complete!"
