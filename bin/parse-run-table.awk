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

# Find column indices
NR==1 {
	for (f=1; f<=NF; f++) {
		indices[$f] = f
	}
}
NR>1 {
	bio_project = $indices[BioProject]
	sample_name = $indices[Sample_Name]
	cell_line = $indices[cell_line]
	run = $indices[Run]

	print_target()
}


#---------------functions---------------#
# obtain input SRA table path
#
function get_path() {

}

# print out the target name
#
function print_target() {
}

