#!/bin/bash

## BOOTSTRAP ##
cyan='\033[0;36m'
green='\033[0;32m'
nc='\033[0m' # No Color
###############

mkdir -p /tmp/atom-latex-install

echo -e "${cyan}>> Creating tmp folder /tmp/atom-latex-install${nc}"
cd /tmp/atom-latex-install
rm -rf ./*

echo -e "${cyan}>> Downloading atom v1.13.0 ...${nc}"
cd ~/
# Install atom
wget "https://github.com/atom/atom/releases/download/v1.13.0/atom-amd64.deb" &> /dev/null

echo -e "${cyan}>> Installing atom v1.13.0 ...${nc}"
sudo dpkg --install atom-amd64.deb 
rm -rf /tmp/atom-latex-install

cd ~/
echo -e "${cyan}>> Installing LaTex addons for atom...${nc}"
apm install latex
apm install language-tex

# Install texlive-full and all LaTex dependencies
echo -e "${cyan}>> Downloading and installing texlive...${nc}"
echo -e "${cyan}>> This will take a while... Why not grab a snack? ${green}:)${nc}"
sudo apt-get install texlive-full 
echo -e "${cyan}>> All done! Have a great day! ${green}:)${nc}"
