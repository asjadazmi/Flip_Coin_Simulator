#!/bin/bash

echo "welcome to the flip coin problem"
random=$((RANDOM%2))
ishead=1;

if [ $ishead -eq $random ]
then 
    echo "this is the head";
else
    echo "this is tail";
fi
