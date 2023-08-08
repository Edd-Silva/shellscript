#!/bin/bash
#FUNÇÃO: Script para adicionar usuários em massa já com senha pre definida
#Versão: 1.0
#licença GPL 3
# Modo de uso: bash add-user.sh

adduser --home /srv/homes/jose.maria jose.maria
echo 'jose.maria:acme321' | chpasswd

adduser --home /srv/homes/julio.cesar julio.cesar
echo 'julio.cesar:acme321' | chpasswd

adduser --home /srv/homes/ana.maria ana.maria
echo 'ana.maria:acme321' | chpasswd

adduser --home /srv/homes/pedro.henrique pedro.henrique
echo 'pedro.henrique:acme321' | chpasswd

adduser --home /srv/homes/jose.carlos jose.carlos
echo 'jose.carlos:acme321' | chpasswd

adduser --home /srv/homes/maria.rita maria.rita
echo 'maria.rita:acme321' | chpasswd


