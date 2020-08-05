#!/bin/bash

#Colors
    cyan='\e[0;36m'
    lightcyan='\e[96m'
    lightgreen='\e[1;32m'
    white='\e[1;37m'
    red='\e[1;31m'
    yellow='\e[1;33m'
    blue='\e[1;34m'
    tp='\e[0m'
    green='\e[0;32m'

# variables
    blink='\e[5m'
    lc='/data/data/com.termux/files/usr/bin/lolcat' 
    #lc='/usr/local/bin/lolcat' # gali linux için
    setdir=$PWD
    version='bchacktool-termux V2.0'

# help
if [[ $1 =~ ^(-h|--help|-y|--yardım) ]] ; then
    echo ""
    echo -e "Default kullanım için dosyayı ${lightgreen}./bchacktool-lite.sh$tp"
    echo -e "${green}./bchacktool-lite.sh -u$tp Otomatik Güncelleyici"
    echo "----------------------------------------------------------"
    echo -e $cyan"    Create by           $white":" $red ByChan$tp"
    echo -e $cyan"    Youtube Kanalim     $white":" $red https://www.youtube.com/ByChan$tp"
    echo -e $cyan"    Github              $white":" $red https://github.com/ByCh4n$tp"
    echo -e $cyan"    Instagram           $white":" $red @huseyinaltns$tp"
    echo -e "$cyan    Discord            $white : $red https://discord.gg/R6vApmn$tp"
    echo -e "$cyan    Tester             $white : $red CruelMSA$tp"
    echo -e "$cyan    developper         $white : $red https://github.com/lastpingu$tp"
    exit 0
elif [[ $1 =~ ^(-u|--update|-g|--güncelle) ]] ; then
    checkupdatepermission=$(ls -l update | awk '{print $1}') 
    if [[ $checkupdatepermission = "-rwxr-x--x" ]] ; then
    bash update
    else
    chmod 751 update
    bash update
    fi
    exit 0
elif [[ $1 =~ ^(-v|--version) ]] ; then
    echo "$version"
    exit 0
fi

# spinner
spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${green}OK${tp}]"
}

function pressanykey {
    read -n 1 -r -s -p $'Press any key to continue...\n'
}

function pressanykey3 {
    read -t 3 -n 1 -r -s -p $'Press any key to continue...\n'
}

function ok {
    echo "ok" &> /dev/null
}

## GEREKLI PROGRAM YUKLEYICI ##
if [[ -f chk ]] ; then
    ok
