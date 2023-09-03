#!/bin/bash

echo "##### CONFIGURADO I3-WM EM COMPUTADOR LINUX FORASTEIRO #####";

if [[ -f /bin/i3 ]]; then
	 echo '...[ OK ]	i3wm instalado';
else
	 echo '...[ FALHOU ]	i3wm não instalado. ABORTADO';
	 exit;
fi

if [[ -d ~/.config/i3 ]]; then
	echo 'copiando arquivo de configuração.';
	cp ./config ~/.config/i3/config;
else
	mkdir ~/config/i3;
	cp ./config ~/.config/i3/config;
fi
	
if [[ $? == 0 ]]; then
	echo config ...[ OK ];
	read -p 'deseja iniciar o ambiente gráfico (sim|não)>' OPTION;
	case OPTION in
		'sim')
			if [[ $DISPLAY == "" ]]; then
				echo "startx ...[ OK ]"
				startx /usr/bin/i3;
			else
				echo "startx ...[ FALHOU ]"
				echo "tás em uma sessão gráfica! trouxa !";
				echo "vá ao terminal virtual para iniciar";
			fi
			;;
		'não')
			echo cancelado.;
			;;
	esac
elif [[ $? != 0 ]]; then
	echo config ...[ FALHOU ];
	exit;
fi

