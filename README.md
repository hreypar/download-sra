# download-sra #

This module downloads raw sequencing data from NCBI.


## About ##

This repository downloads [FASTQ](https://en.wikipedia.org/wiki/FASTQ_format) files from the [Sequence Read Archive](https://www.ncbi.nlm.nih.gov/sra). It uses SRA accession identifiers that are extracted from a [Run Selector](https://www.ncbi.nlm.nih.gov/Traces/study/?go=help) table.


## Description ##

The input is a table generated by the [Run Selector](https://www.ncbi.nlm.nih.gov/Traces/study/?go=help)


**Warning:** it's under your responsiblity to select properly the files you want to download from SRA (e.g. if you check the same Run in different Run Selector queries and it ends up present in different SraRunTable files, the Run files will be downloaded as many times as it's present)



## Requirements ##

- [mk](https://9fans.github.io/plan9port/man/man1/mk.html) from plan9. 

- [Aspera](https://downloads.asperasoft.com/en/downloads/8?list "IBM Aspera Connect is an install-on-demand application that facilitates high-speed uploads and downloads with an Aspera transfer server"). To install it, a shell script is downloaded and run. Afterwards, the executables default location is `$HOME/.aspera/connect/bin/`

- [prefetch](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=toolkit_doc&f=prefetch) and [fasterq-dump](https://github.com/ncbi/sra-tools/wiki/HowTo:-fasterq-dump) from [SRA Tools](https://github.com/ncbi/sra-tools/wiki/Building-and-Installing-from-Source)


## Author ##

Helena Reyes Gopar

HRG wishes to credit [this](http://bioinfostar.com/2017/12/24/How-to-download-SRA-data-en/) blog post as early inspiration for this module.

