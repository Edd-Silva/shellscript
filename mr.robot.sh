#!/bin/bash
#
# - Mr. Robot

# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva 
# Mantenedor: edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa é um robo interativo, estilo alexia, chamado Mr. Robot criado para invadir determinadas url, buscar vulnerabilidade etc. 
# 
# Exemplo de execução:
#
# $ ./mr.robot.sh 
# 
# Historico de Versoes
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL3
#
source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOlá eu sou o Mr. Robot. Fui criado para atacar!!! Não sou seu amigo!!! mas diga:\nO que você quer que eu faça?\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga agora!" ACTION
        echo -e "\n"

	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
			ping -c 3 -4 "${sites[$DADO]}"
	       ;;
                *"nmap"*|*"mapear"*|*"portas abertas"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADO]}"
	       ;;
                *"conecte"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM & 4 ))"
			ssh -l root "${openssh[$DADO]}"
	       ;;
                
	       
 	esac
done
