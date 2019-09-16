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
sudo echo "¿ASI QUE usas la misma contraseña para todo?, en fin " | iconv -f utf-8 -t iso-8859-1|festival --tts
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
    		
    		if [ "$(grep -c $USUARIO sombra.txt)" != "1" ] #Verifica si hay coincidecia en sombras
    		then                                           #Entran cuando no hay nada escrito en sombra o hay más de dos
    			if [ "$VAR" = "0" ]                        #Si entra aquí es porque ya no hay nada escrito
    				then
    				echo "Entro a 0" 
    			else
    				cp sombra.txt sombra.txt.tmp
    				sed '$d' sombra.txt.tmp > sombra.txt
    				rm -f sombra.txt.tmp
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
    				cp sombra.txt sombra.txt.tmp
    				sed '$d' sombra.txt.tmp > sombra.txt
    				rm -f sombra.txt.tmp
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

    fi
echo ""
echo "Si no te quieres ir solo da un enter" | iconv -f utf-8 -t iso-8859-1|festival --tts
read -p "SI QUIERE CERRAR TECLEA < SALIR > A CONTINUACIÓN: " O
done

