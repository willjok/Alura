#!/bin/bash


for ip in $@ 

do

ping -c4 $ip

done	


