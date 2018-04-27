#!/usr/bin/env bash

# Cleans up the rgi reports from mapping each genome to CARD

# Keeps only "Strict" hits, adds the filename as a column, and appends to file

IN_DIR=/home/ubuntu/users/duvallet/amr-risk/data/raw/rgi_mapped
OUT_FILE=/home/ubuntu/users/duvallet/amr-risk/data/clean/bn10.rgi_mapped.strict.txt

# Get just the txt files (rgi also outputs json and gff3)
files=`ls -S $IN_DIR/*.txt`

# If the outfile exists, remove it first
if [ -f $OUT_FILE ]; then
    echo "Removing $OUT_FILE"
    rm $OUT_FILE
fi

for f in $files; 
do 
    #echo $f
    genome=${f%_final.rgi_report.txt}
    genome=${genome#${IN_DIR}/}
    echo $genome
    grep Strict $f | sed "s/\r$//" | sed "s/$/\t$genome/" >> $OUT_FILE
done
