#!/bin/bash



echo "Do you want to build a system?"
read builder
echo "What system would you like to build?"
echo "Mobian"
echo "skiffOS"
echo "Ubuntu Touch"
echo "Arch linux"
read systemz

if [ $builder = 'yes' ]; then           
        if [ $systemz = 'mobian' ]; then
            sudo dpkg --add-architecture i386
            sudo dpkg --add-architecture armhf
            sudo dpkg --add-architecture arm64
            #sudo dpkg --remove-architecture armhf
            #sudo dpkg --remove-architecture armel
            #sudo dpkg --remove-architecture arm64
            else
        	if [ $systemz = 'ubuntu touch' ]; then
            		sudo dpkg --add-architecture armhf
            		sudo dpkg --add-architecture amd64
            		sudo dpkg --add-architecture i386
	elif [ $builder = 'no' ]; then
    ####remove all architecture except machines
    #rm != $MACHINE_TYPE
	    sudo dpkg --remove-architecture i386
            sudo dpkg --remove-architecture armhf
            #sudo dpkg --remove-architecture armel
            #sudo dpkg --remove-architecture arm64
	    #sudo dpkg --remove-architecture aarch64
	else
		exit 0
   fi
  fi
fi