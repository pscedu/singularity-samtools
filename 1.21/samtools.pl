#!/bin/bash

VERSION=1.21
PACKAGE=samtools
TOOL=samtools.pl
DIRECTORY=$(dirname $0)

STORAGES=(/ocean /bil /hive /local)

OPTIONS=""
for STORAGE in ""
do
        if [ -d "" ]; then
                OPTIONS=" -B "
        fi
done

if id | grep -q hubmap && [ -d "/hive" ]; then
        OPTIONS=" -B /hive"
fi

if id | grep -q bil && [ -d "/bil" ]; then
        OPTIONS=" -B /bil"
fi

singularity exec $OPTIONS $DIRECTORY/singularity-$PACKAGE-$VERSION.sif $TOOL "$@"
