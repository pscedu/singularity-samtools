#!/bin/bash

# Copyright © 2024 Pittsburgh Supercomputing Center.
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

VERSION=1.21
PACKAGE=samtools
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

STORAGES=(/ocean /bil /hive /local)

OPTIONS=""
for STORAGE in "${STORAGES[@]}"
do
        if [ -d "$STORAGE" ]; then
                OPTIONS=$OPTIONS" -B $STORAGE"
        fi
done

if id | grep -q hubmap && [ -d "/hive" ]; then
        OPTIONS=$OPTIONS" -B /hive"
fi

if id | grep -q bil && [ -d "/bil" ]; then
        OPTIONS=$OPTIONS" -B /bil"
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
