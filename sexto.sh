#!/bin/bash
#
# sexto.sh - Nosso Sexto Programa em Shell - Laços de repetiçoes while
# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa ira verificar o valor da variavel numero emquanto o valor da # variavel for menor que 10 ele ira mostra a mensagem na tela que o valor é m# enor que 10 e mostrarar o valor da variavel, quando ovalor atingir 10 o pro# gram# a sera finalizado.
# 
# Exemplo de exeção:
#
# $ ./sexto.sh 
#
# Historico de Versoes
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem vindo ao Programa de NUMEROS" 
echo

while [ $NUMERO -lt "10" ]; do
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
        let NUMERO=$NUMERO+
done

exit 0
