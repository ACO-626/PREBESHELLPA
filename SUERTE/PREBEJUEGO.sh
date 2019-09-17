#JUEGO DE ADIVINANZAS CON ASIST

clear
echo "ADVERTENCIA" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "VARIOS TESTIMONIOS INDICAN QUE ESTE JUEGO A CAUSADO MUCHO ESTRES, GENERACIONES POR GENERACIONES" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "SE RECOMIENDA DISCRECIÓN" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "CONSULTE A SU MÉDICO" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "CONSULTA TU MÉDICO, VALE EL DE SIMILARES"
sleep 3
clear
echo "¿CREES QUE ESTÁS LISTO?"
read -p ":  "
clear 
echo "PUES NO LO ESTÁS"
sleep 3
clear 
echo "UNA VEZ AQUÍ DENTRO YA NO HAY ESCAPATORIA" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "BIENVENIIIDOOOO" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "aaaaaaaaaaaaa" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "Loos preeeeeebeeeeeeee"| iconv -f utf-8 -t iso-8859-1|festival --tts
echo "EEEEEEEEESTRAAAAAAAAAAAAAAAAAAAAAAAAAAAAAICS" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "VERSIÓN, LA VENGANZA" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "LOS PREBE STRIKES"
echo "la venganza"
sleep 2
echo "EL JUEGO CONSISTIRÁ EN UNA SERIE DE PREGUNTAS" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "SEIS PARA SER EXACTOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "CUENTAS CON TRES ESTRAICS, CADA ERROR ES UN ESTRAIC" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "EN EL MOMENTO QUE JUNTES TRES ESTRAICS" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "ENTONCES" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "LA PREBESHELL PRO ASIST SE CERRARÁ PARA TI" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "MUCHA SUERTE, LA NECESITARÁS JAAJAAJAAJAAJAAJAAJAA XD DE DE DE DE DE"| iconv -f utf-8 -t iso-8859-1|festival --tts

clear


echo "RECUERDA RESPONDER CON MAYÚSCULAS TODAS LAS PREGUNTAS Y CON ACENTOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "PRIMERA PREGUNTA" | iconv -f utf-8 -t iso-8859-1|festival --tts

RESPUESTA=""

i=0
R=""
A=0

