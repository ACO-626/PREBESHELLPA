#!/bin/bash

clear
USUARIO=""
USUARIOR="1"
VAR="0"

echo "A ENTRADO AL SISTEMA DE REGISTRO, SE REQUIERE AUTENTICACIÓN" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "SISTEMA DE REGISTRO"
echo ""
echo "Sus datos son importantes, debido a la protección la PREBESHELL PRO ASIST requiere de una autenticación"
echo "Esto no requerirá de mucho tienpo"
echo "VERIFICACIÓN"
echo ""
echo "La PREBESHELL PRO ASIST se diseñó a prueba de robos, por lo que necesito verificarte " | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "Tu usuario en esta seción es $(whoami) "
echo "Verificando la contraseña de $(whoami) "
sudo -v
sudo echo "¿En serio usas la misma contraseña para todo?, en fin " | iconv -f utf-8 -t iso-8859-1|festival --tts
clear
echo "Ahora debes ingresar a la plataforma con cualquier usuario y contraseña de sesión, no importa que no sea esta sesión"
echo "Siempre y cuando exista en el sistema opertativo actual"
echo "MAS DIVERTIDAS VERIFICACIONES" | iconv -f utf-8 -t iso-8859-1|festival --tts
sudo -v
echo ""

UP=$(whoami)
DIRECE="/home/$(whoami)/Descargas"
DIRECI="/home/$(whoami)/Downloads"
sudo -v

until [ "$O" == "BYE" ] || [ "$O" == "APAGATE" ] || [ "$O" == "ADIOS ASIST" ] || [ "$O" == "CIERRATE" ] || [ "$O" == "SALIR" ];

do
    
	clear
    	
        #Para hacer un almacenamiento pata 
    	if [ -d "$DIRECE" ]
    	then
    		sudo -v
    		mkdir "$DIRECE/.PREBESHELL"
    		cd "$DIRECE/.PREBESHELL"
    		touch sombra.txt
    		sudo chmod 755 sombra.txt
    		clear
    		read -p "USUARIO: " USUARIO
    		VAR="$(grep -c $USUARIO sombra.txt)"
    		echo "$VAR"
    		su - $USUARIO -c whoami >> sombra.txt
    		
    		if [ "$(grep -c $USUARIO sombra.txt)" != "1" ]
    		then
    			if [ "$VAR" = "0" ]
    				then
    				echo "" 
    			else
    				sed '$d' sombra.txt
    				sed '$d' sombra.txt
    				USUARIOR="$USUARIO" 
    				fi 
    		else
    			if [ "$VAR" = "1" ]
    			 then
    			 echo ""
    			 else
    			 USUARIOR="$USUARIO" 
    			fi
    		fi 

    	else
    		sudo -v
    		mkdir "$DIRECI/.PREBESHELL"
    		cd "$DIRECI/.PREBESHELL"
    		touch sombra.txt
    		chmod 755 sombra.txt
    		echo "$PWD"
    		clear
    		read -p "USUARIO: " USUARIO
    		VAR="$(grep -c $USUARIO sombra.txt)"
    		su - $USUARIO -c whoami >> sombra.txt
    		if [ "$(grep -c $USUARIO sombra.txt)" != "1" ]
    		then
    				if [ "$VAR" = "0" ]
    				then
    				echo ""
    				else
    				sed '$d' sombra.txt
    				USUARIOR="$USUARIO"
    				fi 
    		else
    			if [ "$VAR" = "1"]
    			then
    			echo ""
    			else
    				USUARIOR="$USUARIO" 
    			fi

    		fi
    		
    	fi 

    if [ "$USUARIO" = "$USUARIOR" ]
    then
    	echo "LEGAL"
    	read -p "Buen trabajo"
    else
    	echo "AL PARECER TE EQUIVOCASTE EN ALGO" | iconv -f utf-8 -t iso-8859-1|festival --tts
    	echo "VUELVE A INTENTAR"
    	read -p "PRESIONA ENTER PARA CONTINUAR"

    fi

done

