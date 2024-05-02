#!/bin/bash

# Funtzioa fitxategiak konprobatzeko eta irakurtzeko
konprobatu_eta_irakurri() {
    for fitxategia in "$@"; do
        # Fitxategia existitzen den ala ez konprobatu
        if [ ! -e "$fitxategia" ]; then
            echo "Fitxategia \"$fitxategia\" ez da existitzen."
        else
            echo "Fitxategia \"$fitxategia\" existitzen da. Edukia: "
            cat "$fitxategia"
        fi
    done
}

# Erabiltzaileari fitxategiak eskatu
echo "Sartu fitxategien izenak (espetatu zuriuneak):"
read -a fitxategiak

# Fitxategiak konprobatu eta irakurri
konprobatu_eta_irakurri "${fitxategiak[@]}"