#!/usr/bin/env bash

# To be run from the main repo directory

# Download genomes and metadata from S3
if [ ! -f data/raw/BN10_Genome_Library_03282018.tgz ]; then
    aws s3 cp s3://bn10.bucket/WholeGenomes_Isolates/BN10_Genome_Library_03282018.tgz data/raw/
fi

if [ ! -f data/raw/BN10_Genome_Library_03282018/cx_0004_0086_h9_final.scaffolds.fasta ]; then
    tar -xvzf data/raw/BN10_Genome_Library_03282018.tgz -C data/raw/
fi

if [ ! -f data/raw/table_BN10_WGS_metadata_03282018.txt ]; then
    aws s3 cp s3://bn10.bucket/WholeGenomes_Isolates/table_BN10_WGS_metadata_03282018.txt data/raw/
fi
