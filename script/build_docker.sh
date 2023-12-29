#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
set -x

docker build -t ros2_custom:humble-desktop-full -f docker/ros2_humble_desktop_full.Dockerfile .
docker images ros2_custom:humble-desktop-full
