#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/samtools:1.10--h9402c20_2
mv -v samtools:1.10--h9402c20_2 singularity-samtools-1.10.0.sif
