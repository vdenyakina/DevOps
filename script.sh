#!/bin/bash

DIRNAME=$1
COMPRESS=$2
FILENAME=$3

tar $COMPRESS INTERMEDIATE $DIRNAME 1>>/dev/null 2>> error.log
openssl enc -aes256 -pbkdf2 -in INTERMEDIATE -out $FILENAME 1>>/dev/null 2>> error.log
rm INTERMEDIATE 1>>/dev/null 2>> error.log
