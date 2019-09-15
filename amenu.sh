#!/bin/bash

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
echo "$CLABECOMP"
echo "BIENVENIDO AL SISTEMA DE PREBESHELL PRO ASIST"
echo ""
echo "RECUERDA QUE:"
echo "SI TIENES ALGUNA DUDA CON RESPECTO A COMANDOS TECLEA ASIST"
read -p "PRESIONA ENTER PARA CONTINUAR"
break
break
else
echo "CLAVE ERRONEA"
echo ""

read -p "PRESIONE ENTER PARA CONTINUAR"
clear
fi
}

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
