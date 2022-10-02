#!/bin/bash


mobian() {
cd ~/work
git clone https://gitlab.com/mobian1/mobian-recipes.git
cd mobian-recipes
git pull
echo "pinephone or pinephone (pro)"
read pine
if [ $pine = 'pinephone' ]; then
    xfce4-terminal -e 'bash -c "cd ~/work/mobian-recipes; sudo ./build.sh -d -t pinephone -o -x sid -S unstable; bash"' -T "PinePhone" &
else
    xfce4-terminal -e 'bash -c "cd ~/work/mobian-recipes; sudo ./build.sh -d -t pinephonepro -o -x sid -S unstable; bash"' -T "PinePhone Pro" &
fi
}

kernel() {
echo "building Linux Kernel"
}

ubuntu() {
cd ~/work
git clone https://gitlab.com/ubports/core/rootfs-builder-debos.git
cd rootfs-builder-debos
git pull
sudo debos-docker -m 5G pinephone.yaml
}


mobianKernel() {
cd ~/work
git clone -b wip/pp-keyboard https://github.com/smaeul/linux.git
cd linux
git pull
cp ~/work/pineConfig ~/work/linux/.config
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j4 bindeb-pkg KERNELRELEASE="5.9-sunxi64-test" KDEB_PKGVERSION="1"
}


skiffos() {
cd ~/work
git clone https://github.com/skiffos/SkiffOS.git
cd SkiffOS
git pull
#export SKIFF_CONFIG=pine64/phone,core/pinephone_manjaro_kde
export SKIFF_CONFIG=core/pinephone_manjaro_phosh
make configure
make compile
}


arch() {
cd ~/work
git clone https://github.com/dreemurrs-embedded/Pine64-Arch.git
cd Pine64-Arch
git pull
}

mayhem() {
cd ~/work
git clone --recurse-submodules https://github.com/daboss7627/portapack-mayhem.git
cd portapack-mayhem
git pull
mkdir build
cd build
cmake ..
make firmware
}

carnage() {
cd ~/work
git clone --recurse-submodules https://github.com/daboss7627/portapack-carnage.git
cd portapack-carnage
git pull
mkdir build
cd build
cmake ..
make firmware
}

armbian() {
cd ~/work
https://github.com/daboss7627/build.git
cd build
./compile.sh \
BOARD=orangepizero \
BRANCH=current \
RELEASE=jammy \
BUILD_MINIMAL=yes \
BUILD_DESKTOP=yes \
KERNEL_ONLY=no \
KERNEL_CONFIGURE=no \
CARD_DEVICE="/dev/sdb"
}

#echo "Do you want to build a system?"
#read builder
#if [ $builder = 'yes' ]; then

	echo "What system would you like to build?"
	echo "Mobian			skiffOS"
	echo "(Ubuntu) Touch		Arch linux"
	echo "Mobian (mobianKernel)	portapack"
	echo "Linux Kernel (Kernel)	Armbian"
        echo "portapack-(carnage)			 "

	read systemz
	case $systemz 
	in

	armbian) armbian ;;

	mobian) mobian ;;

	ubuntu) ubuntu ;;

	mobianKernel) mobianKernel ;;

	skiffos) skiffos ;;

	arch) arch ;;

	portapack) mayhem ;;
	
	carnage) carnage ;; #automatic merge mayhem and carnage

	kernel) kernel ;;

	*) exit ;;

	esac

	#else
	#elif [ $builder = 'no' ]; then
	#echo "ok"
	#exit 0
#fi

yes() {
echo "yes"
}


no() {
echo "no"
}

	echo "Upload GIT Files?"
	echo "Yes/No"

	read gitz
	case $gitz 
	in

	yes) yes ;;

	no) no ;;

	*) exit ;;

	esac
