#!/usr/bin/env bash

set -e

if [ -n "$CI_JOB_NAME" ]; then
    echo "[CI_JOB_NAME=$CI_JOB_NAME]"
fi

echo "hello world"