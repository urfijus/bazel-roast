# welldone - Missing Platform-Specific Input

## Reproduce

Linux (should succeed):
bazel build //labs/production_cases/01_ci_breaks_on_platform/welldone/broken:report --platforms=//platforms:linux_platform

macOS (should fail):
bazel build //labs/production_cases/01_ci_breaks_on_platform/welldone/broken:report --platforms=//platforms:mac_platform

## Task

Fix the build so it works on both platforms, keeping Linux behavior unchanged.
