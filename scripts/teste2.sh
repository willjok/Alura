#!/bin/bash

teste="/home/wellington/teste/"

if [ ! -d "$teste" ];
#if [ !-d "/home/wellington/teste" ]	
then
	echo "Não existe"      	
else
	echo "Existe"
fi	
echo $teste
