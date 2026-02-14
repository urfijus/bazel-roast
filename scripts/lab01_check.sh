#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
LAB_DIR="$ROOT_DIR/labs/lab01_select_platform/broken"

cd "$LAB_DIR"

echo "[lab01] linux build..."
bazel build //:report --platforms=//platforms:linux

echo "[lab01] mac build..."
bazel build //:report --platforms=//platforms:mac

echo "[lab01] ok"
