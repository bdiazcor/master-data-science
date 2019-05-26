#!/bin/bash
echo $0
FILE_NAME=$1
DELIMITER=$2
echo ${FILE_NAME} ${DELIMITER}
NUM_COLUMNS=$(head -1 ${FILE_NAME}| tr ${DELIMITER} "\n" | wc -l)
paste <(seq ${NUM_COLUMNS}) <(head -1 ${FILE_NAME}| tr ${DELIMITER} "\n")
