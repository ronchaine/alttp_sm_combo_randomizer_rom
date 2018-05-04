#!/bin/sh
ASAR=${ASAR-resources/asar-standalone}

[ ! -f $ASAR ] && echo "$ASAR not found, get it from https://github.com/RPGHacker/asar\
 or use ASAR environment variable to locate the executable" && exit

echo Building Super Metroid + Zelda
cp resources/orig.bin zsm.sfc
$ASAR src/main.asm zsm.sfc
mkdir -p build
mv zsm.sfc build
echo Done

