#!/bin/bash

# Erabiltzaileari bi izena terminalean sartzea eskatu
echo "Idatzi lehen izena: "
read izena1

echo "Idatzi bigarren izena: "
read izena2

# Izenak berdinak direla zihurtarazi
if [ "$izena1" = "$izena2" ]; then
    echo "Izenak berdinak dira."
else
    echo "Izenak desbedinak dira."
fi