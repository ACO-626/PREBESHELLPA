#!/bin/bash

echo 'Ingresa el nombre del archivo'
read nom_arch
echo 'Ingresa la ruta del archivo'
read ruta

#cd "/home/aayala/Documentos/hola.txt/"
cd $ruta
#dir="midirectorio"
IFS='
'
#echo 'Variables'
#echo $nom_arch
# pwd
#echo 'fin'
for arch in $(ls -F
$dir)
do
#echo $arch

dir=nom_arch
        if [ $arch == $nom_arch ]
        then
                echo "Si existe"
        else 
                echo "No existe"
        fi
done

