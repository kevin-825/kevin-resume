#!/bin/bash

# MODULE: resume_builder.sh
# DESCRIPTION: A simple wrapper for the RenderCV Docker container

IMAGE_NAME="kflyn825/resume-build:latest"
TARGET_FILE=${1:-"resume-zh.yaml"}

echo ">>> Starting Resume Build for: $TARGET_FILE"
rm -rf rendercv_output
docker run --rm \
    -u $(id -u):$(id -g) \
    -v "$(pwd)":/workspace \
    $IMAGE_NAME render "$TARGET_FILE"

if [ $? -eq 0 ]; then
    echo ">>> Build Success! Check 'rendercv_output/' directory."
else
    echo ">>> Build Failed!"
    exit 1
fi