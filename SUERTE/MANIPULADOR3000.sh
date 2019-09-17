#!/bin/bash

#PARA NAVEGAR POR NUESTRA PREBESHELL

O=""
clear

#echo "AH INGRESADO AL MODO MANIPULADOR, RECUERDE QUE USANDO ASIT puedes ver una lista de los posibles comandos" | iconv -f utf-8 -t iso-8859-1|festival --tts
until [ "$O" == "BYE" ] || [ "$O" == "APAGATE" ] || [ "$O" == "ADIOS ASIST" ] || [ "$O" == "CIERRATE" ] || [ "$O" == "SALIR" ];
do
RUTA=""
RUTAC=""
NOMBRES=""

    case $O in

        "VER")
			read -p "DIRECCIÓN A VER: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "Visualizando contenido" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA"
			    ls 
			    cd "$RUTAC"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
        "VERX2")
			read -p "DIRECCIÓN A VER: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "Visualizando contenido y permisos" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA"
			    ls -l 
			    cd "$RUTAC"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
        "VERX3")
			read -p "DIRECCIÓN A VER: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "Visualizando profundamente" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA"
			    ls -la 
			    cd "$RUTAC"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
          "CARPETA")
			read -p "NOMBRE DE CARPETA: " NOMBRES
			read -p "DIRECCIÓN DONDE QUIERES PONERLA: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "CREANDO CARPETA" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA"
			    mkdir "$NOMBRES" 
			    cd "$RUTAC"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
          "CHIVO")
			
			read -p "NOMBRE DEL ARCHIVO PUEDE INCLUIR EXTENSIÓN: " NOMBRES
			read -p "DIRECCIÓN DONDE QUIERES PONERLO: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "CREANDO A $NOMBRE" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA"
			    touch "$NOMBRES" 
			    cd "$RUTAC"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
        "IR")
			read -p "DIRECCIÓN: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "MOVIENDONOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA" 
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
         "REGRESA")
				

			    echo "REGRESANDO" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTAC" 
       
            ;;
         "SAL")

			RUTAC=$PWD
			    
			    cd .. 
            ;;
          "STACARPETA")
			read -p "DIRECCIÓN DONDE SUPONES QUE ESTÁ INCLUYA EL NOMBRE DE LA CARPETA: " RUTA
			if [ -d "$RUTA" ]
			then
			    echo "EXISTE" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
            else
            	echo "NO EXISTE EN LA RUTA ESCRITA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
           "STACHIVO")
			read -p "DIRECCIÓN DONDE SUPONES QUE ESTÁ CON NOMBRE: " RUTA
			if [ -f "$RUTA" ]
			then
			    echo "EXISTE" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
            else
            	echo "NO EXISTE AL PARECER" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi
            ;;
           "STACHIVOX2")
		    read -p "NOMBRE DE ARCHIVO: " NOMBRES
		    read -p "DIRECCIÓN DE ANÁLISIS: " RUTA
			RUTAC=$PWD
			if [ -d "$RUTA" ]
			then
			    echo "ANALIZANDO ARCHIVO POR ARCHIVO" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA" 
            	
            	for arch in $(ls -F 
				$dir)
				do

				dir=nom_arch
        		if [ "$arch" = "$NOMBRES" ]
        			then
               		 echo "Si existe"
                	 echo "LE INFORMO QUE EL ARCHIVO $NOMBRES EXISTE EN LA CARPETA MENCIANADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
       				 else 
                	 echo "No existe coincidencia"
       			 fi
				done
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi

            ;;

         "ASIST")

			echo "HAS ENTRADO AL MODO DE ASISTENCIA EN COMANDO, TE PRESENTO LA LISTA ACTUALIZADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
			clear
			echo ""
			echo "ASIST"
			echo "Es una lista de comandos que puedes ver en el modo manipulador"
			echo ""
			echo "CARPETA"
			echo "Es un comando que permite crear carpetas en la ubicación que requeira, funciona con rutas absolutas"
			echo ""
			echo "CHIVO"
			echo "Crea un archivo en la ruta que deseas"
			echo ""
			echo "IR"
			echo "Es un comando que permite transportarte entre directorios"
			echo ""
			echo "REGRESA"
			echo "Es un comando que intenta regresarte a la ubicación anterior después de un IR"
			echo "este comando no funciona consecutivamente ni en todos los casos"
			echo ""
			echo "SAL"
			echo "Este comando te lleva al directorio anterior a tu posición con respecta al sistema de archivos"
			echo ""
			echo "STACARPETA"
			echo "Es un verificador de la existencia de directorios"
			echo ""
			echo "STACHIVO"
			echo "Es un verificador de existencia de archivos"
			echo ""
			echo "STACHIVOX2"
			echo "Es un analizador de existencia de archiivos en donde se verifican coincidencias archivo por aarchivo dentro de un directorio"     
            echo ""
           	
           	read -p "PRESIONA ENTER PARA VER LA SIGUIENTE PÁGINA "
            clear
            echo "VER"
            echo "sirve para ver el contenido de cualquier directorio que exista"
            echo ""
            echo "VERX2"
            echo "Funciona como un mirador de contenido del directorio especificado analizando los permisos de los archivos contenidos"
            echo ""
            echo "VERX3"
            echo "Es un  mirador d econtenido del directorio especificado que analiza los permisos y muestra los archivos ocultos"
            echo ""
            read -p "PRESIONA ENTER PARA CONTINUAR "
            clear
            ;;
        *)

            echo "PUEDE VER LA LISTA DE COMANDOS DEL MANIPULADOR TECLANDO ASIST "
            echo ""

            ;;

    esac

    printf "PPA USUSARIO EN $PWD ->" 
    read O

done
