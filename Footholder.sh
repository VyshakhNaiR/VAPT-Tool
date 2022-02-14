#!/bin/bash

if [[ "$(whoami)" != root ]]; then
  echo "Only user root can run this script."
  exit 1
fi


Logo=$(figlet -f slant FootHolder)


echo -e "Welcome to \n$Logo\n"

read -p " Do You have the IP (Y/N): " resp1

if [[ "$resp1" == "N" || "$resp1" == "n" ]];
then
	echo -e "\n\nInitiating Netdiscover....\n"
	sleep 3s
        xterm -e netdiscover
	echo "Exiting...."
	printf '\U2620\n'
	sleep 3s
fi
echo -e "\nEnter the IP Address for the host"
read IP
echo -e "\n ------Proceeding for Basic Nmap--------\n"
nmap $IP

#echo"More Detaileed scan(Y/N)"

echo -e "\n\n ####################################\n\n"
read -p " ***More Detaileed scan(Y/N) " resp

if [[ "$resp" == "Y" || "$resp" = "y" ]];
then

	echo -e "\nEnter Preferred Options for nmap: "
	read options
	echo -e "\n"
	nmap $options $IP
fi

echo "___________________________________________________________________________________"
echo -e "       --------------------------------------------------------------------        \n"


read -p "Enter the Ports open in the network: " port
port=(${port})
for i in ${port[@]};do
	if [[ $i -eq 22 ]];then
		echo -e "\nPort $i -- SSH. Typically, it is used for remote management. While it is generally considered secure, it requires proper key management."
	elif [[ $i -eq 21 || $i -eq 22 ]];then
		echo -e "\nPort $i -- FTP. An outdated and insecure protocol, which utilize no encryption for both data transfer and authentication"
	elif [[ $i -eq 23 ]];then
		echo -e "\nPort $i -- A predecessor to SSH, is no longer considered secure and is frequently abused by malware."
	elif [[ $i -eq 25 ]];then
                echo -e "\nPort $i -- SMTP. If not properly secured, it can be abused for spam e-mail distribution."
	elif [[ $i -eq 53 ]];then
                echo -e "\nPort $i -- DNS. Very often used for amplification DDoS attacks."
	elif [[ $i -eq 189 ]];then
                echo -e "\nPort $i -- NetBIOS. Legacy protocol primarily used for file and printer sharing."
	elif [[ $i -eq 80 || $i -eq 443 ]];then
                echo -e "\nPort $i -- Used by HTTP and HTTPS. HTTP servers and their various components are very exposed and often sources of attacks."
	elif [[ $i -eq 445 ]];then
                echo -e "\nPort $i -- SMB. Provides sharing capabilities of files and printers. Used in the 2017 WannaCry attack."
	elif [[ $i -eq 1433 || $i -eq 1434 || $i -eq 3306 ]];then
                echo -e "\nPort $i -- SQL Server and MySQL default ports – used for malware distribution."
	elif [[ $i -eq 3389 ]];then
                echo -e "\nPort $i -- Remote Desktop. Utilized to exploit various vulnerabilities in remote desktop protocols, as well as weak user authentication. Remote desktop vulnerabilities are commonly used in real world attacks, with the last example being the BlueKeep vulnerability."
	else
		echo -e "\n PORT $i ------>>> Need to Research "
	fi
done
sleep 7s
echo -e "\n___________________________________________________________________________________"
echo -e "       --------------------------------------------------------------------        \n"

echo "Tools on"
echo "$(toilet --filter gay StandBy)"

function ssh() {
	echo -e"The Secure Shell Protocol is a cryptographic network protocol for operating network services securely over an unsecured network. Its most notable applications are remote login and command-line execution. SSH applications are based on a client–server architecture, connecting an SSH client instance with an SSH server\n"
	
	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p " Username : " user
			read -p " any options: " opt
			echo -e "\n\nInitiating ssh....\n"
        		sleep 3s
        		xterm -hold -e ssh $opt $user@$IP
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi

}

function hydra() {
	
	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p " User : " user
			read -p " Wordlist(path): " wordl
			read -p " Service: " serv
			echo -e "\n\nInitiating hydra....\n"
        		sleep 3s
        		xterm -hold -e hydra -l $user -P $wordl $serv//$IP
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
}

function gobuster() {
	echo -e "Gobuster is a tool used to brute-force:
		URIs (directories and files) in web sites.
		DNS subdomains (with wildcard support).
		Virtual Host names on target web servers.
		Open Amazon S3 buckets\n"
	
	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p " setting: " set
			read -p " Wordlist(path): " wordl
			echo -e "\n\nInitiating gobuster....\n"
        		sleep 3s
        		xterm -hold -e gobuster $set -u http://$IP -w $wordl
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
    
}

function dirbuster() {
    echo "DirBuster is a multi threaded java application designed to brute force directories and files names on web/application servers. Often is the case now of what looks like a web server in a state of default installation is actually not, and has pages and applications hidden within. DirBuster attempts to find these."
    read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			echo -e "\n\nInitiating dirbuster....\n"
        		sleep 3s
        		dirbuster
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
    
}
	

