#!/usr/bin/env bash

set -e

# windows
SCRIPT="cargo build --release"

echo "Execiting ${SCRIPT}"
sh -x -c "$SCRIPT" 
