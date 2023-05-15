#!/bin/bash
#
#-------------------------------------------------------#
#Script Name: info_system                                  #
#Script Description: Script para automatizar o S.O      #
#Versão: 1.0 Data:07/10/2022                            #
#Desenvolvedor:Edjanio e-mail:edjaniosilva.al@gmail.com #
#Licenca: GPL3                                          #
#Uso:                                                   #
#$ sudo ./info_sec.sh                                   #
#-------------------------------------------------------#

clear
while true; do

echo "#####################################################"



          echo -e "\033[01;32mBem Vindo ao Info System."
          echo -e "Escolha uma opção:

         1 - Listar usuários do sistema
         2 - Versão do sistema operacional.
         3 - Verificar espaço em disco
         4 - Listar portas abertas
         5 - Listar serviços
         6 - Usuários logados
         7 - Logins inválido no sistema
         8 - Tempo uso do sistema
         9 - Memória disponivel
         0 - Sair\033[01;32m"

read OPCAO

case $OPCAO in
         1)
             echo "Listando usuários do sistema aguarde..."
             sudo awk -F: '{print $ 1}' /etc/passwd cut -d: -f1 /etc/passwd | tee user.log
             sleep 5
             clear
             ;;
         2)
             echo "Versão atual." 
             cat /etc/issue.net && uname -a
             sleep 5
             clear
             ;;
         3)
             echo "Espaço em disco "
             df -hT | tee disk.log
             sleep 5
             clear
             ;;
         4)
             echo "Portas abertas"
             ss -lntu  | tee open_ports.log
             sleep 5
             clear
             ;;
         5)
             echo "Listando todos os serviços"
             sudo systemctl list-unit-files --type service --all | tee services.log
             sleep 5
             clear
             ;;
          6) 
             echo "Usuários logados..."
             w |tee usuarios_logados.log
             sleep 5
             clear
             ;;
          7)
             echo "Ultimas tentativas de login"
             sudo lastb | tee tentativas_de_login.log
             sleep 5
             clear
             ;;
          8)
             echo "Uptime..."
             uptime
             sleep 5
             clear
             ;;
          9)
             echo "Memória.."
             free -hgt
             sleep 5
             clear
             ;;
          0)
             echo -e "\033[01;33mSaindo...\033[01;33m"
             sleep 2
             clear
             exit 0
             ;;

         *)
             echo "Opção invalida!! Digite a opção correta!!!"
             sleep 5
             clear
             ;;
esac
done
