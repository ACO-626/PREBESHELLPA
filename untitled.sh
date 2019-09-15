#!/bin/bash


echo "A ENTRADO AL SISTEMA DE REGISTRO, SE REQUIERE UNA AUTENTICACIÓN " | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "SISTEMA DE REGISTRO"
echo ""
echo "Sus datos son importantes, debido a la protección la PREBESHELL PRO ASIST requiere de una autenticación"
echo "Esto no requerirá de mucho tienpo"
echo "Si desea salir teclee SALIR y teclee ENTER"
echo ""

USUARIO=""
USUARIOR="1"

until [ "$O" == "BYE" ] || [ "$O" == "APAGATE" ] || [ "$O" == "ADIOS ASIST" ] || [ "$O" == "CIERRATE" ] || [ "$O" == "SALIR" ];

do

    read -p "USUARIO: " USUARIO
    su - $USUARIO -c "whoami" #EL COMANDO MAESTRO MAS PERRO DE DEDUCIR LADRÓN DE HORAS Y HORAS
    echo "$USUARIOR"
    read -p "nada"
    if [ "$USUARIO" = "$USUARIOR" ]
    then
    	echo "LEGAL"
    else
    	echo "WERO"
    	echo "$USUARIOR"

    fi

done

