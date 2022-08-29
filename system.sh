#!/bin/bash



echo "Do you want to build a system?"
read builder
echo "What system would you like to build?"
echo "Mobian		skiffOS"
echo "Ubuntu Touch	Arch linux"
echo "Mobian (Kernel)"
read systemz

if [ $builder = 'yes' ]; then           
        if [ $systemz = 'mobian' ]; then
              mobian
            else
        	if [ $systemz = 'ubuntu touch' ]; then
			ubuntu
		else
			if [ $systemz = 'kernel' ]; then
				kernel
			else		
				if [ $systemz = 'skiffos' ]; then
					skiff
				else
					if [ $systemz = 'arch' ]; then
						arch
	elif [ $builder = 'no' ]; then
		exit 0
   fi
  fi
fi


mobian() {
cd ~/work
git clone https://gitlab.com/mobian1/mobian-recipes.git
cd mobian-recipes
./build.sh -d -t pinephone -x sid -o
./build.sh -d -t pinephonepro -x sid -o
}


ubuntu() {
cd ~/work
git clone https://gitlab.com/ubports/core/rootfs-builder-debos.git
cd rootfs-builder-debos
debos-docker -m 5G pinephone.yaml
}


kernel() {
cd ~/work
git clone -b wip/pp-keyboard https://github.com/smaeul/linux.git
cd linux
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j4 bindeb-pkg KERNELRELEASE="5.9-sunxi64-test" KDEB_PKGVERSION="1"
}


skiffos() {

}


arch() {


}