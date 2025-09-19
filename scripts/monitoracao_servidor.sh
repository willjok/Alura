#!/bin/bash


resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)
echo $resposta_http

if [ $resposta_http -eq 200 ]
then
	echo "Tudo certo !"
else
	echo "Houve um problema com o servidor. Tentando reinicializar"
        sudo service apache2 restart
        echo "Servidor reinicializado"

fi
