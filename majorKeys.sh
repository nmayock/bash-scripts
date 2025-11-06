#!/bin/bash
#script is used to help build chord progressions
#Key selection
KEYCHOICE=$(gum choose "Amaj" "Bbmaj" "Bmaj" "Cmaj" "C#maj" "Dmaj" "Ebmaj" "Emaj" "Fmaj" "F#maj" "Gmaj" "Abmaj")
#variable used to allow for using options to specify files with non major keys later
FILE="$(dirname "$0")/majorKeys.txt"
#Scale tabs dir
SCALEDIR="$(dirname "$0")/scaleTabs"
#Reads file and assigns variables to fields
while IFS='|' read -r MAJ1 MIN2 MIN3 MAJ4 MAJ5 MIN6 DIM7; do
	if [[ $KEYCHOICE == $MAJ1 ]]; then
		echo "Key of "$KEYCHOICE"; I: $MAJ1 ii: $MIN2 iii: $MIN3 IV: $MAJ4 V: $MAJ5 vi: $MIN6 vii°: $DIM7"
		#choose progression, more progs can be added, make sure they are also added to case statement
		PROGCHOICE=$(gum choose \
			"Common Pop (I-vi-IV-V)" \
			"More Pop (I-V-vi-IV)" \
			"Rock/Blues (I-IV-V)" \
			"Basic Jazz (ii-V-I)" \
			"More Jazz (I-vi-ii-V)" \
			"Country (vi-IV-I-V)")
		echo "$PROGCHOICE progression"
		case "$PROGCHOICE" in
			"Common Pop (I-vi-IV-V)") echo "Progression: $MAJ1 $MIN6 $MAJ4 $MAJ5"			;;
           		"More Pop (I-V-vi-IV)") echo "Progression: $MAJ1 $MAJ5 $MIN6 $MAJ4"			;;
            		"Rock/Blues (I-IV-V)") echo "Progression: $MAJ1 $MAJ4 $MAJ5"				;;
			"Basic Jazz (ii-V-I)") echo "Progression: "$MIN2"7 "$MAJ5"7 "$MAJ1"7"			;;
			"More Jazz (I-vi-ii-V)") echo "Progression: "$MAJ1"7 "$MIN6"7 "$MIN2"7 "$MAJ5"7"	;;
            		"Country (vi-IV-I-V)") echo "Progression: $MIN6 $MAJ4 $MAJ1 $MAJ5"			;;
		esac
		SCALEFILE="$SCALEDIR/${KEYCHOICE}.txt"
                if [[ -f "$SCALEFILE" ]]; then
                        cat  "$SCALEFILE"
                fi

	fi



done < "$FILE"
#run this to update global executable after changes are made: sudo cp ~/scripts/majorKeyscript/majorKeys.sh /usr/local/share/majorKeyscript
