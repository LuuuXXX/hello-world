#!/usr/bin/env bash

set -e

if [ -n "$CI_JOB_NAME" ]; then
    echo "[CI_JOB_NAME=$CI_JOB_NAME]"
fi

if [ -z "${IMAGE+x}" ]; then
    bash ci/scripts/run-without-docker.sh
else
    bash ci/scripts/run-with-docker.sh "${IMAGE}"
fi
