--
-- Samtools 1.11.0 modulefile
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
Samtools 1.11.0
--------------

Description
-----------
Samtools is a suite of programs for interacting with high-throughput sequencing data.

To load the module type

> module load samtools/1.11.0

To unload the module type

> module unload samtools/1.11.0

Documentation
-------------
http://www.htslib.org/doc/#manual-pages

Repository
----------
https://github.com/samtools/samtools

Tools included in this module are

* samtools
]])

local package = "samtools"
local version = "1.11.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
