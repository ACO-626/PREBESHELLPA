#!/bin/bash
sudo apt install mpg123
 echo "DONDE ENCONTRAR SU MÚSICA" | iconv -f utf-8 -t iso-8859-1|festival --tts

			read -p "DONDE TIENES TU MÚSICA " RUTA
			if [ -d "$RUTA" ]
			then
			    echo "Visualizando contenido" | iconv -f utf-8 -t iso-8859-1|festival --tts
			    
			    cd "$RUTA"
            else
            	echo "SU RUTA NO ES APROPIADA" | iconv -f utf-8 -t iso-8859-1|festival --tts
            fi


clear
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'


echo -e "\e[34m------------------------------------------------------INSTRUCCIONES--------------------------------------------------------------------------------------\e[0m"
echo -e "\e[34mPresiona 'p'para pausar                                                        Presiona 's' para detener\e[0m "
echo -e "\e[34mPresiona 'f'para saltar a la sig. cancion                                      Presiona 'b' para retroceder una cancion\e[0m "

echo -e '\t'
echo -e "\e[34m----------------------------------------------------------------------------------------------------------------------------------------------------------------\e[0m"
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'
echo -e '\t'


echo  -e "\e[1;31m                                                 ------------------\e[0m"
echo -e  "\e[31m                                                     Prebeplayer\e[0m"
echo  -e "\e[1;31m                                                 ------------------\e[0m"

echo "Elige una opcion"
echo -e '\t'

echo -e ------Menú------
echo -e "1.Reproducir cancion "
echo -e "2.Lista de canciones"
echo -e "3.Salida"


 until [ "$O" == "BYE" ] || [ "$O" == "APAGATE" ] || [ "$O" == "ADIOS ASIST" ] || [ "$O" == "CIERRATE" ] || [ "$O" == "SALIR" ];

do
    
read -p "Opción a elegir: " O
#cd $ruta 
case $O in "1")
echo "NOMBRE DE LA CANCIÓN: "
read nom
 mpg123 $nom
 ;;
"2")
echo "La lista de reproducción es: "
for lista in $(ls -C1)
do
echo $lista
done
;;
"3")
echo "Finalizado"
;;
*)
esac
done

