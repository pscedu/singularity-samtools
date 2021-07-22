#!/bin/bash

# Copyright © 2021 Pittsburgh Supercomputing Center.
# All Rights Reserved.

TOOLS=(ace2sam                md5fa                  samtools
blast2sam.pl           md5sum-lite            samtools.pl
bowtie2sam.pl          novo2sam.pl            seq_cache_populate.pl
export2sam.pl          plot-ampliconstats     soap2sam.pl
interpolate_sam.pl     plot-bamstats          wgsim
maq2sam-long           psl2sam.pl             wgsim_eval.pl
maq2sam-short          sam2vcf.pl             zoom2sam.pl)

cat << EOF > template
#!/bin/bash

VERSION=1.11.0
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
