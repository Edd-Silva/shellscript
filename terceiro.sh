#!/bin/bash
#
# terceiro.sh - Nosso Terceiro Programa em Shell - ondicioonal if the else
# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa ira capturar o primeiro parametro digitado, ira armazenar na variável $1 e ira comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar que foi revelado o segredo na tela, se não for igual, irá mostrar erro. 
#
# Exemplo de exeção
#
# $ ./terceiro.sh utah
# Meus parabens voce arcertou o segredo. voce esta na melhor em linux do Brasil
# $ ./terceiro.sh blue
# O valor da Variavel $1 é linux
# ERROU. Esta perdendo tempo na blue
#
# Historico de Verões
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo
echo "Bem vindo ao Detector de segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus parabens, voce acertou o segredo. Voce esta na melhor em linux do brasil"
	echo
else
	echo "ERROR. Esta perdendo o seu tempo $1"
	echo
fi
