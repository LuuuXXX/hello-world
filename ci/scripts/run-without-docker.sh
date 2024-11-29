#!/usr/bin/env bash

set -e

# windows
if [ ! -z "$SCRIPT" ]; then
    echo "Execiting ${SCRIPT}"
    sh -x -c "$SCRIPT"  
fi