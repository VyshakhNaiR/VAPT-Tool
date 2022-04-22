# VAPT-Tool

## **FOOTHOLDER**

Script made for users who are beginner and intermediate in Vulnerabilty Exploitation and Pentesting.

Language : Bash Script {100%}

The script contains the required tools which is much comes handy when exploiting or gathering info about a machine.
The tool invokes the pre-installed tool and asks user for options for the tool they use as they preferred.

> Note::: THE PROGRAM SHOULD RUN IN AS <$_ROOT> as some tools needs root privileges to execute.

```
Tools used:
1. NetDiscover
2. Nmap
3. ssh
4. hydra
5. gobuster
6. dirbuster
7. ffuf
8. ftp
9. telnet
10. mysql
11. enum4linux
12. nikto
13. searchsploit
14. metasploit
15. smbclient
16. Whatweb
```
For the convinient use the script invokes the tools in a seperate terminal > x-term
for keeping it clean and easily visible. 

if stuck or want to know more about these tools, below are the documentations 

[NetDiscover](https://manpages.debian.org/unstable/netdiscover/netdiscover.8.en.html) <br/>
[Nmap](https://linux.die.net/man/1/nmap)<br/>
[ssh](https://www.openssh.com/manual.html)<br/>
[Hydra](https://www.hackingarticles.in/comprehensive-guide-on-hydra-a-brute-forcing-tool/)<br/>
[gobuster](https://github.com/OJ/gobuster)<br/>
[Dirbuster](https://www.kali.org/tools/dirbuster/)<br/>
[FFUF](https://github.com/ffuf/ffuf)<br/>
[ftp](https://linux.die.net/man/1/ftp)<br/>
[telnet](https://docs.oracle.com/cd/E86824_01/html/E54763/telnet-1.html)<br/>
[mysql](https://docs.cs.cf.ac.uk/notes/accessing-mysql-from-linux/)<br/>
[enum4linux](https://www.kali.org/tools/enum4linux/)<br/>
[Nikto](https://www.kali.org/tools/nikto/)<br/>
[searchsploit](https://www.exploit-db.com/searchsploit)<br/>
[Metasploit](https://www.offensive-security.com/metasploit-unleashed/msfconsole-commands/)<br/>
[smbclient](https://www.samba.org/samba/docs/current/man-html/smbclient.1.html)<br/>
[Whatweb](https://www.kali.org/tools/whatweb/)

For Installation of the tool a Setup.sh script is also added to the repo:
> Important - There maybe issues while installing  in other distros because the package or tool may not be available for that particular distro. 
> If it happens, go online for any fixes or other ways to install it.

Installation and Initializing Procedure: 

```
git clone https://github.com/VyshakhNaiR/VAPT-Tool.git

cd ~/VAPT-Tool

chmod +x Setup.sh

sudo ./Setup.sh

chmod + Footholder.sh

sudo ./Footholder.sh

```






