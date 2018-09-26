#!/usr/bin/env bash
echo Starting from file $1
echo Make sure the filesize is 9933 x 14043!
cp $1 "a0_$1"
convert -resize 7016x9933 $1 "a1_$1"
convert -resize 4960x7016 $1 "a2_$1"
convert -resize 3508x4961 $1 "a3_$1"
convert -resize 2480x3508 $1 "a4_$1"
convert -resize 50% $1 "half_$1"
convert -resize 25% $1 "quarter_$1"
convert -resize 10% $1 "tenth_$1"
file *
