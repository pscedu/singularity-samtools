#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/samtools%3A1.11--h6270b1f_0
mv -v samtools%3A1.11--h6270b1f_0 singularity-samtools-1.11.0.sif
