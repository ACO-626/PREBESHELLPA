#!/bin/bash
sudo apt-get install mpg123
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

cd /home/aayala/Música/
 
read i
#cd $ruta 
case $i in "1")
echo "Ingrese el nombre de la cancion: "
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

