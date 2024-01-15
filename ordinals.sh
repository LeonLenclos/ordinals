#!/bin/bash

# Usage : `./ordinals.sh n`

# Creates a directory for each ordinal number
# from 0 to n identifying the empty set with
# an empty directory.

i="0";
n=$1;

mkdir $i;
i=$((i+1))

while [ $i -le $n ]
do
  mkdir $i;
  ln -s "../$((i-1))/" "${i}/$((i-1))";
  if [ $i -gt 1 ]
  then
    cp -r $((i-1))/* "${i}/"
  fi
  i=$((i+1))
done;
