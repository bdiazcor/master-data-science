#!/bin/bash
#Script that accepts a file and returns the highest number of engines
echo $0
FILE_NAME=$1
echo ${FILE_NAME}
ENGINES_COLUMN=$(column_name_number.sh ${FILE_NAME} "^"|grep -i "nb_engines"| cut -f 1)
MODEL_COLUMN=$(column_name_number.sh ${FILE_NAME} "^"|grep -i "model"| cut -f 1)
#echo ENGINES_COLUMN ${ENGINES_COLUMN}
#echo MODEL_COLUMN ${MODEL_COLUMN}
#cut -d "^" -f ${ENGINES_COLUMN} ${FILE_NAME}| sort -nr| head -1
MODEL=$(sort -t "^" -k ${ENGINES_COLUMN}nr ${FILE_NAME} | cut -d "^" -f ${MODEL_COLUMN} | head -1) #MODEL WITH THE MAXIMUN NB of ENGINES
echo "The model with the maximun number of engines is the ${MODEL}"

