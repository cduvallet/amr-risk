#!/usr/bin/env bash

# To be run from the main repo directory

# Download genomes and metadata from S3
aws s3 cp s3://bn10.bucket/WholeGenomes_Isolates/BN10_Genome_Library_03282018.tgz data/raw/
tar -xvzf data/raw/BN10_Genome_Library_03282018.tgz
aws s3 cp s3://bn10.bucket/WholeGenomes_Isolates/table_BN10_WGS_metadata_03282018.txt data/raw/
