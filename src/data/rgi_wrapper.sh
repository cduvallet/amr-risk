#!/usr/bin/env bash
# Wrapper function to use with parallel

map_rgi(){
    f=$1
    echo $f
    newf=${f%.scaffolds.fasta}.rgi_report
    newf=data/raw/rgi_mapped/${newf#data/raw/BN10_Genome_Library_03282018/}
    rgi -i $f -o $newf --loose_criteria YES --verbose ON 
}

map_rgi $1
