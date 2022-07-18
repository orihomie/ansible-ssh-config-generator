#!/usr/bin/env bash

docker stop ubuntu-host && docker rm ubuntu-host

docker run \
  -it -d \
  --platform=linux/amd64 \
  -v $(pwd):/root \
  --name runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  ubuntu:20.04
