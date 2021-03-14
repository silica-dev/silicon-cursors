#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

# Silicon carbige
RAWSVGS_silicon_dioxide="src/silicon_dioxide/svgs"
INDEX_silicon_dioxide="src/silicon_dioxide/cursor.theme"
INDEX1_silicon_dioxide="src/silicon_dioxide/index.theme"


ALIASES="src/cursorList"

echo -ne "Checking Requirements...\\r"

if  ! type "inkscape" > /dev/null; then
    echo -e "\\nFAIL: inkscape must be installed"
    exit 1
fi

if  ! type "xcursorgen" > /dev/null; then
    echo -e "\\nFAIL: xcursorgen must be installed"
    exit 1
fi
echo -e "Checking Requirements... DONE"



echo -ne "Making Folders... $BASENAME\\r"
DIR11X_silicon_dioxide="build/silicon_dioxide/96"
DIR10X_silicon_dioxide="build/silicon_dioxide/88"
DIR9X_silicon_dioxide="build/silicon_dioxide/80"
DIR8X_silicon_dioxide="build/silicon_dioxide/72"
DIR7X_silicon_dioxide="build/silicon_dioxide/64"
DIR6X_silicon_dioxide="build/silicon_dioxide/56"
DIR5X_silicon_dioxide="build/silicon_dioxide/48"
DIR4X_silicon_dioxide="build/silicon_dioxide/40"
DIR3X_silicon_dioxide="build/silicon_dioxide/32"
DIR2X_silicon_dioxide="build/silicon_dioxide/28"
DIR1X_silicon_dioxide="build/silicon_dioxide/24"

OUTPUT_silicon_dioxide="$(grep --only-matching --perl-regex "(?<=Name\=).*$" $INDEX_silicon_dioxide)"
OUTPUT_silicon_dioxide=${OUTPUT_silicon_dioxide// /_}

mkdir -p "$DIR11X_silicon_dioxide" "$DIR10X_silicon_dioxide" "$DIR9X_silicon_dioxide" "$DIR8X_silicon_dioxide" "$DIR7X_silicon_dioxide" "$DIR6X_silicon_dioxide" "$DIR5X_silicon_dioxide" "$DIR4X_silicon_dioxide" "$DIR3X_silicon_dioxide" "$DIR2X_silicon_dioxide" "$DIR1X_silicon_dioxide"

mkdir -p "$OUTPUT_silicon_dioxide/cursors"
echo 'Making Folders... DONE';


for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    echo -ne "\033[0KGenerating pngs of silicon dioxide... $BASENAME\\r"

    inkscape -w 24 -h 24 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR1X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 28 -h 28 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR2X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 32 -h 32 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR3X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 40 -h 40 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR4X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 48 -h 48 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR5X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 56 -h 56 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR6X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 64 -h 64 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR7X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 72 -h 72 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR8X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 80 -h 80 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR9X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 88 -h 88 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR10X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1
    inkscape -w 96 -h 96 -p $RAWSVGS_silicon_dioxide/"$BASENAME".svg -o "$DIR11X_silicon_dioxide/$BASENAME.png" > /dev/null 2>&1


done
    echo -e "\033[0KGenerating pngs of silicon dioxide... DONE"

    echo -ne "\033[0KGenerating animated cursors for silicon dioxide... \\r"
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
    echo -ne "\033[0KGenerating pngs for silicon dioxide Progress... $i / 24 \\r"

    inkscape -w 28 -h 28 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR2X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 24 -h 24 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR1X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 32 -h 32 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR3X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 40 -h 40 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR4X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 48 -h 48 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR5X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 56 -h 56 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR6X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 64 -h 64 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR7X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 72 -h 72 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR8X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 80 -h 80 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR9X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 88 -h 88 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR10X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1
    inkscape -w 96 -h 96 -p $RAWSVGS_silicon_dioxide/progress-$i.svg -o "$DIR11X_silicon_dioxide/progress-$i.png" > /dev/null 2>&1

done
    echo -e "\033[0KGenerating pngs for silicon dioxide Progress... DONE"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
    echo -ne "\033[0KGenerating pngs for silicon dioxide Wait... $i / 24 \\r"

    inkscape -w 24 -h 24 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR1X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 28 -h 28 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR2X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 32 -h 32 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR3X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 40 -h 40 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR4X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 48 -h 48 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR5X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 56 -h 56 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR6X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 64 -h 64 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR7X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 72 -h 72 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR8X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 80 -h 80 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR9X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 88 -h 88 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR10X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1
    inkscape -w 96 -h 96 -p $RAWSVGS_silicon_dioxide/wait-$i.svg -o "$DIR11X_silicon_dioxide/wait-$i.png" > /dev/null 2>&1

done
    echo -e "\033[0Generating pngs for silicon dioxide Wait... DONE"
    echo -ne "\033[0KGenerating animated cursors for silicon dioxide... DONE \\r"

echo -ne "Generating cursor theme...\\r"
for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    ERR="$( xcursorgen -p build/silicon_dioxide "$CUR" "$OUTPUT_silicon_dioxide/cursors/$BASENAME" 2>&1 )"

    if [[ "$?" -ne "0" ]]; then
        echo "FAIL: $CUR $ERR"
    fi
done
echo -e "Generating cursor theme... DONE"


echo -ne "Generating shortcuts...\\r"
while read -r ALIAS ; do
    FROM=${ALIAS% *}
    TO=${ALIAS#* }

    if [ -e "$OUTPUT_silicon_dioxide/cursors/$FROM" ] ; then
        continue
    fi
    ln -s "$TO" "$OUTPUT_silicon_dioxide/cursors/$FROM"

done < $ALIASES
echo -e "\033[0KGenerating shortcuts... DONE"


echo -ne "Copying Theme Index...\\r"

    if ! [ -e "$OUTPUT_silicon_dioxide/$INDEX_silicon_dioxide" ] ; then
        cp $INDEX_silicon_dioxide "$OUTPUT_silicon_dioxide/cursor.theme"
        cp $INDEX1_silicon_dioxide "$OUTPUT_silicon_dioxide/index.theme"
    fi
echo -e "\033[0KCopying Theme Index... DONE"
