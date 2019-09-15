#!/bin/bash

#Comprobamos que esté o no instalado festival

FESTIVAL=/etc/sgml/pin

if [ -d "$FESTIVAL" ]
	then
	printf "INICIANDO"
	sleep 1
	printf "."
	sleep 1
	printf "."
	sleep 1
	printf ". \n"
	#Esta carpeta sirve como una marca para indicar que no es la primera vez
	sudo mkdir /etc/sgml/pin2
	clear
else
	clear
        echo "CONFIGURANDO"
	echo "ESTO PUEDE TARDAR UNOS MINUTOS"
	printf "PARA INSTALAR EL ASISTENTE INGRESE SU CONTRASEÑA PARA PODER PROSEGUIR\n\n" 
	sudo apt -y  install festival
 	clear	
	echo "CONFIGURANDO"
        echo "ESTO PUEDE TARDAR UNOS MINUTOS\n"
	#Esta carpeta indica que ya se han instalado los paquetes necesarios
	sudo mkdir /etc/sgml/pin
        wget https://raw.githubusercontent.com/guadalinex-archive/hispavoces/master/packages/festvox-palpc16k_1.0-1_all.deb
        sudo dpkg -i festvox-palpc16k_1.0-1_all.deb
	fi	
	
clear

#Aqui se verifica si es la primera vez que entras
VIEJO=/etc/sgml/pin2

	if [ -d "$VIEJO" ]
	then
	clear
	echo "EL DISPOSITIVO ESTÁ CONFIGURADO"
	echo "NO OLVIDES ENCENDER TUS BOCINAS"
	sleep 4
	clear
	echo "PREBESHELL PRO ASIST"
	sleep 2
	clear
	else
	clear
	echo "PREBESHELL PRO ASIST"
	sleep 5
	clear
	echo "NO OLVIDES ACTIVAR EL AUDIO"
	echo "ACCEDIENDO A LOS DATOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
	echo "SOY UN PREBE BIRUS, E VENIDO A JAQUEARTE" | iconv -f utf-8 -t iso-8859-1|festival --tts
	echo "UNO DOS TRES" | iconv -f utf-8 -t iso-8859-1|festival --tts
	echo "REAJUSTANDO SISTEMA DE HUMOR AL CINCUENTA PORCIENTO" | iconv -f utf-8 -t iso-8859-1|festival --tts
	echo "FORMATEANDO DISCOS DUROS" | iconv -f utf-8 -t iso-8859-1|festival --tts
	sleep 2
	echo "LE INFORMO QUE MI INSTALACION FUE UN EXITO " | iconv -f utf-8 -t iso-8859-1|festival --tts
	echo "YO SOY EL ASISTENTE DE LA PREBESHELL" | iconv -f utf-8 -t iso-8859-1|festival --tts
	

fi 

echo "BIENVENIDO USUARIO " | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "¿CON QUIEN TENGO EL GUSTO?" | iconv -f utf-8 -t iso-8859-1|festival --tts

NOMBRE=""

while [ -z "$NOMBRE" ]; do
read -p "INGRESA TU NOMBRE: " NOMBRE
done
case $(($RANDOM%3)) in
	0) 
		echo "$NOMBRE ES UN NOMBRE MUY GRACISO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		;;
	1)
		echo "$NOMBRE ES UN NOMBRE MUY BONITO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		;;
	2)
		echo "ESE NOMBRE ME TRAE BUENOS DATOS ALMACENADOS EN MI MEMORIA O COMO DICEN LOS HUMANOS ME TRAE BUENOS RECUERDOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
		;;
esac
echo "BIENVENIDO $NOMBRE" | iconv -f utf-8 -t iso-8859-1|festival --tts













