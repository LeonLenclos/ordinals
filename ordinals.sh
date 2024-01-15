#!/bin/bash

# Usage : `./ordinals.sh n`

# Creates a directory for each ordinal number
# from 0 to n identifying the empty set with
# an empty directory.

i="0";
n=$1;

mkdir $i;

while [ $i -le $n ]
do
  ((i++));
  mkdir $i;
  ln -s "../$((i-1))/" "${i}/$((i-1))";
  cp -r $((i-1))/* "${i}/"
done;
