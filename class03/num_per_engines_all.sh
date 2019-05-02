#!/bin/bash
#Script that accepts a file and returns a list with the number of engines and the number of aircrafts with such number of engines
echo $0
FILE_NAME=$1
echo ${FILE_NAME} 
ENGINES_COLUMN=$(column_name_number.sh ${FILE_NAME} "^"|grep -i "nb_engines"| cut -f 1)
MODEL_COLUMN=$(column_name_number.sh ${FILE_NAME} "^"|grep -i "model"| cut -f 1)
echo "Aircrafts per number of engines is:"
cut -d "^" -f ${ENGINES_COLUMN} ${FILE_NAME}| sort -r | uniq -c 
