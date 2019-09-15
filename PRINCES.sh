#!/bin/bash
clear
echo "LE RECUERDO QUE ESCRIBIENDO ASIST USTED PUEDE VER LA LISTA DE COMANDOS" | iconv -f utf-8 -t iso-8859-1|festival --tts

O="0"
N="1"
CONT="1"

until [ "$O" == "BYE" ] || [ "$O" == "APAGATE" ] || [ "$O" == "ADIOS ASIST" ] || [ "$O" == "CIERRATE" ] || [ "$O" == "SALIR" ];

do

    case $O in
 
        "ASIST")
			
			clear
			echo "MOSTRANDO INFORMACIÓN DE LOS COMANDOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
			echo "+COMANDOS DE AYUDA"
			echo ""
			echo "QUE ES < comando >"
			echo "     Cunado usted teclea QUE ES seguido del comando que necesita recordar lo que hacía "
			echo "     usted pordrá escuchar a ASIST decirle una breve descripción"
			echo ""
			echo "ASIST"
			echo ""
			echo "     Se tarata de la lista más detallada de los comandos PREBESHELL PRO ASIST"
        	echo ""
        	echo "FECHA"
        	echo "     Se trata de una pequeña ventana que nos muestra el calendario con la fecha de hoy"
        	echo ""
        	echo "+COMANDOS DE CONTROL"
        	echo ""
        	echo "COMANDOS DE ESCAPE"
        	echo ""
        	echo "Los comandos de escape son aquellos que nos permiten salir de la PREBESHELL PRO ASIST"
        	echo "Estos son: <BYE>  <APAGATE>  <ADIOS ASIST> <CIERRATE> <SALIR>"
        	echo ""
        	echo "ENTRETENIMIENTO"
        	echo ""
        	echo "MUSICA"
        	echo "     comando que permite elegir una canción de tu ordenador para su reproducción en la PREBESHELL PRO ASIST"
			echo ""
			echo "JUEGOS"
			echo ""
			echo "Desplegará una pequela lista de juegos disponibles"
			read -p "Teclea un ENTER para poder continuar con la pag 2"
			clear 
			echo "CONTACTO"
			echo "DESARROLLADORES"
			echo "     muestra los creditos e información de contacto"
            read -p "Teclea un ENTER para salir"
            clear

            ;;

        "HOLA")
       
			echo "HOLA, ME DA GUSTO QUE ESTÉS AQUÍ" | iconv -f utf-8 -t iso-8859-1|festival --tts
            clear
            ;;

        "¿CÓMO ESTÁS?")
			
			echo "EN BINARIO, ¿DE QUÉ OTRO MODO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
            clear
            ;;
         "¿CÓMO TE LLAMAS?")
		if [ "$N" = "1" ]
		then
			echo "¿Cómo quieres que me llame?" | iconv -f utf-8 -t iso-8859-1|festival --tts
			NOMBREA=""
			read -p "¿CÓMO QUIERES QUE ME LLAME?  " NOMBREA
			N="0"
			clear
		else
			echo "MI NOMBRE ES $NOMBREA" | iconv -f utf-8 -t iso-8859-1|festival --tts
			clear
		fi
			;;
        "¿QUIÉN TE CREÓ?") 
        	echo "SOY UN PRODUCTO DE LAS MENTES RETORCIDAS, DE UNA CHICA LLAMADA ALBANIA Y ALEJANDRO, MEJOR CONOCIDO COMO CISNEROS" | iconv -f utf-8 -t iso-8859-1|festival --tts
        	clear
        ;;
        "DESARROLLADORES")
			echo "ELLOS ME ENSEÑARON TODO LO QUE SÉ" | iconv -f utf-8 -t iso-8859-1|festival --tts
			echo "AYALA TREJO ALBANYA YENDALLI     # 11"
			echo "CISNEROS OCAMPO ALEJANDRO - [ACO] # 1 "
			echo "TEL. 55 6428 2886 o 55 19 12 85"
			echo "em@il: ocampoalejandro.oc@gmail.com  &&  albanyaestrellitapurpura@gmail.com"
			echo ""
			read -p "PRESIONA ENTER PARA CONTINUAR"
             clear
             ;;
        "FECHA")
			echo "PUEDES REVISAR EL CALENDARIO QUE SE MUESTRA EN LA VENTANA" | iconv -f utf-8 -t iso-8859-1|festival --tts
			echo "La fecha de hoy es" | zenity --calendar
			clear
			;;
		"TONTO")
			echo "ACTUALIZANDO TU NOMBRE A TONTO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		    clear 
		    ;;
		"PENDEJO")
			echo "ACTUALIZANDO TU NOMBRE A DON PENDEJO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		    clear 
		    ;;
		"QUE ES ASIST")
			echo "ES EL COMANDO PARA PODER VER LA LISTA DE COMANDOS PRINCIPALES" | iconv -f utf-8 -t iso-8859-1|festival --tts
			clear
			;;
        "QUE ES FECHA")
			echo "ABRE UNA FENTANA PARA QUE PUEDAS VER EL CALENDARIO" | iconv -f utf-8 -t iso-8859-1|festival --tts
			clear
			;;
        "QUE ES SALIR")
			echo "NO LO SÉ, TU DIME" | iconv -f utf-8 -t iso-8859-1|festival --tts
			clear
			;;
		"QUE ES DESARROLLADORES")
			echo "DESPLIEGA INFORMACIÓN DE QUIENES ME CREARON" | iconv -f utf-8 -t iso-8859-1|festival --tts
			clear
			;;
        "QUE ES JUEGO")
			echo "SEGÚN LA ENCICLOPEDIA LIBRE WIKIPEDIA Juego es toda actividad que realizan uno o más jugadores, empleando su imaginación o herramientas para crear una situación con un número determinado de reglas, con el fin de proporcionar entretenimiento y diversión, ¿VA?" | iconv -f utf-8 -t iso-8859-1|festival --tts
        	clear
        	;;
        "QUE ES PREBESHEL PRO ASIST")
			echo "ES UN PROYECTO DE GENERACIÓN DE UN ASISTENTE PERSONAL Y UNA INTERFAZ GRÁFICA QUE PERMITE AL USUSARIO REALIZAR UNA SERIE DE TAREA BÁSICAS QUE SE PROYECTARÁN CON EL TIEMPO A FUNCIONES MÁS COMPLEJAS" | iconv -f utf-8 -t iso-8859-1|festival --tts
        	clear
        	 ;;
        "QUE ES PREBESHELL")
		  echo "NO LO SÉ, TU DIME" | iconv -f utf-8 -t iso-8859-1|festival --tts
		  clear
		;;
		"QUE ES MÚSICA")
			echo "COMANDO PARA QUE PODAMOS ESCUCHAR MÚSICA EN LA PREBESHELL PRO ASIST" | iconv -f utf-8 -t iso-8859-1|festival --tts
            clear
        ;;

        "QUE ES PROTECO")
		 echo "En un lenguaje literal es PROGRAMA DE TECNOLOGÍA EN CÓMPUTO" | iconv -f utf-8 -t iso-8859-1|festival --tts
		 echo "Pero recuerdo que para los desarrolladores era algo muy importante" | iconv -f utf-8 -t iso-8859-1|festival --tts
		clear
			;;
		"PROTECO")
		echo "UNA META"
		sleep 5        
		clear
		;;
         

        *)

                if [ "$CONT" = "0" ]
                then
                case $(($RANDOM%6)) in
					0) 
						echo "RECUERDA QUE COMANDOS SIMEPRE CON MAYÚSCULAS" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					1)
						echo "SINTAXIS ERROR" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					2)
						echo "¿QUÉ QUIERES DECIR?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					4)
						echo "PUEDES TECLEAR ASIST PARA VER EL MANUAL" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					5)
						echo "NO LOGRO ENTENDER" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
				esac
				else
					CONT="0"
					clear
            	fi
            	clear
            ;;

    esac

    read O

done