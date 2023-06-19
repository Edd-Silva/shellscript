#!/bin/bash

log_directory="/var/log"

read -p "Digite a palavra-chave: " search_keyword

# Procurar nos logs do Apache
apache_logs="$log_directory/apache/*.log"
for log_file in $apache_logs; do
    if grep -q "$search_keyword" "$log_file"; then
        grep "$search_keyword" "$log_file"
    fi
done

# Procurar nos logs do Nginx
nginx_logs="$log_directory/nginx/*.log"
for log_file in $nginx_logs; do
    if grep -q "$search_keyword" "$log_file"; then
        grep "$search_keyword" "$log_file"
    fi
done
