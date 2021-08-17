![Status](https://github.com/pscedu/singularity-samtools/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-samtools/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-samtools)
![forks](https://img.shields.io/github/forks/pscedu/singularity-samtools)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-samtools)
![License](https://img.shields.io/github/license/pscedu/singularity-samtools)

# singularity-samtools
Singularity recipe for [samtools](https://www.htslib.org/).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `ace2sam`, `blast2sam.pl` `bowtie2sam.pl`, `export2sam.pl`, `fasta-sanitize.pl`, `generate_binaries.sh`, `interpolate_sam.pl`, `maq2sam-long`, `maq2sam-short`, `md5fa`, `md5sum-lite`, `novo2sam.pl`, `plot-ampliconstats`, `plot-bamstats`, `psl2sam.pl`, `sam2vcf.pl`, `samtools`, `samtools.pl`, `seq_cache_populate.pl`, `soap2sam.pl`, `wgsim`, `wgsim_eval.pl` and `zoom2sam.pl` scripts

to `/opt/packages/samtools/1.13.0`

Copy the file `modulefile.lua` to `/opt/modulefiles/samtools` as `1.13.0.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
