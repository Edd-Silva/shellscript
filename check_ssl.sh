#!/bin/bash
#Descrição: Script que checa a quantidade de dias que falta para um certificado ssl expirar
#Versão:1.0
#Licenca: GPL3

data=`echo | openssl s_client -servername $1 -connect $1:${2:-443} 2>/dev/null | openssl x509 -noout -enddate | sed -e 's#notAfter=##'`

ssldate=`date -d "${data}" '+%s'`

nowdate=`date '+%s'`

diff="$((${ssldate}-${nowdate}))"

echo $((${diff}/86400))
