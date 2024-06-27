#!/bin/bash

dir_restore=/home/wellington/Alura/restore_mutillidae_amazon

aws s3 sync s3://curso-alura-shell-script/$(date +%F) $dir_restore

cd $dir_restore

if  [ -f $1.sql ]
then
	mysql -u root mutillidae < $1.sql
	if [ $? -eq 0  ] 
	then
		echo "O restore foi realizado com sucesso"
	else
		echo "O arquivo procurado nao existe no diretorio"
	fi
fi

