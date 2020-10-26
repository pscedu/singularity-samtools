#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
	module load singularity/3.5.3
fi

singularity pull https://depot.galaxyproject.org/singularity/samtools%3A1.11--h6270b1f_0
mv -v samtools%3A1.11--h6270b1f_0 singularity-samtools-1.11.0.sif
