#!/bin/bash

A=`ls speeches/$1*.txt`
B=`ls speeches/$2*.txt`

testers=`ls speeches/*$1*3/*`
k=$3

echo "Speaker A is: ${A} Speaker B is ${B}" >> outcomes.txt

for speech in $testers; do
    echo "name of speech is: " $speech >> outcomes.txt
    python3 Markov.py $A $B $speech $k >> outcomes.txt
    done

    

