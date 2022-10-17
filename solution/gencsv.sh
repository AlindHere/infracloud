#!/bin/bash

>inputFile
chmod 755 inputFile

COUNT=10
i=0

while [ $i -lt $COUNT ]
do
	random=$(shuf -i 1-100000 -n 1)
	echo "$i, $(echo $random)" >> inputFile
	i=$((i+1))
done