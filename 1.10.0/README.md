# README 

## About
Source code repository can be found [here](https://github.com/samtools/samtools).

## Building the container for Bridges (or similar)
There is no need to build a container, because an image is already available from [Biocontainers](https://biocontainers.pro/#/tools/samtools), hence all you need to do is run

```
bash ./pull.sh
```

to download the image from the repository.

## Installing the container on Bridges (or similar)
Copy the

* `SIF` file
* and the `samtools` script 

to `/opt/packages/samtools/1.10.0`.
