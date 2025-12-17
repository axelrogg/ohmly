#!/usr/bin/env sh

# Exports Poetry documentation dependencies to docs/requirements.txt
# Used by Read the Docs for reproducible builds.

set -eu

OUTPUT_FILE="docs/requirements.txt"

echo "Exporting documentation dependencies to ${OUTPUT_FILE}..."

# Ensure docs directory exists
mkdir -p docs

# Export only the dev dependency group from Poetry
poetry export \
  -f requirements.txt \
  --only dev \
  --without-hashes \
  -o "${OUTPUT_FILE}"

echo "✔ Documentation requirements exported successfully."

