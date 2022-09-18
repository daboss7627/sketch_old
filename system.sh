#!/bin/bash


mobian() {
cd ~/work
git clone https://gitlab.com/mobian1/mobian-recipes.git
cd mobian-recipes
git pull
echo "pinephone or pinephone (pro)"
read pine
if [ $pine = 'pinephone' ]; then
    xfce4-terminal -e 'bash -c "cd ~/work/mobian-recipes; sudo ./build.sh -d -t pinephone -x sid -o; bash"' -T "PinePhone" &
else
xfce4-terminal -e 'bash -c "cd ~/work/mobian-recipes; sudo ./build.sh -d -t pinephonepro -x sid -o; bash"' -T "PinePhone Pro" &
fi
}


ubuntu() {
cd ~/work
git clone https://gitlab.com/ubports/core/rootfs-builder-debos.git
cd rootfs-builder-debos
git pull
sudo debos-docker -m 5G pinephone.yaml
}


kernel() {
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
cd skiffos
git pull
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


#echo "Do you want to build a system?"
#read builder
#if [ $builder = 'yes' ]; then

	echo "What system would you like to build?"
	echo "Mobian		skiffOS"
	echo "(Ubuntu) Touch	Arch linux"
	echo "Mobian (Kernel)	portapack"

	read systemz
	case $systemz 
	in

	mobian) mobian ;;

	ubuntu) ubuntu ;;

	kernel) kernel ;;

	skiffos) skiff ;;

	arch) arch ;;

	portapack) mayhem ;;

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
