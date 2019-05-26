#!/bin/bash
#Script that accepts a file and a number of engines and returns the number of aircrafts with such number of engines
echo $0
FILE_NAME=$1
NB_ENGINES=$2
echo ${FILE_NAME} ${NB_ENGINES}
ENGINES_COLUMN=$(column_name_number.sh ${FILE_NAME} "^"|grep -i "nb_engines"| cut -f 1)
MODEL_COLUMN=$(column_name_number.sh ${FILE_NAME} "^"|grep -i "model"| cut -f 1)
NB_AIRCRAFT=$(cut -d "^" -f ${ENGINES_COLUMN} ${FILE_NAME}| grep -E "${NB_ENGINES}"  | wc -l)
echo "The number of aircrafts with ${NB_ENGINES} engines is ${NB_AIRCRAFT}"
