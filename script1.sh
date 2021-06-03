#!/bin/bash

# script01.sh - Emulação do comando sec em bash

# o comando seq recebe dois numeros e mostra na saida padrão todos os numeros
# exixtentes entre eles, numa sequencia pronta para ser usada pelo comando for. Caso omitido o numero inicial, é utilizado 1.
#

o=+
# Declara o valor da variavel 0 sendo + (soma)
a=1
# Declara o valor da variavel A igual a 1
z=${1:-1}
# Caso o parametro não seja declarado a variavel Z tera o mesmo valor do parametro $1 e a variavel Z o segundo parametro $2
[ "$2" ] && { 
	a=$1
       	z=$2 
}

[ $a - gt $z ] && o=-
# Se o valor da variavel A for maior que o valor da variavel Z a variavel 0 sera declarada com o sinal de "-" (subtração)

while [ $a -ne $z ]; do
       	echo $a 
       	eval "a=\$((a$o 1))"

done

echo $a
