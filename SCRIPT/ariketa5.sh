#!/bin/bash

# Baimenak konprobatzeko funtzioa
baimenak_konprobatu() {
    fitxategia="$1"

    # Fitxategia existitzen den ala ez konprobatu
    if [ ! -e "$fitxategia" ]; then
        echo "Fitxategia ez da existitzen."
        return
    fi

    # Baimenak konprobatu eta emaitza pantailaratzen
    if [ -r "$fitxategia" ]; then
        echo "$fitxategia fitxategiak irakurtzeko baimena dauka."
    fi

    if [ -w "$fitxategia" ]; then
        echo "$fitxategia fitxategiak idazteko baimena dauka."
    fi

    if [ -x "$fitxategia" ]; then
        echo "$fitxategia fitxategiak exekutatzeko baimena dauka."
    fi
}

# Erabiltzaileari fitxategiaren izena eskatu
read -p "Sartu fitxategiaren izena: " fitxategia

# Baimenak konprobatu
baimenak_konprobatu "$fitxategia"