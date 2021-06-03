#!/bin/bash
#
# segundo.sh - Nosso Segundo Programa em Shell - Variáveis de controle do shel
#
# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa ira mostrar as principais varáveis de controle do shell
#
# Exemplo de exeção
#
# $ ./segundo.sh linux
# O valor da Variável $1 é linux
# $ ./segundo.sh linux windows
# O valor da Variavel $1 é linux
# O valor da variavel $2 é windows
# Historico de Verões
#
# Versão: 1.0
#
#COPYRIGHT: Este programa é GPL

echo "Bem vindoas Variaveis de Controle Internos do Shell"
echo
echo "A variavel \$1 armazena o primeiro parametro passado depois do script.que foi: $1"
echo
echo "A variavel \$2 armazena o segundo parametro passado depois do script.que foi $2"

echo "A variavel \$3 armazena o primeiro parametro passado depois do script.que foi $3"

echo "A variavel \$0 armazena o primeiro parametro passado depois do script.que foi $0"


echo "A variavel \$# armazena o primeiro parametro passado depois do script.que foi $#"


echo "A variavel \$\$ armazena o primeiro parametro passado depois do script.que foi $$"

