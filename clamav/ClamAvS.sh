#!/bin/bash
#
#-------------------------------------------------------#
#Script Name: ClamAvS                                   #
#Script Description: Script para automatizar o clamav   #
#Versão: 1.0 Data:12/07/2022                            #
#Desenvolvedor:Edjanio e-mail:edjaniosilva.al@gmail.com #
#Licenca: GPL3                                          #
#Uso:                                                   #
#$ sudo ./ClamAvS                                       #
#-------------------------------------------------------#

clear
while true; do

echo "####################################################"

          echo -e "\033[01;32mBenvindo ao ClamAvS!!!"
          echo -e "Escolha uma opção abaixo:
          
          1 - Atualizar o antivirus
          2 - Varrer todo o sistema e checar arquivos infectados
          3 - Varrer um diretório especifico e remover arquivos infectados
          4 - Checar versao 
          0 - Sair do utilitário\033[01;32m"

read OPCAO

case $OPCAO in
         1)
              echo "Atualizando.. o clamav! Aguarde..."
              sleep 1 
              clear
              sudo freshclam #Atualiza a base de dados do clamav.
              ;;
         2)   
              echo "Varrendo todo o sistema de arquivos!!! aguarde..." #Nesta opcao varre todo o sistema porem nao remove os arquivos infectados
              sleep 1                                                  #Gerando um arquivo clamscan.log para consulta.
              sudo clamscan --verbose --infected --recursive  / | tee clamscan.log  
              ;;
         3)  
              echo -e "Digite o caminho absoluto do diretorio"
              read CAMINHO
              echo "Checando diretorio... $CAMINHO Aguarde..."
              sudo clamscan --verbose --infected --remove --recursive $CAMINHO | grep "FOUND" >> /tmp/report_clamscan.txt
              sleep 20
              #clear
              ;;
         4)
              echo "Versao atual...
                                  .
                                  ."
              sudo clamscan -V
              sleep 5
              clear
              ;;
         0)
              echo -e "\033[01;33mSaindo do utilitário...\033[01;33m"
              sleep 2
              clear
              exit 0
              ;;
         *) 
               echo "Opcao invalida!! Digite a opcao correta!!!"
               sleep 3
               clear
               ;;

esac
done
