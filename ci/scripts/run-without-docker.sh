#!/usr/bin/env bash

set -e

echo "Runing without docker shell"

# windows
if [ ! -z "$SCRIPT" ]; then
    echo "Execiting ${SCRIPT}"
    sh -x -c "$SCRIPT"  
fi