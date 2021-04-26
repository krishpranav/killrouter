#!/bin/bash

# colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
clear


case `dpkg --print-architecture` in
aarch64)
exit
;;
arm)
exit
;;
armhf)
exit
;;

i*86)
exit
;;
x86_64)
exit
;;
esac






if [[ $EUID -ne 0 ]]; then	
	echo "														         "
        	exit 1
fi

apt-get update -y && apt-get upgrade -y
clear
if which airodump-ng >/dev/null; then
		sleep 0.25
         echo -e "$blue(AIRODUMP-NG)$nc .................................................. Instalado [$green✓$nc]"
else
		sleep 0.25
	 echo -e "$red(AIRODUMP-NG)$nc No instalado [$red✗$nc]"
			sleep 1
			apt-get install aircrack-ng -y


fi


if which mdk3 >/dev/null; then
		sleep 0.25
         echo -e "$blue(MDK3)$nc ......................................................... Instalado [$green✓$nc]"
		sleep 0.25
else
		sleep 0.25
	 echo -e "$red(MDK3)$nc  No instalado [$red✗$nc]"
			sleep 1
	 apt-get install mdk3 -y
		
fi

if which toilet >/dev/null; then
		sleep 0.25
         echo -e "$blue(Toilet)$nc ......................................................... Instalado [$green✓$nc]"
		sleep 0.25
else
		sleep 0.25
	 echo -e "$red(Toilet)$nc  No instalado [$red✗$nc]"
			sleep 1
	 apt-get install toilet -y
		
fi
if which macchanger >/dev/null; then
		sleep 0.25
         echo -e "$blue(macchanger)$nc ......................................................... Instalado [$green✓$nc]"
		sleep 0.25
else
		sleep 0.25
	 echo -e "$red(macchanger)$nc  No instalado [$red✗$nc]"
			sleep 1
	 apt-get install macchanger -y
		
fi

if which ruby >/dev/null; then
		sleep 0.25
         echo -e "$blue(ruby)$nc ......................................................... Instalado [$green✓$nc]"
		sleep 0.25
	       gem install lolcat
else
		sleep 0.25
	 echo -e "$red(macchanger)$nc  No instalado [$red✗$nc]"
			sleep 1
	 apt-get install ruby -y
	 gem install lolcat
		
fi

clear
chmod +x killrouter.sh
mkdir handshake
echo -e "Successfully instaslled"
sleep 5
bash killrouter.sh