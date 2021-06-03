#!/bin/bash
#
# quarto.sh - Nosso Quarto Programa em Shell -condicioonal if the else
# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa ira capturar o valor digitado pelo usuário e ira armazenar na primeiro parametro digitado, ira armazenar na variável $1 e ira comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar que foi revelado o segredo na tela, se não for igual, irá mostrar erro. 
#
# Exemplo de exeção
#
# $ ./quarto.sh 
# Digite o segredo:
# utah
# Meus parabens voce arcertou o segredo. voce esta na melhor em linux do Brasil
# $ ./quarto.sh 
# 
# ERROU. Esta perdendo tempo na blue
#
# Historico de Versoes
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo
echo "Bem vindo ao Detector de segredos"
echo
echo "Por favor, digite o segredo"
#read ira ler o que o usuario digitou e armazenara na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus parabens, voce acertou o segredo. Voce esta na melhor em linux do brasil"
	echo
else
	echo "ERROR. Esta perdendo o seu tempo $DIGITADO"
	echo
fi
