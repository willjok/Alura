#!/bin/bash

cont=0

for var in `cat /etc/passwd | awk -F: '{print $1}'`

do
	cont=$(($cont+1))
        echo $cont - $var
done



