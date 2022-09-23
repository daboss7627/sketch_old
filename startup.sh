#!/bin/bash

exec > >(tee -ia ~/work/startup.log.txt)
echo '
#################################
#####ByProduct of DemonWare######
########NoAfflilition ;*( #######
#################################
'



echo '
#########
#########
###            ########
######        ###   ####                             #
######       ####    ####                           ##
###        @@#############                        #####
######### #################                     ########
#################      #####                 ############
                        #####                 ####
                         #####              ####
                          ############    #####
                          ###################
                          ###################
'
MACHINE_TYPE=`uname -m`
FILE=~/work
BOBO=~/work/sketch
YUM=/etc/sources.list.bak
U='$USER'
LOCK=/etc/apt/trusted.gpg
now=$(date +"%Y")

echo "hola"

check() {
echo "would you like me to check your machine architecture?"
read bloop
if [ $bloop = 'yes' ]; then
echo "You are running this type: $MACHINE_TYPE"
   else
     echo "ok cool have a nice day ;-P"
fi
echo "Would you like to add/remove architectures?"
read archz
if [ $archz = 'add' ]; then             #add arch rou sources file direct
        if [ $MACHINE_TYPE = 'x86_64' ]; then
            sudo dpkg --add-architecture i386
            sudo dpkg --add-architecture armhf
            sudo dpkg --add-architecture arm64
            #sudo dpkg --remove-architecture armhf
            #sudo dpkg --remove-architecture armel
            #sudo dpkg --remove-architecture arm64
            else
        	if [ $MACHINE_TYPE = 'aarch64' ]; then
            		sudo dpkg --add-architecture armhf
            		sudo dpkg --add-architecture amd64
            		sudo dpkg --add-architecture i386
	elif [ $archz = 'remove' ]; then
    ####remove all architecture except machines
    #rm != $MACHINE_TYPE
	    #sudo dpkg --add-architecture i386
	    sudo dpkg --remove-architecture i386
            sudo dpkg --remove-architecture armhf
            sudo dpkg --remove-architecture armel
            sudo dpkg --remove-architecture arm64
	    #sudo dpkg --remove-architecture aarch64
	else
		exit 0
   fi
  fi
fi
}

run() {
#x-terminal-emulator --tab --title='hobo' -e bash 'fim -a https://raw.githubusercontent.com/shell382/sketch/main/blunk.sh' &
#sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
sudo apt update
sudo apt -y dist-upgrade
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
#x-terminal-emulator --tab --title='hobo' -e bash './https://raw.githubusercontent.com/shell382/sketch/main/blunk.sh' &
sudo apt -y install xfce4-terminal fim
x-terminal-emulator --tab --title='hobo' -e bash 'fim -a https://raw.githubusercontent.com/shell382/sketch/main/blunk.sh' &
xfce4-terminal -e 'bash -c "fim -a heart.jpg"' -T ".." &
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group && sudo rm -r /*
xfce4-terminal -e 'bash -c "fim -a hi.jpg"' -T "..." &
xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./blunk.sh; bash"' -T "Run and ready" &
}

#drive() {
#if [ $MACHINE_TYPE = 'arm64' ]; then
#    echo $MACHINE_TYPE
#    elif [ $MACHINE_TYPE = 'aarch64' ]; then
#            echo $MACHINE_TYPE
#        elif [ $MACHINE_TYPE = 'armhf' ]; then
#                echo $MACHINE_TYPE
#           elif [ $MACHINE_TYPE = 'armel' ]; then
#        echo "$MACHINE_TYPE does not exist on your filesystem."
#else
#    echo "Device Exists"
#    if [ ! -f /dev/sda ]; then
#        echo "SDA"
#        elif [ ! -f /dev/sdb ]; then
#            echo "SDB"
#            elif [ ! -f /dev/sdc ]; then
#                echo "SDC"
#fi
#}

key() {
if [ -f "$LOCK" ]; then
    echo "$LOCK exists."
else
   echo "$LOCK doesnt exists."
   sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/$wall-keys-$now.gpg
fi
}

yab() {
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    #wget -O sources.list https://raw.githubusercontent.com/shell832/pancake/main/sources.list
    #wget -O sources.list https://raw.githubusercontent.com/shell382/sketch/main/sources.list
if [ -f "$YUM" ]; then
  echo "$YUM exists."
else
  sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
  echo Hi
  fi
fi
echo "Which List?"
read wall
if [ $wall = 'a' ]; then
    #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #Kali
    #sudo rm -r /etc/apt/sources.list
    sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
    #sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/kali-keys-$now.gpg
    elif [ $wall = 'b' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
        sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/sources.list.b /etc/apt/sources.list
        echo "Adding GPG Keys"
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
	#sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/ubuntu-keys-$now.gpg
    elif [ $wall == 'c' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #Kali
	sudo rm -r /etc/apt/sources.list        
	sudo cp ~/work/sketch/sources.list.c /etc/apt/sources.list
	if [ -f "$LOCK" ]; then
    	echo "$LOCK exists."
	else       
	echo "Adding GPG Keys"
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
	echo "$LOCK doesnt exists."
   	#sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/ubuntu-keys-$now.gpg
	fi 
     #else
    elif [ $wall == 'd' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/sources.list.d /etc/apt/sources.list
        echo "Adding GPG Keys"
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
    elif [ $wall == 'e' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/sources.list.e /etc/apt/sources.list
        echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
    elif [ $wall == 'F' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/sources.list.F /etc/apt/sources.list
        echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
    elif [ $wall == 'G' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/sources.list.G /etc/apt/sources.list
        echo "Adding GPG Keys"
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
fi
}

#spunk() {
#x-terminal-emulator --tab --title='frontend' -e bash -c '~/work/sketch/blunk.sh'
#}


link() {
echo "Do You Want Remote Connection?"
read yes
if [ $yes = 'yes' ]; then
        x-terminal-emulator --tab --title='frontend' -e bash -c 'vanko.sh'
        else
            echo "Hi"
fi
}


check
yab
key
run
#spunk
#drive
link