function ffuf() {
	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p " URL(Including where to FUZZ): " url
			read -p " Wordlist(path): " wordl
			read -p " additional options: " opt
			echo -e "\n\nInitiating ffuf....\n"
        		sleep 3s
        		xterm -hold -e ffuf -w $wordl -u $url $opt
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
}
function ftp() {
    echo -e "The FTP (File Transfer Protocol) utility program is commonly used for copying files to and from other computers. These computers may be at the same site or at different sites thousands of miles apart. FTP is a general protocol that works on UNIX systems as well as a variety of other (non-UNIX) systems.\n"
    	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			echo -e "\n\nInitiating ftp....\n"
        		sleep 3s
        		xterm -hold -e ftp $IP
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
	
}
function telnet() {
    echo -e "In Linux, the telnet command is used to create a remote connection with a system over a TCP/IP network. It allows us to administrate other systems by the terminal. We can run a program to conduct administration."
	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p "IP: (can be blank) " $I
			echo -e "\n\nInitiating telnet....\n"
        		sleep 3s
        		xterm -hold -e telnet $I
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
}
function mysql() {
    	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p "username: " $user
			echo -e "\n\nInitiating mysql....\n"
        		sleep 3s
        		xterm -hold -e mysql -h $IP -u $user -p
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
	
}
function enum4linux() {
   	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p "options: " $opt
			echo -e "\n\nInitiating enum4linux....\n"
        		sleep 3s
        		xterm -hold -e enum4linux $opt $IP
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
	
}
function nikto() {
	read -p " Spawn the Tool? O_O (Y/N): " resp1

	if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
		then
			read -p "options: " $opt
			echo -e "\n\nInitiating nikto....\n"
        		sleep 3s
        		xterm -hold -e nikto -h $opt $IP
        		echo "Exiting...."
        		printf '\U2620\n'
        		sleep 3s
	fi    
}
function searchsploit() {
        
        read -p " Spawn the Tool? O_O (Y/N): " resp1

        if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
                then
                        read -p " Possible Vulnerable Service: " serv
                        echo -e "\n\nInitiating searchsploit....\n"
                        sleep 3s
                        xterm -hold -e searchsploit $serv
                        echo "Exiting...."
                        printf '\U2620\n'
                        sleep 3s
        fi    
}
function metasploit() {
        
        read -p " Spawn the Tool? O_O (Y/N): " resp1

        if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
                then
                        echo -e "\n\nInitiating msfconsole....\n"
                        sleep 3s
                        xterm -hold -e msfconsole
                        echo "Exiting...."
                        printf '\U2620\n'
                        sleep 3s
        fi    
}
function smbclient() {
        
        read -p " Spawn the Tool? O_O (Y/N): " resp1

        if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
                then
			read -p " options: " opt
                        read -p " Share(press enter if none): " share
                        echo -e "\n\nInitiating searchsploit....\n"
                        sleep 3s
                        xterm -hold -e smbclient $opt \\\\$IP\\$share
                        echo "Exiting...."
                        printf '\U2620\n'
                        sleep 3s
        fi    
}
function whatweb() {
        
        read -p " Spawn the Tool? O_O (Y/N): " resp1

        if [[ "$resp1" == "Y" || "$resp1" == "Y" ]];
                then
                        read -p " options: " opt
                        echo -e "\n\nInitiating searchsploit....\n"
                        sleep 3s
                        xterm -hold -e whatweb $opt $IP
                        echo "Exiting...."
                        printf '\U2620\n'
                        sleep 3s
        fi    
}



##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}

menu(){
echo -ne "
$(ColorGreen '1)') SSH
$(ColorGreen '2)') Hydra
$(ColorGreen '3)') Gobuster 
$(ColorGreen '4)') Dirbuster
$(ColorGreen '5)') ffuf
$(ColorGreen '6)') FTP
$(ColorGreen '7)') Telnet
$(ColorGreen '8)') mysql
$(ColorGreen '9)') enum4linux
$(ColorGreen '10)') Nikto
$(ColorGreen '11)') Searchsploit
$(ColorGreen '12)') Metasploit
$(ColorGreen '13)') Smbclient
$(ColorGreen '14)') Whatweb
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) ssh ; menu ;;
	        2) hydra ; menu ;;
	        3) gobuster ; menu ;;
	        4) dirbuster ; menu ;;
	        5) ffuf ; menu ;;
	        6) ftp ; menu ;;
	        7) telnet ; menu ;;
	        8) mysql ; menu ;;
	        9) enum4linux ; menu ;;
	        10) nikto ; menu ;;
		11) searchsploit; menu ;;
		12) metasploit ; menu ;;
		13) smbclient ; menu ;;
		14) whatweb ; menu ;;
		0) echo "$(toilet --filter metal Thank You     GoodBye!!)"; exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu

sleep 3s
echo "$(toilet --filter metal Thank You )"




