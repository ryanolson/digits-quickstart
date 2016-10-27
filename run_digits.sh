#!/bin/bash
mkdir -p data
mkdir -p jobs
nvidia-docker run --rm -ti -v $PWD/data:/data -v $PWD/jobs:/jobs -p 8000:34448 nvidia/digits
