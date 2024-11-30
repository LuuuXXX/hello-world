#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -n "$CI_JOB_NAME" ]; then
    echo "[CI_JOB_NAME=$CI_JOB_NAME]"
fi

if [[ "$CI_JOB_NAME" == *msvc* ]]; then
    chmod +x ci/scripts/run-without-docker.sh
    ci/scripts/run-without-docker.sh
else
    chmod +x ci/scripts/run-with-docker.sh
    ci/scripts/run-with-docker.sh "${CI_JOB_NAME}"
fi

chmod +x ci/scripts/package-artifacts.sh
ci/scripts/package-artifacts.sh