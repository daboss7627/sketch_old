#!/bin/bash



	echo "What would you like to do?"
	echo "install (Dev) Enviroment	,,	Build a (System)"
	echo "Install Arduino	,,	Install GCC ARM Toolchains"
	echo "Mobian (Kernel)	portapack"

	read env
	case $env 
	in

	mobian) mobian ;;

	ubuntu) ubuntu ;;

	kernel) kernel ;;

	skiffos) skiffos ;;

	arch) arch ;;

	portapack) mayhem ;;

	*) exit ;;

	esac