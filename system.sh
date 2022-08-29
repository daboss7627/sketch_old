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
./build.sh -d
}


ubuntu() {
cd ~/work
git clone https://gitlab.com/ubports/core/rootfs-builder-debos.git
cd rootfs-builder-debos
debos-docker -m 5G pinephone.yaml
}


kernel() {


}


skiffos() {

}


arch() {


}