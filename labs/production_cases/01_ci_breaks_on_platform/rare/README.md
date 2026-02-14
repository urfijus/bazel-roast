# rare - Transitive Configuration Trap

In this variant, the top-level target looks fine, but the platform-specific selection happens inside a transitive dependency.

## Reproduce

Linux (should succeed):
bazel build //labs/production_cases/01_ci_breaks_on_platform/rare/broken:report --platforms=//platforms:linux_platform

macOS (should fail):
bazel build //labs/production_cases/01_ci_breaks_on_platform/rare/broken:report --platforms=//platforms:mac_platform

## Task

Fix the macOS build while keeping Linux working.

Bonus:
bazel cquery "deps(//labs/production_cases/01_ci_breaks_on_platform/rare/broken:report)" --platforms=//platforms:mac_platform
