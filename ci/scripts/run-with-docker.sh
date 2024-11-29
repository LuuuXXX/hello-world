#!/usr/bin/env bash

set -e

# linux
image=""
while [[ $# -gt 0 ]]
do
  case "$1" in
    --dev)
      dev=1
      ;;
    *)
      if [ -n "$image" ]
      then
        echo "excepted single argument for the image value"
        exit 1
      fi
      image="$1"
      ;;
  esac
  shift
done

docker --version
source_dir="$(pwd)"
docker_dir="ci/docker"
command=(/bin/bash)

if [ -f "$docker_dir/$image/Dockerfile" ]; then
    dockerfile="$docker_dir/$image/Dockerfile"
    # build docker image.
    docker buildx build --rm -t rim-ci -f "$dockerfile"
    # run ther docker image.
    docker \
      run \
      --workdir /checkout/obj \
      --volume $source_dir:/checkout/obj \
      --init \
      --rm \
      rim-ci \
      "${command[@]}"
fi