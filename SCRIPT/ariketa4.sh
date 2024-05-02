#!/bin/bash

echo "Sartu lehenego balioa:"
read balio1

echo "Eragiketa aukeratu: (+,-,*,/)"
read eragiketa

echo "sartu bigarren balioa:"
read balio2

case $eragiketa in
"+")
emaitza=$(echo "balio1 + balio2" | bc)
;;
"-")
emaitza=$(echo "balio1 - balio2" | bc)
;;
"*")
emaitza=$(echo "balio1 * balio2" | bc)
;;
"/")
emaitza=$(echo " scale=2; $balio1 / $balio2" | bc)
;; 
esac

echo "Emaitza: $emaitza"
