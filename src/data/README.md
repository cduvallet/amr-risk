Scripts I used to map the BN10 genomes to CARD.

download_genomes.sh : downloads the tar file from S3 and untar/zips it

map_to_card.sh : maps all genomes to the CARD database using their RGI command line tool. Parallelized code.

rgi_wrapper.sh : wrapper that map_to_card.sh calls.

clean_rgi_reports.sh : this grabs all the Strict hits, adds the genome name as a new column, and concatenates them all. Don't run it multiple times bc it just appends to the existing file name!