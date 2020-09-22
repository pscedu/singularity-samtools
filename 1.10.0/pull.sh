#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
	module load singularity/3.5.3
fi

singularity pull https://depot.galaxyproject.org/singularity/samtools:1.2-0
mv -v samtools:1.2-0 singularity-samtools-1.2-0.sif
