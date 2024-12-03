# RecombMix docker container

This is a repo that contains the code for a docker container with RecombMix.

The original repositories can be found at https://github.com/ucfcbb/Recomb-Mix

## Installation

To install the container, run the following using docker:

```bash
docker pull befh/recombmix
```

or the following with singularity:

```bash
singularity pull --name recombmix.img docker://befh/recombmix:latest
```

To use with Snakemake, you do not need to install. Just put the following in the Snakefile:

```
container: 'docker://befh/recombmix:latest'
```

Then run with `snakemake --use-singularity` see https://snakemake.readthedocs.io/en/stable/snakefiles/deployment.html for more info.

## Usage

To run with docker, `docker run recombmix [ARGS]`.

To run with singularity, `singularity run recombmix.img [ARGS]`.
