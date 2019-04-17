# DESCRIPTION
# this module downloads SRA files and converts them to FASTQ format.
# the output is a pair of FASTQ files for each SRA identifier.
#
# USAGE:
# alternative 1 Single target execution
# `mk <specific_target>` where specific_target is any line printed by `bin/targets`
#
# alternative 2 multiple target tandem execution
# `bin/targets | xargs mk`
#
#
# Load options from file
< config.mk
#
# Download SRA files.
#--------------------------
'output([A-z0-9_/\-]*/)([A-z0-9]+)_[1|2].fastq.gz':R:
	mkdir -p `dirname $target`
	fastq-dump \
		--split-files \
		--gzip \
		--outdir `dirname $target` \
		$stem2
