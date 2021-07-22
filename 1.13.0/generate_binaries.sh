#!/bin/bash

# Copyright © 2021 Pittsburgh Supercomputing Center.
# All Rights Reserved.

TOOLS=(ace2sam                md5fa                  samtools.pl
blast2sam.pl           md5sum-lite            seq_cache_populate.pl
bowtie2sam.pl          novo2sam.pl            soap2sam.pl
export2sam.pl          plot-ampliconstats     wgsim
fasta-sanitize.pl      plot-bamstats          wgsim_eval.pl
interpolate_sam.pl     psl2sam.pl             zoom2sam.pl
maq2sam-long           sam2vcf.pl
maq2sam-short          samtools)

cat << EOF > template
#!/bin/bash

VERSION=1.13.0
PACKAGE=samtools
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
        OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
        OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
        echo "* "$TOOL
        cp template $TOOL
        sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
        chmod +x $TOOL
        git add $TOOL
done

rm -f template
