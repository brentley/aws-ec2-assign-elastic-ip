#!/usr/bin/env bash
set -u

GIT_SHA=$(shell git rev-parse HEAD 2>/dev/null | cut -c 1-7)

name="aws-ec2-assign-elastic-ip"
version="${GIT_SHA}"
image="${image:-brentley/aws-ec2-assign-elastic-ip}"

docker push $image:$version
docker push $image:latest
