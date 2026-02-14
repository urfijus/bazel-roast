#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "[lab01] linux build..."
bazel build //labs/lab01_select_platform/broken:report --platforms=//platforms:linux

echo "[lab01] mac build..."
bazel build //labs/lab01_select_platform/broken:report --platforms=//platforms:mac

echo "[lab01] OK"
