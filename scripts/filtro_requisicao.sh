#!/bin/bash


cd ~/Alura/apache-log

if [ $1 == GET ]
then
	cat apache.log | grep GREP
elif (( $1 == POST || $1 == post ))
then
	cat apache.log | grep POST
elif [ $1 == PUT ]
then
	cat apache.log | grep PUT
elif [ $1 == DELETE ]
then
	cat apache.log | grep DELETE
fi
