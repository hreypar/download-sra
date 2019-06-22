# download-sra #

Two options:

find the fastq file link directly from the ENA mirror and use aspera like this
`ascp -v -QT -l 300m -P33001 -i ~/.aspera/connect/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR190/009/SRR1909069/SRR1909069_1.fastq.gz output/`

OR 

use `prefetch` and force it to use aspera to download .sra files, THEN convert them in the local to fastq using fastq-dump 




## About ##

This repository downloads paired-end [FASTQ](https://en.wikipedia.org/wiki/FASTQ_format) files from the 
[Sequence Read Archive](https://www.ncbi.nlm.nih.gov/sra) using SRA accession identifiers.




## Requirements ##

- [mk](https://9fans.github.io/plan9port/man/man1/mk.html) from plan9. 

- [Aspera](https://downloads.asperasoft.com/en/downloads/8?list "IBM Aspera Connect is an install-on-demand application that facilitates high-speed uploads and downloads with an Aspera transfer server"). To install it, a shell script is downloaded and run. Afterwards, the executables default location is `$HOME/.aspera/connect/bin/`

- [fastq-dump](https://ncbi.github.io/sra-tools/fastq-dump.html) from [SRA Tools](https://github.com/ncbi/sra-tools/wiki/Building-and-Installing-from-Source)


## Author ##

Helena Reyes Gopar

