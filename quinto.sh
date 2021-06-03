#!/bin/bash
#
# quinto.sh - Nosso Quinto Programa em Shell - Condicional case
# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa ira capturar o primeiro passado depois do programa ira armezanar na variavel $1, caso o valor seja start, executar o trecho do comando start. 
#
# Exemplo de exeção
#
# $ ./quinto.sh start
# Bem vindo ao programa stronger.
# iniciando o programa.
#...
#....
#.....
# Programa iniciado com Sucesso
#
# Historico de Versoes
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL

PID="/tmp/stronger"
echo
echo "Bem vindo ao programa stronger"
echo
case $1 in
	start)
	        echo
                echo "iniciando o programa stronger"
  	        echo "......"
                sleep 2s
                echo "..........."
                sleep 2s
                echo ".............."
                sleep 2s	
	        echo "...................."
		touch /tmp/stronger.pid
	        echo "Programa Stronger Parado com sucesso"
	        ;;       
         stop)
                echo
		echo "Parando o programa strong"
		echo "....."
		sleep 2s
                echo "......."
		sleep 2s
		echo "..........."
		rm /tmp/stronger.pid
                echo "Programa Stronger parado com sucesso"
                ;;
	status)
		echo
