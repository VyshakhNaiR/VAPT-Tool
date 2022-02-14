#!/usr/bin/env bash


sudo -v 

echo "------------------------------"
echo "Initializing Installation  [×]"

echo "Installing netdiscover ..."
if test ! $(which netdiscover); then
  apt install netdiscover
fi
echo "Installing Nmap ..."
if test ! $(which nmap); then
  apt install nmap
fi
echo "Installing ssh ..."
if test ! $(which ssh); then
  apt install ssh
fi
echo "Installing hydra ..."
if test ! $(which hydra); then
  apt install hydra
fi
echo "Installing gobuster ..."
if test ! $(which gobuster); then
  apt install gobuster
fi
echo "Installing dirbuster ..."
if test ! $(which dirbuster); then
  apt install dirbuster
fi
echo "Installing ffuf ..."
if test ! $(which ffuf); then
  apt install ffuf
fi
echo "Installing ftp ..."
if test ! $(which ftp); then
  apt install ftp
fi
echo "Installing telnet ..."
if test ! $(which telnet); then
  apt install telnet
fi
echo "Installing mysql ..."
if test ! $(which mysql); then
  apt install mysql
fi
echo "Installing enum4linux ..."
if test ! $(which enum4linux); then
  apt install enum4linux
fi
echo "Installing nikto ..."
if test ! $(which nikto); then
  apt install nikto
fi
echo "Installing searchsploit ..."
if test ! $(which searchsploit); then
  apt install searchsploit
fi
echo "Installing metasploit ..."
if test ! $(which msfconsole); then
  apt install metasploit-framework
fi
echo "Installing smbclient ..."
if test ! $(which smbclient); then
  apt install smbcleint
fi
echo "Installing whatweb ..."
if test ! $(which whatweb); then
  apt install whatweb
fi
echo "Installing seclist wordlist ..."
if test ! $(which seclists); then
  apt install seclists
fi
echo "Installing figlet ..."
if test ! $(which figlet); then
  apt install figlet
fi
echo "Installing toilet ..."
if test ! $(which toilet); then
  apt install toilet
fi




echo "Installation complete [✔]"
echo ""
echo "Be sure to checkout the README for more details on this script"
echo ""
echo "------------------------------"
