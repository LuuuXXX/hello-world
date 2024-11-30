#!/usr/bin/env bash

set -e

# windows
command="cargo build --release"

echo "Execiting ${command}"
sh -x -c "$command" 
