#!/bin/bash


read -p "Escolha o primeiro numero:" primeiro
echo "Voce digitou $primeiro"


read -p "Escolha o segundo numero:" segundo
echo "Voce digitou $segundo"


read -p "Digite soma, sub, mult ou div:" operacao



calc_soma (){

	soma=$(($primeiro + $segundo))
}


calc_sub (){

	sub=$(($primeiro - $segundo))
}


calc_mult (){

	mult=$(($primeiro * $segundo))
}


calc_div (){

	div=$(($primeiro / $segundo))
}


if [ "$operacao" = "soma" ];then
	calc_soma	
	echo "O resultado da soma eh: $soma"
	 
elif [ "$operacao" = "sub" ]
then
	calc_sub	
	echo "O resultado da subtracao eh: $sub"
			
elif [ "$operacao" = "mult" ]
then
	calc_mult	
	echo "O resultado da multiplicacao eh: $mult"
else 
	calc_div
      	echo "O resulado da divisao eh: $div"
fi





#teste (){
#local valor=1
#for numero in $@
#	do
#		soma=$(($numero + $valor))	
#	echo "$soma"
#
#
#	done
#}
