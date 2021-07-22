--
-- samtools 1.13.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: Samtools is a suite of programs for interacting with high-throughput sequencing data."
-- "Keywords: singularity bioinformatics"

whatis("Name: samtools")
whatis("Version: 1.13.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: samtools is a suite of programs for interacting with high-throughput sequencing data.")

help([[
samtools is a suite of programs for interacting with high-throughput sequencing data.

To load the module type

> module load samtools/1.13.0

To unload the module type

> module unload samtools/1.13.0

Documentation
-------------
For help, type

> samtools --help

Tools included in this module are

* ace2sam
* md5fa
* samtools.pl
* blast2sam.pl
* md5sum-lite
* seq_cache_populate.pl
* bowtie2sam.pl
* novo2sam.pl
* soap2sam.pl
* export2sam.pl
* plot-ampliconstats
* wgsim
* fasta-sanitize.pl
* plot-bamstats
* wgsim_eval.pl
* interpolate_sam.pl
* psl2sam.pl
* zoom2sam.pl
* maq2sam-long
* sam2vcf.pl
* maq2sam-short
* samtools
]])

local package = "samtools"
local version = "1.13.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
