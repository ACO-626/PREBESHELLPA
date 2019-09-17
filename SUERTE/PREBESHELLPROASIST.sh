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
		echo "$NOMBRE ES UN NOMBRE MUY GRACIOSO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		;;
	1)
		echo "$NOMBRE ES UN NOMBRE MUY BONITO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		;;
	2)
		echo "ESE NOMBRE ME TRAE BUENOS DATOS ALMACENADOS EN MI MEMORIA O COMO DICEN LOS HUMANOS ME TRAE BUENOS RECUERDOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
		;;
esac
echo "BIENVENIDO $NOMBRE" | iconv -f utf-8 -t iso-8859-1|festival --tts


#CODIGO DISEÑADO PARA PODER USAR EL MENÚ DE OPCIONES DE LOGIN


MENU()

{

    echo "¿CÓMO DESEA AUTENTICAR EL PRODUCTO?"

    echo

    echo "1) PAGO A DESARROLLADORES"

    echo "2) LA OPCIÓN 1"

    echo "3) LA OPCIÓN 2"

    echo "4) YA CUENTO CON UNA CLAVE"

    echo
}

PAGO()
{
        clear
	echo " PASOS PARA OBTENER UNA CLAVE"
        echo "1) DEPOSITA 50 $ MX AL NÚMERO 5564282886"
        echo "2) ENVIANOS UN MENSAJE POR WHATS-APP CON LA FOTO DEL RECIBO"
        echo "3) ESPERA A QUE NOSOSTROS TE PROPORCIONEMOS UNA CLAVE"
        echo ""
	read -p "PRESIONA ENTER PARA CONTINUAR"
}
#PEQUEÑO PANEL QUE MUESTRA LA OPCIÓN QUE ACABAS DE INGRESAR 

ELECCION()

{

    clear

    echo ""

    echo "------------------------------------"

    echo "INICIANDO OPCIÓN $1"

    echo "------------------------------------"

    echo ""
    
    sleep 1
    
    clear
}

AUTENTICADOR()
{
 CLAVECOMP=""
 read -p "INGRESE LA CLAVE DE PRODUCTO PARA PODER CONTINUAR:  " CLAVECOMP
if [ "$CLAVECOMP" = "2020GEN39" ]
 then
echo "BIENVENIDO AL SISTEMA DE PREBESHELL PRO ASIST"
echo ""

			read -p "CARPETA DONDE SE ENCUENTRA PROPROLOG.sh : " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "CONJUNTANDO" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA" 
			    ./PROPROLOG.sh
			    cd "$RUTAC"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi

sleep 10
else
echo "CLAVE ERRONEA"
echo ""

read -p "PRESIONE ENTER PARA CONTINUAR"
clear
fi
}

#Esta es la función del menú principal

# DEFINIMOS LA VARIABLE EN DONDE SE GUARDA LA OPCIÓN QUE DA MI USUARIO

O="0"

 

# BUCLE PARA PODER BRINDAR UN SERVICIO DE MENÚ

until [ "$O" -eq "39" ];

do

    case $O in

        1)

        ELECCION $O
	PAGO
	clear
        MENU

            ;;

        2)
       
	ELECCION $O
	PAGO 
	clear
        MENU

            ;;

        3)

        ELECCION $0
	PAGO
        clear
        MENU

            ;;

        4)

        ELECCION $O
	clear
	AUTENTICADOR
	clear
	MENU
            ;;

        *)

            # Esta opcion se ejecuta si no es ninguna de las anteriores
            	clear
		MENU

            ;;

    esac

    read O

done