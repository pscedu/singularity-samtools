--
-- samtools 1.11.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: Samtools is a suite of programs for interacting with high-throughput sequencing data."
-- "Keywords: singularity bioinformatics"

whatis("Name: samtools")
whatis("Version: 1.11.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: Samtools is a suite of programs for interacting with high-throughput sequencing data.")

help([[
samtools is a suite of programs for interacting with high-throughput sequencing data.

To load the module type

> module load samtools/1.11.0

To unload the module type

> module unload samtools/1.11.0

Documentation
-------------
http://www.htslib.org/doc/#manual-pages

For help, type

> samtools --help

Tools included in this module are

* ace2sam
* md5fa
* samtools
* blast2sam.pl
* md5sum-lite
* samtools.pl
* bowtie2sam.pl
* novo2sam.pl
* seq_cache_populate.pl
* export2sam.pl
* plot-ampliconstats
* soap2sam.pl
* interpolate_sam.pl
* plot-bamstats
* wgsim
* maq2sam-long
* psl2sam.pl
* wgsim_eval.pl
* maq2sam-short
* sam2vcf.pl
* zoom2sam.pl
]])

local package = "samtools"
local version = "1.11.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
