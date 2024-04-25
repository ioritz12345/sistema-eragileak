#!/bin/bash

# Pedir al usuario que ingrese los dos nombres desde el terminal
echo "Ingrese el primer nombre: "
read nombre1

echo "Ingrese el segundo nombre: "
read nombre2

# Comprobar si los nombres son iguales
if [ "$nombre1" = "$nombre2" ]; then
    echo "Los nombres son iguales."
else
    echo "Los nombres son diferentes."
fi