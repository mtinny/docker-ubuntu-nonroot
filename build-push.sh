#!/bin/bash

repo=mtinny/ubuntu-nonroot
tag=${tag:-v0.0.3}

image=${repo}:${tag}
limage=${repo}:latest

docker build -t ${image} .
docker push ${image}

docker tag ${image} ${limage}
docker push ${limage}
