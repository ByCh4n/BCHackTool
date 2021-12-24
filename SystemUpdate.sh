#!/bin/bash

## SystemUpdate ##

function ok {
    echo "ok" &> /dev/null
}

if [[ -f chk ]] ; then
    ok
else
        clear
        echo " ______         ______ __                
|   __ \.--.--.|      |  |--.---.-.-----.
|   __ <|  |  ||   ---|     |  _  |     |
|______/|___  ||______|__|__|___._|__|__|
        |_____|                          
"
        echo "Gerekli araçlar kuruluyor lütfen bekleyin.."
        {
			apt install git -y
			apt install python3 -y 
			apt install python3-pip -y 	
            apt install python -y 
            apt install nmap -y 
            apt install torghost -y 
            apt install tor -y 
            apt install default-jdk -y 
			apt install openjdk-9-jdk-headless -y 			
            apt install php -y 			
			python3 -m pip install setuptools			
            pip install mechanize 
            pip install php			
            pip install tor			
            pip install curl			
            pip install tor			
            pip install stem					
            pip3 install requests			
            pip3 install clint		
            pip3 install coloramas			
        }
		touch chk
        echo "Gerekli araçlar kuruldu.."
fi
