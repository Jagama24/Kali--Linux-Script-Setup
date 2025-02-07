#!/bin/bash
echo "updating and upgrading system..."
sudo apt update && sudo apt full-upgrade -y

#Install zsh if not installed 
echo "Installing zsh..."
sudo apt install zsh -y

#Download and set up  .zshrc
echo "Configuring zsh...."
wget -O ~/zshrc https://raw.githubusercontent.com/bneg/CIS450/main/.zshrc
mv ~/zshrc ~/.zshrc

#Create requiered directories
echo"Creating directory structure..."
mkdir -p ~/CIS/Artifacts ~/CIS/Templates ~/CIS/Tools

#clone repositories 
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
