#!/bin/bash
#Script para extrair dos logs de servidores web todas as requisições

logfile="/var/log/apache2/access.log"

count_get=$(grep -E 'GET ' "$logfile" | wc -l)
count_post=$(grep -E 'POST ' "$logfile" | wc -l)
count_delete=$(grep -E 'DELETE ' "$logfile" | wc -l)
count_put=$(grep -E 'PUT ' "$logfile" | wc -l)
count_head=$(grep -E 'HEAD ' "$logfile" | wc -l)

echo "Quantidade de requisições GET: $count_get"
echo "Quantidade de requisições POST: $count_post"
echo "Quantidade de requisições DELETE: $count_delete"
echo "Quantidade de requisições PUT: $count_put"
echo "Quantidade de requisições HEAD: $count_head"

