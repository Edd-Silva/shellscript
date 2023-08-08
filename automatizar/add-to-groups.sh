#!/bin/bash
#Função: Adicionar usuários a grupos em massa
#Versão: 1.0
#Licença GPL 3
#OBS.: Os grupos tem que ser criados antes.
gppasswd -a jose.maria vendedores
gppasswd -a jose.carlos vendedores

gppasswd -a maria.rita financeiro
gppasswd -a pedro.henrique financeiro

gppasswd -a julio.cesar analistas
gppasswd -a ana.maria analistas
