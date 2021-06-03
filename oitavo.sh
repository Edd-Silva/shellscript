#!/bin/bash
#
# oitavo.sh - Nosso Oitavo Programa em Shell - Laços de repetiçoes until

# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa ira verificar o valor da variavel numero emquanto o valor da # variavel for menor que 10 ele ira mostra a mensagem na tela que o valor é m# enor# que 10 e mostrarar o valor da variavel, quando ovalor atingir 10 o pro# gram# a sera finalizado.
# 
# Exemplo de exeção:
#
# $ ./oitavo.sh 
# O arquivo /etc/xyz.con foi encontrado no diretório /etc.
# Historico de Versoes
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

ARQUIVOS="/etc/*.conf"

echo
echo "Bem vindo ao Programa de listagem de Confs" 
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivos $i foi encontrado no diretório /etc/."
done

exit 0
