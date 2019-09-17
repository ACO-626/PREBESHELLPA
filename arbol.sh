#!/bin/bash


recorrer_dir()
{
 dir=$(dir -1)
 for arch in $dir;
 do
# comprobamos que la cadena no este vacía
  if [ -n $arch ]; then
   if [ -d "$arch" ]; then

# llamamos recursivamente a la función recorrer_directorio
    echo $arch
    cd $arch

            recorrer_dir ./

    cd ..
      else

    ext=${arch%.*##*.}
#   path_and_name=${arch%.*}
#    echo "______"$path_and_name.$ext
    echo "|____" $ext
   fi;
  fi;
 done;
}

cd $ruta
recorrer_dir ./


