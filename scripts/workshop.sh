#!/usr/bin/env bash
set -euo pipefail

cmd=${1:-}

case "$cmd" in
  start)
    echo "Labs:"
    echo "  lab01  select() + platforms"
    echo
    echo "Try: scripts/workshop.sh lab01"
    ;;
  lab01)
    echo "Running lab01 check on the BROKEN version (it should fail on mac until fixed)."
    exec "$(dirname "$0")/lab01_check.sh"
    ;;
  *)
    echo "Usage: scripts/workshop.sh {start|lab01}"
    exit 2
    ;;
esac
