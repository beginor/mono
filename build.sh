#!/bin/bash
export IMG=beginor/mono:5.10.0.140
docker build --no-cache --rm -t $IMG . 
docker run --rm --interactive --tty $IMG
