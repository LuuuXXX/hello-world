#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -n "$CI_JOB_NAME" ]; then
    echo "[CI_JOB_NAME=$CI_JOB_NAME]"
fi

export

if [ -z "${IMAGE:-}" ]; then
    chmod +x ci/scripts/run-without-docker.sh
    ci/scripts/run-without-docker.sh
else
    chmod +x ci/scripts/run-with-docker.sh
    ci/scripts/run-with-docker.sh "${IMAGE}"
fi
