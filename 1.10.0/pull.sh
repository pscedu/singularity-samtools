#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
	module load singularity/3.5.3
fi

singularity pull https://depot.galaxyproject.org/singularity/samtools:1.10--h9402c20_2
mv -v samtools:1.10--h9402c20_2 singularity-samtools-1.10.0.sif