LANZADOR()
{
	               case $(($RANDOM%50)) in
					0) 
						echo "¿EN QUÉ AÑO SE FUNDÓ LA UNAM?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿EN QUÉ AÑO SE FUNDÓ LA UNAM?"
						R="1910"
						;;
					1)
						echo "¿CÓMO SE LLAMA EL PINGÜINO DE LINUX?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CÓMO SE LLAMA EL PINGÜINO DE LINUX?"
						R="TUX"
						;;
					2)
						echo "¿CUAL ES EL COMANDO BÁSICO PARA LISTAR LOS ARCHIVOS DE UN DIRECTORIO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CUAL ES EL COMANDO BÁSICO PARA LISTAR LOS ARCHIVOS DE UN DIRECTORIO (usa minúsculas)?"
						R="ls"
						;;
					3)
						echo "¿CUÁL SISTEMA OPERATIVO TIENE UN DRAGÓN (DILO EN UNA PALABRA)?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CUÁL SISTEMA OPERATIVO TIENE UN DRAGÓN (EN UNA PALABRA)?"
						R="KALI"
						;;
					4)
						echo "¿EL DIRECTORIO DE TRABAJOS DEL ADMINISTRADOR DE EQUIPOS ES, no olvides poner slash?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿EL DIRECTORIO DE TRABAJOS DEL ADMINISTRADOR DE EQUIPOS ES?"
						R="/root"
						;;
					5) 
						echo "¿NOVEL ES UNA DISTRO DE LINUX?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿NOVEL ES UNA DISTRO DE LINUX?" 
						R="NO"
						;;
					6)
						echo "ALGUIEN PRINCIPIANTE TE PIDE QUE LE INSTALES UN SISTEMA CON JE NE U LINUX LE PONES ¿DEBIAN O FEDORA?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "ALGUIEN PRINCIPIANTE TE PIDE QUE LE INSTALES UN SISTEMA CON GNU/LINUX LE PONES ¿DEBIAN O FEDORA?"
						R="DEBIAN"
						;;
					7)
						echo "¿COMO SE LLAMA ESTA PREBESHELL?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿COMO SE LLAMA ESTA PREBESHELL?"
						R="PREBESHELL PRO ASIST"
						;;
					8)
						echo "¿CÓMO SE ESCRIBE BANDA ANCHA EN INGLÉS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CÓMO SE ESCRIBE BANDA ANCHA EN INGLÉS?"
						R="BROADBAND"
						;;
					9)
						echo "¿CÓMO SE ESCRIBE PERIFÉRICO EN INGLÉS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CÓMO SE ESCRIBE PERIFÉRICO EN INGLÉS?"
						R="PERIPHERAL"
						;;
					10) 
						echo "¿LINUX PUEDE SER INFECTADA POR VIRUS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿LINUX PUEDE SER INFECTADA POR VIRUS?" 
						R="SI"
						;;
					11)
						echo "¿MAC PUEDE SER INFECTADA POR VIRUS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿MAC PUEDE SER INFECTADA POR VIRUS?"
						R="SI"
						;;
					12)
						echo "¿YAVA SE DEBE A UNA EMPRESA DE CAFÉ?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿JAVA SE DEBE A UNA EMPRESA DE CAFÉ?"
						R="NO"
						;;
					13)
						echo "¿EL LENGUAJE C ES ORIANTADO A OBJETOS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿EL LENGUAJE C ES ORIANTADO A OBJETOS?"
						R="NO"
						;;
					14)
						echo "¿PAITHON ES COMPILADO O INTERPRETADO" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PYTHO ES COMPILADO O INTERPRETADO?"
						R="INTERPRETADO"
						;;
					15) 
						echo "¿ENSAMBLADOR ES UN LENGUAJE DE PROGRAMACIÓN?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿ENSAMBLADOR ES UN LENGUAJE DE PROGRAMACIÓN?"
						R="SI"
						;;
					16)
						echo "¿SEGUN EXPERTOS, UN HACKER ES UN PIRATA INFORMATICO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿SEGUN EXPERTOS, UN HACKER ES UN PIRATA INFORMATICO?"
						R="NO"
						;;
					17)
						echo "¿QUÉ CONECTAN LOS ROUTER?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿QUÉ CONECTAN LOS ROUTER?"
						R="REDES"
						;;
					18)
						echo "¿QUÉ ES PC?, ESCRIBELO EN INGLÉS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿QUÉ ES PC?, ESCRIBELO EN INGLÉS?" 
						R="PERSONAL COMPUTER"
						;;
					19)
						echo "¿PUEDES USAR DUC DUC GOU EN GUGUL CROOM?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PUEDES USAR DUCK DUCK GO EN GOOGLE CHROME?"
						R="SI"
						;;
					20)
						echo "¿CÓMO SE LLAMA EL DISPOSITIVO ANÁLOGO AL MAUSE EN UNA LAPTOP ?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CÓMO SE LLAMA EL DISPOSITIVO ANÁLOGO AL MAUSE EN UNA LAPTOP ?"
						R="TOUCHPAD"
						;;
					21)
						echo "¿DÓNDE INSTALARÍA UN SISTEMA WINDOWS, EN UNA PARTICIÓN NTFS O EXT4?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿DÓNDE INSTALARÍA UN SISTEMA WINDOWS, EN UNA PARTICIÓN NTFS O EXT4?"
						R="NTFS"
						;;
					22)
						echo "¿LA CONSOLA DE COMANDOS SE CONSIDERA INTERFAZ NO GRÁFICO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿LA CONSOLA DE COMANDOS SE CONSIDERA INTERFAZ NO GRÁFICO?"
						R="SI"
						;;
					23)
						echo "¿PUEDO USAR PAQUETERÍA DE OFFICE EN MAC?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PUEDO USAR PAQUETERÍA DE OFFICE EN LINUX?"
						R="SI"
						;;
					24) 
						echo "¿PUEDO INSTALAR KALI EN UN ANDROID?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PUEDO INSTALAR KALI EN UN ANDROID?"
						R="SI"
						;;
					25)
						echo "¿CÓMO LE DESBLOQUEO LA CONTRASEÑA BIOS A UNA COMPUTADORA SI NO LA SÉ? (DOS PALABRAS, UN VERBO Y UN SUSTANTIVO)" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿CÓMO LE DESBLOQUEO LA CONTRASEÑA BIOS A UNA COMPUTADORA SI NO LA SÉ? (DOS PALABRAS, UN VERBO Y UN SUSTANTIVO)"
						R="QUITAR PILA"
						;;
					26)
						echo "¿QUÉ ES MÁS RECIENTE LILO O GRUB?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿QUÉ ES MÁS RECIENTE LILO O GRUB?" 
						R="GRUB"
						;;
					27)
						echo "¿EXCEL PUEDE SER UNA BASE DE DATOS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿EXCEL PUEDE SER UNA BASE DE DATOS?"
						R="SI"
						;;
					28)
						echo "¿ES EL CONJUNTO DE TÉCNICAS EMPLEADAS PARA AUTOMATIZAR UNA VIVIENDA?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿ES EL CONJUNTO DE TÉCNICAS EMPLEADAS PARA AUTOMATIZAR UNA VIVIENDA?"
						R="DOMÓTICA"
						;;

					29) 
						echo "¿EL CIFRADO CESAR ES CAMBIAR LAS LETRAS DE SU POSICIÓN RESPECTIVA EN EL ALFABETO, CAMBIANDO VOCALES POR CONSONANTES?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿EL CIFRADO CESAR ES CAMBIAR LAS LETRAS DE SU POSICIÓN RESPECTIVA EN EL ALFABETO, CAMBIANDO VOCALES POR CONSONANTES?"
						R="NO"
						;;
					30)
						echo "¿ETHERNET ES UN ESTANDAR?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿ETHERNET ES UN ESTANDAR?"
						R="SI"
						;;
					31)
						echo "EL SUBNETEO ESTÁ RELACIONADO A LAS REDES DE DATOS" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "EL SUBNETEO ESTÁ RELACIONADO A LAS REDES DE DATOS"
						R="SI"
						;;
					32)
						echo "¿BASH ES UN PROGRAMA?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿BASH ES UN PROGRAMA?"
						R="SI"
						;;
					33)
						echo "cd ~ me lleva a la carpeta /home/usuario" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿cd ~ ME LLEVA A LA CARPETA /home/*usuario*"
						R="SI"
						;;
					34) 
						echo "SI SÓLO QUIERO PONER PARTICIONES PRIMARIAS, CUÁNTAS PUEDO TENER?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "SI SÓLO QUIERO PONER PARTICIONES PRIMARIAS, CUÁNTAS PUEDO TENER?"
						R="4"
						;;
					35)
						echo "¿EXISTE SHUUBUNTU?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿EXISTE XUBUNTU?" 
						R="SI"
						;;
					36)
						echo "OPERA ES UN SISTEMA OPERATIVO" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "OPERA ES UN SISTEMA OPERATIVO" 
						R="NO"
						;;
					37)
						
						echo "¿KADE E ES UN ENTORNO DE ESCRITORIO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿KDE ES UN ENTORNO DE ESCRITORIO?" 
						R="SI"
						;;
					38)
						echo "¿UN CAPA DE SUBRED /16 ES EQUIVALENTE EL NÚMERO 255.255.0.0?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿UN CAPA DE SUBRED /16 ES EQUIVALENTE EL NÚMERO 255.255.0.0?"
						R="SI"
						;;
					39) 
						echo "¿PUEDES HACER CONSULTAS A INTERNET DESDE LA CONSOLA DE COMANDOS?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PUEDES HACER CONSULTAS A INTERNET DESDE LA CONSOLA DE COMANDOS?"
						R="SI"
						;;
					40)
						echo "¿QUÉ SERÍA MÁS ADECUADO DECIR TERMINAL O CONSOLA DE COMANDO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿QUÉ SERÍA MÁS ADECUADO DECIR TERMINAL O CONSOLA DE COMANDO?"
						R="CONSOLA DE COMANDO"
						;;
					41)
						echo "¿TENGO UNA COMPUTADORA MUY VIEJA USO UN ENTORNO COMO JINOUM O MEIT?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿TENGO UNA COMPUTADORA MUY VIEJA QUE RECOMIENDAS, UN ENTORNO COMO GNOME O MATE?"
						echo "MATE"
						;;
					42)
						echo "¿El SOFTWARE LIBRE ES SIEMPRE GRATUITO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿El SOFTWARE LIBRE ES SIEMPRE GRATUITO?"
						R="NO"
						;;
					43)
						echo "¿PUEDES NAVEGAR LIBREMENTE POR GOOGLE EN CHINA?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PUEDES NAVEGAR LIBREMENTE POR GOOGLE EN CHINA?" 
						R="NO"
						;;
					44) 
						echo "¿PUEDES HACER UN MODELO TRES DE CON UN CELULAR DE GAMA MEDIA?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿PUEDES HACER UN MODELO 3D CON UN CELULAR DE GAMA MEDIA?"
						R="SI"
						;;
					45)
						echo "¿LA COMPUTACIÓN CUÁNTICA SE EMPIEZA A ESTUDIAR EN EL SIGLO VINTI UNO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿LA COMPUTACIÓN CUÁNTICA SE EMPIEZA A ESTUDIAR EN EL SIGLO XXI?"
						R="NO"
						;;
					46)
						echo "¿SE PUEDEN HACER CONSULTAS A INTERNET DESDE LA CONSOLA DE COMANDO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿SE PUEDEN HACER CONSULTAS A INTERNET DESDE LA CONSOLA DE COMANDO?"
						R="SI"
						;;
					47)
						echo "¿STiV WOZNIAK ES INGENIERO EN ELECTRÓNICA GRADUADO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿STEVE WOZNIAK ES INGENIERO EN ELECTRÓNICA GRADUADO?" 
						R="SI"
						;;
					48)
						echo "¿STiV JOBS FUE UN INGENIERO GRADUADO?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿STEVE JOBS FUE UN INGENIERO GRADUADO?"
						R="NO"
						;;
					49)
						echo "omae GÜA mou shindeiru" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "OMAE WA MOU SHINDERU (RESPONDER CON UNA PALABRA)"
						R="NANI"
						;;
					50)
						echo "¿ES POSIBLE PONER EL SISTEMA OPERATIVO DE aios a una PC?" | iconv -f utf-8 -t iso-8859-1|festival --tts
						echo "¿ES POSIBLE PONER EL SISTEMA OPERATIVO DE iOS a una PC?"
						R="SI"
						;;

				esac
}

until [ "$O" == "BYE" ] || [ "$O" == "APAGATE" ] || [ "$O" == "ADIOS ASIST" ] || [ "$O" == "CIERRATE" ] || [ "$O" == "SALIR" ];

do
    for (( i = 0; i < 7; i++ ))
     do
     	if [ "$i" = "6" ]
     	then
     		i="7"
     		echo ""

     		echo "FIN AQUI INICIARÍA OTRA FUNCIÓN"
     	else
     		echo ""
     	fi
    	
    	LANZADOR
    	read -p "RESPUESTA:   " RESPUESTA
		if [ "$RESPUESTA" = "$R" ]
		    then
		       echo "CORRECTO"   
		            case $(($RANDOM%6)) in
					0) 
						echo "CORRECTO" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					1)
						echo "LE ATINASTE" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					2)
						echo "MAGO" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					4)
						echo "BUEN TRABAJO CRAC" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
					5)
						echo "PERFECTO" | iconv -f utf-8 -t iso-8859-1|festival --tts
						;;
				    esac
	        else

		    	A=$(( A + 1 ))
		    	echo "STRIKE $A"
		 
		    	if [ "$A" = "3" ]
		    	    then
		    	    	echo "HASTA LA VISTA"
		    	    	sleep 2
		    	    	echo "oOmae GUUUA, moUu shindeiru" | iconv -f utf-8 -t iso-8859-1|festival --tts
		    	    	echo "NAAANIII" | iconv -f utf-8 -t iso-8859-1|festival --tts
		    	    	i="7"
		    	    	O="SALIR"
                    else    
                    	    case $(($RANDOM%6)) in
								0) 
									echo "HAY QUE ESTUDIAR" | iconv -f utf-8 -t iso-8859-1|festival --tts
									;;
								1)
									echo "NO LE ATINASTE" | iconv -f utf-8 -t iso-8859-1|festival --tts
									;;
								2)
									echo "STRIKE" | iconv -f utf-8 -t iso-8859-1|festival --tts
									;;
								4)
									echo "STRIKE" | iconv -f utf-8 -t iso-8859-1|festival --tts
									;;
								5)
									echo "NEGATIVO" | iconv -f utf-8 -t iso-8859-1|festival --tts
									;;
				     	
				     		esac
		            fi

		        fi	
		
    
    done

done




 