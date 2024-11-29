#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -n "$CI_JOB_NAME" ]; then
    echo "[CI_JOB_NAME=$CI_JOB_NAME]"
fi

if [ -z "${IMAGE+x}" ]; then
    ci/scripts/run-without-docker.sh
else
    ci/scripts/run-with-docker.sh "${IMAGE}"
fi
