#!/usr/bin/env sh

set -e

pip install esp-idf-sbom
python -m esp_idf_sbom manifest check /github/workspace
