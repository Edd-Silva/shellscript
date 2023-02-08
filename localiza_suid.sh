#!/bin/bash
#Autor:<edjanio.silva@globomail.com>
#Descrição: Script para localiza em todo sistema operacional arquivos com permissões SUID BIT. 
#Versão: 1.0
#Licença: GPL 3

#Modo de uso: Crie uma diretório chamado auditoria no /root, e copie este scrip para dentro do diretório, ele tem a opção de remover
#as permissões ou gerar um arquivo chamado list_suid.txt, com os arquivos que tem a permissão suid bit.

echo "Procurando arquivos com permissão SUID BIT..."
find / -perm -4000 > /root/auditoria/list_suid.txt

echo -n "Deseja remover o SUID BIT dos arquivos listados? (S/N):"
read acao
case $acao in
S|s)
chmod -Rv -s /
echo "Permissão de SUID BIT removidas!"
sleep 3
exit;;
N|n)
exit;;
*)
echo "Opção inválida!"
sleep 3
exit;;
esac
