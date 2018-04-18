#!/usr/bin/env bash

# Use the RGI command line tool to map each genome
# to AMR genes.

# RGI command line tool: conda install --channel bioconda rgi

ls data/raw/BN10_Genome_Library_03282018/*.scaffolds.fasta |  parallel ./src/data/rgi_wrapper.sh {}

rm diamond.log
mv *.scaffolds.fasta.log data/raw/rgi_mapped/
