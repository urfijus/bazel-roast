# Lab 01: select() + platforms (realistic-ish)

In big repos you often need different implementations per target platform.
This lab simulates a common failure: a `select()` picks a platform-specific file, but one platform points to something that doesn't exist.

Rules:
- start from `broken/`
- you may edit BUILD files and add missing source files

## Repro

From repo root:

```bash
# 1) Linux build (should succeed)
bazel build //labs/lab01_select_platform/broken:report --platforms=//platforms:linux

# 2) Mac build (should FAIL)
bazel build //labs/lab01_select_platform/broken:report --platforms=//platforms:mac
```

## Task

Make BOTH commands succeed.

Tip: use `bazel cquery` to see which branch `select()` chooses under each `--platforms` value.

## Check

After you think you're done:

```bash
./scripts/check_lab01.sh
```