else
        echo -e "${lightcyan} Gerekli araçlar kuruluyor lütfen bekleyin.. (sabırlı olun)$tp"
			sudo git pull &> /dev/null
			spinlong
			pkg update -y &> /dev/null
			spinlong
			pkg update -y &> /dev/null
			spinlong
            pkg upgrade -y &> /dev/null
			spinlong
            pkg install python -y &> /dev/null
			spinlong
            pkg install python2 -y &> /dev/null
			spinlong
            pkg install python3 -y &> /dev/null
			spinlong
            pkg install git -y &> /dev/null
			spinlong
            pkg install nano -y &> /dev/null
			spinlong
            pip install openssl -y &> /dev/null
			spinlong
            pkg install openssl -y &> /dev/null
			spinlong
			pkg install openssh -y &> /dev/null
			spinlong
			termux-setup-storage -y &> /dev/null
			spinlong
			pip install requests -y &> /dev/null
			spinlong
            pkg install tor -y &> /dev/null
			spinlong
            pkg install curl -y &> /dev/null
			spinlong
            pip install curl -y &> /dev/null
			spinlong
            pip install tor -y &> /dev/null
			spinlong
            pip2 install mechanize -y &> /dev/null
			spinlong
            apt update -y &> /dev/null
			spinlong
            apt upgrade -y &> /dev/null
			spinlong
			apt autoremove -y &> /dev/null
			spinlong
			apt full-upgrade -y &> /dev/null
			spinlong
            pkg install git python php curl openssh grep -y &> /dev/null
			spinlong
            pip install stem -y &> /dev/null
			spinlong
			pkg -y install git -y &> /dev/null
			spinlong
			pkg -y install python -y &> /dev/null
			spinlong
			sudo apt-get update -y &> /dev/null
			spinlong
			sudo apt-get -y install git &> /dev/null
			spinlong
			sudo apt-get -y install python3 &> /dev/null
			spinlong
			sudo apt-get -y install python3-pip &> /dev/null
			spinlong
            apt update -y &> /dev/null
			spinlong
            apt upgrade -y &> /dev/null
			spinlong
            sudo apt-get install python -y &> /dev/null
			spinlong
            sudo apt get install python2 -y &> /dev/null
			spinlong
            sudo apt-get install python3 -y &> /dev/null
			spinlong
            sudo apt-get install python-pip -y &> /dev/null
			spinlong
            sudo apt-get install python2-pip -y &> /dev/null
			spinlong
            sudo apt-get install python3-pip -y &> /dev/null
			spinlong
            sudo pip install mechanize -y &> /dev/null
			spinlong
            sudo pip2 install mechanize -y &> /dev/null
			spinlong
            sudo pip install php -y &> /dev/null
			spinlong
            sudo pip install tor -y &> /dev/null
			spinlong
            sudo apt-get install tor -y &> /dev/null
			spinlong
            sudo pip3 install requests -y &> /dev/null
			spinlong
            sudo apt-get install nmap -y &> /dev/null
			spinlong
            sudo apt-get install torghost -y &> /dev/null
			spinlong
            sudo pip3 install clint -y &> /dev/null
			spinlong
            sudo pip3 install coloramas -y &> /dev/null
			spinlong
            sudo apt-get install default-jdk -y &> /dev/null
			spinlong
			sudo apt install openjdk-9-jdk-headless -y &> /dev/null
			spinlong
            sudo apt-get install php -y &> /dev/null
			spinlong
			apk update &> /dev/null
			spinlong
			apk add git &> /dev/null
			spinlong
			apk add python3 &> /dev/null
			spinlong
			apk add py3-pip &> /dev/null
			spinlong
			pacman -Sy &> /dev/null
			spinlong
			pacman -S --noconfirm git &> /dev/null
			spinlong
			pacman -S --noconfirm python3 &> /dev/null
			spinlong
			pacman -S --noconfirm python3-pip &> /dev/null
			spinlong
			zypper refresh &> /dev/null
			spinlong
			zypper install -y git &> /dev/null
			spinlong
			zypper install -y python3 &> /dev/null
			spinlong
			zypper install -y python3-pip &> /dev/null
			spinlong
			yum -y install git &> /dev/null
			spinlong
			yum -y install python3 &> /dev/null
			spinlong
			yum -y install python3-pip &> /dev/null
			spinlong
			dnf -y install git &> /dev/null
			spinlong
			dnf -y install python3 &> /dev/null
			spinlong
			dnf -y install python3-pip &> /dev/null
			spinlong
			eopkg update-repo &> /dev/null
			spinlong
			eopkg -y install git &> /dev/null
			spinlong
			eopkg -y install python3 &> /dev/null
			spinlong
			eopkg -y install pip &> /dev/null
			spinlong
			xbps-install -S &> /dev/null
			spinlong
			xbps-install -y git &> /dev/null
			spinlong
			xbps-install -y python3 &> /dev/null
			spinlong
			xbps-install -y python3-pip &> /dev/null
			spinlong
			sudo python3 -m pip install setuptools -y &> /dev/null
			spinlong
            pkg install ruby -y &> /dev/null
            spinlong 
            gem install lolcat &> /dev/null # tüm tuşlara basıp level atlama taktiği
			touch chk # checked file
            echo -e "${lightcyan} Gerekli araçlar kuruldu$tp"
            pressanykey
fi

## -*-*- ##

# banner
function banner {
    randomnumb=$((1 + RANDOM % 10))
    if [[ $randomnumb = "1" ]] ; then
        cat banners/banner1 | $lc
    elif [[ $randomnumb = "2" ]] ; then
        cat banners/banner2 | $lc
    elif [[ $randomnumb = "3" ]] ; then
        cat banners/banner3 | $lc   
    elif [[ $randomnumb = "4" ]] ; then
        cat banners/banner4 | $lc
    elif [[ $randomnumb = "5" ]] ; then
        cat banners/banner5 | $lc
    elif [[ $randomnumb = "6" ]] ; then
        cat banners/banner6 | $lc
    elif [[ $randomnumb = "7" ]] ; then
        cat banners/banner7 | $lc
    elif [[ $randomnumb = "8" ]] ; then
        cat banners/banner8 | $lc                   
    elif [[ $randomnumb = "9" ]] ; then
        cat banners/banner9 | $lc
    else
        cat banners/banner | $lc
    fi
}

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
echo -e "\n"
echo -e "[${blink}${yellow}*${tp}]$red (Ctrl + C ) Tespit Edildi Cikiliyor...$tp"
echo -e "[${blink}${yellow}*${tp}]$blue BCHackTool Programini Tercih Ettiginiz Icin Tesekkurler  {ByChan} :)$tp"
exit 0
}

