#!/usr/bin/awk -f
#
# Obtain SRA Run identificators from SraRunTable file
# and additional attributes.
#
# This script aids in the printing of mk-targets
#
BEGIN {
	FS="\t"
}


