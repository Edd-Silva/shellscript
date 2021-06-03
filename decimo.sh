#!/bin/bash
#
# decimo.sh - Nosso Decimo Programa em Shell - Mr. Robot

# Homepage: http://monitoramentoonline.pro
# Autor: Edjanio da Silva <edjaniosilva.al@gmail.com>
# Mantenedor: Grupo cybersec <edjaniosilva.al@gmail.com
#
#-----------------------------------------------------
#
# Este programa é um sera usado para realizar um backup full. 
# 
# Exemplo de exeção:
#
# $ ./decimo.sh 
# 
# Historico de Versoes
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL
#
# BACKUPDIR - Local onde estão os arquivos de origem que faremos backup

BKPDIR="/srv/backup/"
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="/srv/backup_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="edjanio.silva@globomail.com"
SENDUSER="root@local"

echo -e "\n"
echo "Iniciando o script de backup"
echo -e "\n"

verificar() {
if [ $? -eq 0 ]; then
	echo "Comando ok"
else
	echo "ERRO"
	exit 1
fi
}

mail() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Backup" -a $LOGFILE -m "Segue"
       
}
mail_err() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de erro no BACKUP" -a $ERRORLOG -m "Segue"
}

rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
mail


[ -f "$COMPACT" ] || $COMPACT
verificar


exit 0

