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
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "Programi Calistirmak İcin Root Olarak Giris Yapin Ya da Basina Sudo Koyunuz."; echo ; exit 1; }

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Tespit Edildi Cikiliyor..."
sleep 1
echo ""
echo -e $yellow"[*] BCHackTool Programini Tercih Ettiginiz Icin Tesekkurler  {ByChan} :)"
exit
}
clear
# check internet 
function checkinternet {
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo  "Interet Kontrol Ediliyor...: BAGLANAMADI
    Bu Programin Etkin Bir Internete Ihtiyaci Var"
    echo "Simdi Cikiliyor"
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
echo -e $cyan"    Youtube Kanalim     $white":" $red https://www.youtube.com/ByChan"
echo -e $cyan"    Github              $white":" $red https://github.com/ByCh4n"
echo -e $cyan"    Instagram           $white":" $red huseyinaltns"
echo -e $cyan ""
echo -e $okegreen"   ~~~~~~~~~~~~~~~~~~~~~ Tool Listesi ~~~~~~~~~~~~~~~~~~~~~~~~~    ";
        echo
        echo "[1] ✔ Instagram Takipci Hilesi         [2] ✔ Wifi Kick"
        echo "[3] ✔ Otomatik Ip Degistirme           [4] ✔ Sosyal Muhendislik"
        echo "[5] ✔ ByChan Ddos                      [6] ✔ Kisi Analizi"
        echo "[7] ✔ Konum Ogrenme                    [8] ✔ Instagram BruteForce"
        echo "[9] ✔ Facebook BruteForce              [10] ✔ WordList Olusturma"
        echo "[11] ✔ Whatsapp Spam Bomber            [12] ✔ Rar-Zip Sifre Kirici"
        echo "[q] ✔ Quit"
        echo
        read -p "Numara Giriniz>: " option
        echo
        
        case "$option" in 
            1)  
                echo -e $red "############## Instagram Takipci Hilesi ###################"
                sleep 2
                git clone https://github.com/thelinuxchoice/inshackle > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Instagram Takipci Hilesi Indirildi " 
                cd inshackle
                chmod +x inshackle.sh
                clear
                bash inshackle.sh
                cd ..
                echo ""
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            2)  
                echo -e $red "############## Wifi Kick ###################"
                sleep 2
                git clone https://github.com/k4m4/kickthemout > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Wifi Kick  Indirildi "
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
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            3)  
                echo -e $red "############## Otomatik Ip Degistirme ###################"
                sleep 2
                git clone https://github.com/SusmithKrishnan/torghost > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Otomatik Ip Degistirme Indirildi "
                cd torghost
                chmod +x install.sh
                clear
                ./install.sh
                clear
                torghost -s
                cd ..
                echo ""
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            4)  
                echo -e $red "############## Sosyal Muhendislik ###################"
                sleep 2
                git clone https://github.com/DarkSecDevelopers/HiddenEye > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Sosyal Muhendislik Indirildi "
                cd HiddenEye
	        sudo pip3 install -r requirements.txt
                clear
                chmod +x HiddenEye.py
                clear
                sudo python3 HiddenEye.py
                cd ..
                echo ""
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            5)  
                echo -e $red "############## ByChan Ddos ###################"
                sleep 2
                git clone https://github.com/ByCh4n/Ddos-Attack-ByChan > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] ByChan Ddos  Indirildi "
                cd Ddos-Attack-ByChan
                chmod +x Ddos.py
                clear
                sudo python Ddos.py
                cd ..
                echo ""
                echo -e "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            6)  
                echo -e $red "############## Kisi Analizi ###################"
                sleep 2
                git clone https://github.com/thelinuxchoice/userrecon > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Kisi Analizi Indirildi "
                cd userrecon
                chmod +x userrecon.sh
                clear
                ./userrecon.sh
                cd ..
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            7)  
                echo -e $red "############## Konum Ogrenme ###################"
                sleep 2
                git clone https://github.com/thewhiteh4t/seeker > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Konum Ogrenme  Indirildi "
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
                echo -e $red "########## Tamamlandi ############"
                echo ""
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
            8)  
                echo -e $red "############## Instagram BruteForce ###################"
                sleep 2
                git clone https://github.com/thelinuxchoice/instashell > /dev/null 2>&1
                echo
                echo -e $green "[ ✔ ] Instagram BruteForce  Indirildi "
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
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	    9)  
                echo -e $red "############## Facebook BruteForce ###################"
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
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	   10)  
                echo -e $red "############## WordList Olusturma ###################"
                sleep 2
                git clone https://github.com/Mebus/cupp > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] WordList Olusturma Indirildi " 
                cd cupp
                chmod +x cup.py
                clear
                sudo apt-get install python3
                clear
                sudo python3 cupp.py -i
                cd ..
                echo ""
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	   11)  
                echo -e $red "############## Whatsapp Spam Bomber ###################"
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
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
                read -p "pess any key to return ..."
                clear
                ;;
	   12)  
                echo -e $red "############## Rar-Zip Sifre Kirici ###################"
                sleep 2
                git clone https://github.com/ByCh4n/Rar-Zip-Crack > /dev/null 2>&1
                echo
                echo  -e $green "[ ✔ ] Rar-Zip Sifre Kirici Indirildi " 
                cd Rar-Zip-Crack
                chmod +x rar_zip_cracker.py
                clear
                sudo apt-get install python3
                clear
                sudo python3 rar_zip_cracker.py
                cd ..
                echo ""
                echo -e $red "########## Tamamlandi ############"
                echo
                echo -e $green " 【!】 Ana Menuye Don 【!】 "
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
