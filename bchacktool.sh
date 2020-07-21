#!/bin/bash

#Colors
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
echo ""
sleep 2
# Root Kontrol
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "Programı Çalıştırmak İçin Root Olarak Giriş Yapınız Yada Komutun Başına Sudo Koyunuz."; echo ; exit 1; }

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Tespit Edildi Çıkılıyor..."
sleep 1
echo ""
echo -e $yellow"[*] BCHackTool Programını Tercih Ettiğiniz İçin Teşekkürler {ByChan} :)"
exit
}
clear
# check internet 
function checkinternet {
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo  "Internet Kontrol Ediliyor...: BAGLANAMADI
    Bu Programin Etkin Bir Internete Ihtiyaci Var"
    echo "Simdi Çıkılıyor"
    echo && sleep 2
    kexit
  else
    echo "Interet Kontrol Ediliyor: BAGLANDI"
  fi
}
checkinternet
sleep 2
#banner head
function main_menu()
{
    while :
    do
clear
echo -e $blue ""


echo "      ██████╗ ██╗   ██╗ ██████╗██╗  ██╗ █████╗ ███╗   ██╗                  ";
echo "      ██╔══██╗╚██╗ ██╔╝██╔════╝██║  ██║██╔══██╗████╗  ██║                  ";
echo "      ██████╔╝ ╚████╔╝ ██║     ███████║███████║██╔██╗ ██║                  ";
echo "      ██╔══██╗  ╚██╔╝  ██║     ██╔══██║██╔══██║██║╚██╗██║                  ";
echo "      ██████╔╝   ██║   ╚██████╗██║  ██║██║  ██║██║ ╚████║                  ";
echo "      ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝                  ";           


echo ""

echo ""
echo -e $cyan"    Create by           $white":" $red ByChan  "
echo -e $cyan"    Youtube Kanalım     $white":" $red https://www.youtube.com/ByChan"
echo -e $cyan"    Github              $white":" $red https://github.com/ByCh4n"
echo -e $cyan"    Instagram           $white":" $red huseyinaltns"
echo -e $cyan ""
echo -e $okegreen"   ~~~~~~~~~~~~~~~~~~~~~ Tool Listesi ~~~~~~~~~~~~~~~~~~~~~~~~~    ";
        echo
        echo "[1] ✔ Instagram Takipçi Hilesi         [2] ✔ Wifi Kick"
        echo "[3] ✔ Otomatik Ip Değiştirme           [4] ✔ Sosyal Mühendislik"
        echo "[5] ✔ ByChan Ddos                      [6] ✔ Kişi Analizi"
        echo "[7] ✔ Konum Öğrenme                    [8] ✔ Instagram BruteForce"
        echo "[9] ✔ Facebook BruteForce              [10] ✔ WordList Oluşturma"
        echo "[11] ✔ Whatsapp Spam Bomber            [12] ✔ Rar-Zip Şifre Kırıcı"
		echo "[13] ✔ Ip Tracer                       [14] ✔ Facebook Email-Numara Öğrenme"
		echo "[15] ✔ Instagram-Facebook-Twitter BF   [16] ✔ CCTV Cam Hack"
		echo "[17] ✔ BackDoor Trojan                 [18] ✔ Numaradan Bilgi Öğrenme"
        echo "[q] ✔ Çıkış                             [x] ✔ Otomatik Güncelleyici"
        echo
        read -p "Numara Giriniz>: " option
        echo
        
        case "$option" in 
            1)  
                echo -e $red "~~~~~~~~~~~~~~~ Instagram Takipçi Hilesi ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/Sanju8943/inshackle > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Instagram Takipçi Hilesi Indirildi " 
                cd inshackle
                chmod +x inshackle.sh
                clear
                bash inshackle.sh
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            2)  
                echo -e $red "~~~~~~~~~~~~~~~ Wifi Kick ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/k4m4/kickthemout > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Wifi Kick Indirildi "
                cd kickthemout
                sudo apt-get install nmap
                clear
                sudo apt-get install python3
                clear
                sudo apt-get install python3-pip
                clear
                sudo pip3 install -r requirements.txt
                clear
                chmod +x kickthemout.py
                clear
                sudo python3 kickthemout.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            3)  
                echo -e $red "~~~~~~~~~~~~~~~ Otomatik Ip Değiştirme ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/SusmithKrishnan/torghost > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Otomatik Ip Değiştirme Indirildi "
                cd torghost
                chmod +x install.sh
                clear
                ./install.sh
                clear
                torghost -s
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            4)  
                echo -e $red "~~~~~~~~~~~~~~~ Sosyal Muhendislik ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/DarkSecDevelopers/HiddenEye > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Sosyal Muhendislik Indirildi "
                cd HiddenEye
	            sudo pip3 install -r requirements.txt
			    clear
			    sudo apt-get install php
			    clear
			    sudo pip install php
                clear
                chmod +x HiddenEye.py
                clear
                sudo python3 HiddenEye.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            5)  
                echo -e $red "~~~~~~~~~~~~~~~ ByChan Ddos ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/ByCh4n/Ddos-Attack-ByChan > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] ByChan Ddos Indirildi "
                cd Ddos-Attack-ByChan
                chmod +x Ddos.py
                clear
                sudo python Ddos.py
                cd ..
                echo ""
                echo -e "~~~~~~~~~~~~~~~ Tamamlandi ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            6)  
                echo -e $red "~~~~~~~~~~~~~~~ Kişi Analizi ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/issamelferkh/userrecon > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Kişi Analizi Indirildi "
                cd userrecon
                chmod +x userrecon.sh
                clear
                ./userrecon.sh
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            7)  
                echo -e $red "~~~~~~~~~~~~~~~ Konum Öğrenme ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/thewhiteh4t/seeker > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Konum Öğrenme Indirildi "
                cd seeker
                chmod +x install.sh
                chmod +x seeker.py
                clear
                ./install.sh
                clear
                sudo apt-get install python3
                clear
                sudo python3 seeker.py -t manual -k xxx
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo ""
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            8)  
                echo -e $red "~~~~~~~~~~~~~~~ Instagram BruteForce ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/OffXec/instashell > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Instagram BruteForce Indirildi "
                echo -e $yellow "" 
                cd instashell
                chmod +x instashell.sh
                chmod +x install.sh
                clear
                sudo ./install.sh
                clear
                service tor start
                sudo ./instashell.sh
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	    9)  
                echo -e $red "~~~~~~~~~~~~~~~ Facebook BruteForce ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/AngelSecurityTeam/BluForce-FB > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Facebook BruteForce Indirildi " 
                cd BluForce-FB
                chmod +x bluforcefb.py
                clear
                sudo apt-get install python2
                sudo apt-get install python-pip
                clear
                sudo pip2 install mechanize
                clear
                sudo python2 bluforcefb.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	   10)  
                echo -e $red "~~~~~~~~~~~~~~~ WordList Oluşturma ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/Mebus/cupp > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] WordList Oluşturma Indirildi " 
                cd cupp
                chmod +x cup.py
                clear
                sudo apt-get install python3
                clear
                sudo python3 cupp.py -i
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ TamamlandI ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	   11)  
                echo -e $red "~~~~~~~~~~~~~~~ Whatsapp Spam Bomber ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/sandiwijayani1/SpamWa > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Whatsapp Spam Bomber Indirildi " 
                cd SpamWa
                chmod +x spam.py
                clear
                sudo apt-get install python3
                pip3 install requests
                clear
                sudo python3 spam.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ TamamlandI ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	   12)  
                echo -e $red "~~~~~~~~~~~~~~~ Rar-Zip Şifre Kırıcı ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/ByCh4n/Rar-Zip-Crack > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Rar-Zip Şifre Kırıcı Indirildi " 
                cd Rar-Zip-Crack
                chmod +x rar_zip_cracker.py
                clear
                sudo apt-get install python3
                clear
                sudo python3 rar_zip_cracker.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
		13)  
                echo -e $red "~~~~~~~~~~~~~~~ Ip Tracer ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/rajkumardusad/IP-Tracer > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Ip Tracer Indirildi " 
                cd IP-Tracer
                chmod +x install
                clear
                sudo ./install
                clear
                ip-tracer start
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
		14)  
                echo -e $red "~~~~~~~~~~~~~~~ Facebook Email-Numara Öğrenme ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/CiKu370/OSIF > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Facebook Email-Numara Öğrenme Indirildi " 
                cd OSIF
                pip2 install -r requirements.txt
                clear
                python2 osif.py 
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
		15)  
                echo -e $red "~~~~~~~~~~~~~~~ Instagram-Facebook-Twitter BruteForce ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/AzizKpln/Bruter19 > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Instagram-Facebook-Twitter BruteForce Indirildi " 
                cd Bruter19
				sudo apt-get install python-pip
                sudo ./setup.sh
                clear
                sudo python3 bruter19.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
		16)  
                echo -e $red "~~~~~~~~~~~~~~~ CCTV Cam Hack ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/AngelSecurityTeam/Cam-Hackers > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] CCTV Cam Hack Indirildi " 
                cd Cam-Hackers
                sudo apt-get install python3-pip
                clear
                sudo pip3 install requests
				clear
				sudo python3 cam-hackers.py
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
		17)  
                echo -e $red "~~~~~~~~~~~~~~~ BackDoor Trojan ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/Screetsec/TheFatRat > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] BackDoor Trojan Indirildi " 
                cd TheFatRat
                sudo apt-get install default-jdk
                clear
                sudo chmod +x setup.sh
				clear
				./setup.sh
				clear
				./fatrat
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            18)  
                echo -e $red "~~~~~~~~~~~~~~~ Numaradan Bilgi Öğrenme ~~~~~~~~~~~~~~~"
                sleep 2
                git clone https://github.com/Wes974/PhoneInfoga > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Numaradan Bilgi Öğrenme Indirildi " 
                cd PhoneInfoga
                sudo apt-get install python
                sudo apt-get install python-pip
                clear
                pip install -r requirements.txt
				clear
                echo "Kullanımı PhoneInfoga Dizinine Girip - python phoneinfoga.py -n +90*** - Şeklindedir."
                cd ..
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
		x)  
                echo -e $red "~~~~~~~~~~~~~~~ Otomatik Güncelleyici Başlatıldı ~~~~~~~~~~~~~~~"
                sleep 2
                sudo apt-get update
				clear
				sudo apt-get upgrade
				clear
				sudo apt-get install python
				clear
				sudo apt-get install python2
				clear
				sudo apt-get install python3
				clear
				sudo apt-get install python-pip
				clear
				sudo apt-get install python2-pip
				clear
				sudo apt-get install python3-pip
				clear
				sudo pip install mechanize
				clear
				sudo pip2 install mechanize
				clear
				sudo pip install php
				clear
				sudo pip install tor
				clear
				sudo apt-get install tor
				clear
				sudo pip3 install requests
				clear
				sudo apt-get install php
				clear
				sudo apt-get install nmap
				clear
				sudo apt-get install torghost
				clear
				sudo apt-get install tor
				clear
				sudo pip3 install clint
				clear
				sudo pip3 install colorama
                echo ""
                echo -e $red "~~~~~~~~~~~~~~~ Otomatik Güncelleyici Tamamlandı ~~~~~~~~~~~~~~~"
                echo
                echo -e $green " 【!】 Ana Menüye Dön 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            q)  echo -e $yellow " BCHackTool Programini Tercih Ettiginiz Icin Tesekkurler  {ByChan}  !!"
                echo
                exit 0 
                ;;
        esac
    done
}
main_menu
