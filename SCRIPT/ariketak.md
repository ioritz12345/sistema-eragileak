# Ariketak Scriptak

- [Ariketak Scriptak](#ariketak-scriptak)
  - [Ariketa 1](#ariketa-1)
  - [Ariketa 2](#ariketa-2)
  - [Ariketa 3](#ariketa-3)
  - [Ariketa 4](#ariketa-4)
  - [Ariketa 5](#ariketa-5)
  - [Ariketa 6](#ariketa-6)

## Ariketa 1

```bash
#!/bin/bash

# 1 Ariekta

Clear

echo "Nor zara"
whoami

echo "Zein direktoriotan zaude"
pwd
```

## Ariketa 2

```bash
#!/bin/bash

echo "sartu urte bat"

read URTEA

echo "sartu hilabete bat"

read HILABETEA

cal $HILABETEA $URTEA
```

## Ariketa 3

```bash
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
```

## Ariketa 4

```bash
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
```

## Ariketa 5

```bash
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
```

## Ariketa 6

```bash
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
```