while :
do
cd $setdir &> /dev/null
clear
banner
echo -e "${blink}${lightgreen}  ---------------------------------------------------------$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Create by           $white":" $red ByChan$tp ${blink}${lightgreen}                        |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Youtube Kanalim     $white":" $red https://www.youtube.com/ByChan$tp ${blink}${lightgreen}|$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Github              $white":" $red https://github.com/ByCh4n$tp ${blink}${lightgreen}     |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Instagram           $white":" $red huseyinaltns$tp ${blink}${lightgreen}                  |$tp"
echo -e "${blink}${lightgreen}  ---------------------------------------------------------$tp\n"
echo " ~~~~~~~~~~~~~~~~~~~~~ ByChan Termux ~~~~~~~~~~~~~~~~~~~~~~~~~" | $lc
        echo
        echo " [1] ✔ Facebook Bruteforce" | $lc
        echo " [2] ✔ WordList Oluşturma" | $lc
        echo " [3] ✔ Whatsapp Spam Bomber" | $lc
        echo " [4] ✔ Kişi Analizi" | $lc
		echo " [5] ✔ Numaradan Bilgi Öğrenme" | $lc
		echo " [6] ✔ Ip Tracer" | $lc
		echo " [7] ✔ Facebook Email-Numara Öğrenme" | $lc
		echo " [8] ✔ CCTV Cam Hack" | $lc
        echo " [9] ✔ Gerekli Program Yükleyici" | $lc
        echo " [b] ✔ Random Banner Bastırır" | $lc
        echo " [q] ✔ Çıkış" | $lc 
        echo -ne "\n${red}┌─[${tp}${USER}${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool-termux.sh${red}] \n└──╼${yellow}$ ${tp}" ; read option
        echo ""
    
        case "$option" in
            1)
            if [[ -d BluForce-FB ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Facebook Bruteforce İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/AngelSecurityTeam/BluForce-FB > /dev/null 2>&1
                spinlong
                cd BluForce-FB
                echo -e "$red  ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
                pip2 install mechanize &> /dev/null
                spinlong
                echo -e $red " ~~~~~~~~~~~ Facebook Bruteforce Kurulumu Bitti ~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd BluForce-FB
            python2 bluforcefb.py
            cd ..
                ;;
            2)
            if [[ -d cupp ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Cupp İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/Mebus/cupp > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Cupp Kurulumu Bitti ~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd cupp
            python3 cupp.py -i
            cd ..
                ;;
            3)
            if [[ -f SpamWa ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Whatsapp Spam Bomber İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/sandiwijayani1/SpamWa > /dev/null 2>&1
                spinlong
                cd SpamWa
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
                pip install requests &> /dev/null
                spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ Whatsapp Spam Bomber Kurulumu Bitti ~~~~~~~~~~~$tp"
                pressanykey3
                cd ..
            fi
                clear
                cd SpamWa
                python3 spam.py
                cd ..
                ;;
            4)
            if [[ -f userracon ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red "~~~~~~~~~~~ Kişi Analizi Aracı İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/issamelferkh/userrecon > /dev/null 2>&1
                spinlong
                echo -e $red "~~~~~~~~~~~ Kişi Analizi Aracı Kurulumu Bitti ~~~~~~~~~~~~$tp"
                echo ""
                pressanykey3
            fi
            clear
            cd userrecon
            bash userrecon.sh
            cd ..
                ;;
			5)
            if [[ -f PhoneInfoga ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Numaradan Bilgi Öğrenme Aracı İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/Wes974/PhoneInfoga > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler İndiriliyor ~~~~~~~~~~~~$tp"
                cd PhoneInfoga
                pip install -r requirements.txt &> /dev/null
                spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ Numaradan Bilgi Bitti Aracı Kurulumu Bitti ~~~~~~~~~~~$tp"
                pressanykey3
                cd ..
            fi
            clear
            cat banners/bcbanner
            cd PhoneInfoga
            while :; do
                echo -e "1-) ${green}[TR +${red}90${green}]${tp} +90 yazmadan ${blue}5312534783${tp} şeklinde giriniz"
                echo -e "2-) ${blue}custom ülke koduyla birlikte + dan sonrasını yazarak +${blue}994${green}4980335$tp"
                echo -e "b-) Ana Menü"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool-termux.sh/PhoneInfoga${red}] \n└──╼${yellow}$ ${tp}" ; read input1
                if [[ $input1 = "1" ]] ; then
                echo -e "${green}[TR +${red}90${green}]${tp} +90 yazmadan ${blue}5312534783${tp} şeklinde giriniz"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool-termux.sh/PhoneInfoga/TR${red}] \n└──╼${yellow}$ ${tp}" ; read atkx
                    python3 phoneinfoga.py -n +90${atkx}
                elif [[ $input1 = "2" ]] ; then
                echo -e "${blue}custom$tp ülke koduyla birlikte ${lightgreen}+${tp} dan sonrasını yazarak +${blue}994${green}4980335$tp"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool-termux.sh/PhoneInfoga/custom${red}] \n└──╼${yellow}$ ${tp}" ; read atkx
                    python3 phoneinfoga.py -n +${atkx}
                elif [[ $input1 =~ ^(b|B|g|G|GERI|GERİ|geri|BACK|back) ]] ; then
                    break
                else
                    echo "Ne Dediğini Anlayamadım"
                fi
            done
            pressanykey3
            cd ..
                ;;
			6)
            if [[ -f IP-Tracer ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Ip Tracer İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/rajkumardusad/IP-Tracer > /dev/null 2>&1
                spinlong
                cd IP-Tracer
                chmod +x install
                echo -e ""
                echo -e $red " ~~~~~~~~~~~ Ip Tracer Kuruluyor ~~~~~~~~~~~~$tp"
				./install &> /dev/null
                spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ Ip Tracer Kurulumu Bitti ~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
                clear
                cd Ip-Tracer
                ip-tracer start
                cd ..
                ;;
			7)
            if [[ -f OSIF ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Facebook Email-Numara Öğrenme Aracı İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/CiKu370/OSIF > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
                cd OSIF
                pip2 install -r requirements.txt &> /dev/null
				spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ Facebook Email-Numara Öğrenme Aracı Kurulumu Bitti ~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
                clear
                cd OSIF
				python2 osif.py
                cd ..
                ;;
			8)
            if [[ -f Cam-Hackers ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ CCTV Cam Hack ~~~~~~~~~~~~$tp"
                git clone https://github.com/AngelSecurityTeam/Cam-Hackers > /dev/null 2>&1
                spinlong
                cd Cam-Hackers
                echo -e $red "~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~ "
                pkg install python-pip &> /dev/null
				pkg install python3-pip &> /dev/null
				pip install requests &> /dev/null
				pip3 install requests &> /dev/null
                spinlong
                cd ..
                pressanykey3
                echo -e $red " ~~~~~~~~~~~ Facebook Email-Numara Öğrenme Bitti ~~~~~~~~~~~$tp"
            fi
                clear
                cd Cam-Hackers
                python3 cam-hackers.py
                cd ..
                ;;
            9)
            if [[ -f RequiredChan ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Gerekli Program Yükleyici ~~~~~~~~~~~~$tp"
                git clone https://github.com/ByCh4n/RequiredChan > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Gerekli Program Yükleyici Bitti ~~~~~~~~~~~$tp"
                pressanykey3
            fi
                clear
                cd RequiredChan
                bash reqchan
                cd ..
                ;;
            b)
                clear # not yet sadece döngüden yararlanır
                ;;
            q) 
                clear
                cat banners/bcbanner
                echo " BCHackTool Programini Tercih Ettiginiz Icin Tesekkurler {ByChan} !!" | $lc
                echo ""
                exit 0
                ;;
        esac
done
