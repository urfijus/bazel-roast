#!/usr/bin/env bash
set -euo pipefail

if command -v bazelisk >/dev/null 2>&1; then
  echo "bazelisk already installed"
  exit 0
fi

if command -v bazel >/dev/null 2>&1; then
  echo "bazel is present; continuing without bazelisk"
  exit 0
fi

echo "Installing bazelisk into /usr/local/bin (requires sudo)..."

BINARY_URL="https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-amd64"

sudo curl -fL "$BINARY_URL" -o /usr/local/bin/bazelisk
sudo chmod +x /usr/local/bin/bazelisk

# Provide a 'bazel' shim for convenience.
if ! command -v bazel >/dev/null 2>&1; then
  sudo ln -s /usr/local/bin/bazelisk /usr/local/bin/bazel || true
fi

echo "Done. Try: bazel --version"
