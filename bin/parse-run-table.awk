#!/usr/bin/awk -f
#
# Read in a SraRunTable file.
# Use the first line to determine the columns values.
# Print out each SRA run accession with its rightful path.
#
# This script aids the  printing of mk-targets
#
BEGIN {
	FS = "\t"
	get_path(ARGV[1])
}
 
NR==1 {
	# store the header in array, indexes are col names
	for (h = 1; h <= NF; h++) {
		header[$h] = h
	}
}
NR>1 { 
	# use header indexes to obtain the fields we need
	print_target($header["BioProject"], $header["Sample_Name"], $header["Run"])
}
#---------------functions---------------#
# get path from filename
function get_path(file_route) {
	split(file_route, arr, /[^/]+$/) #split at the first dash before end
	path = arr[1]
}

# print out the target name
function print_target(bio_project, sample, run) {
	print path bio_project "/" sample "/" run
}
