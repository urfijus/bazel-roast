# Fundamentals 01 - Dependency Model

## Context

Bazel requires explicit dependencies.

Even if your code references another target, the build fails unless the dependency is declared in the BUILD file.

## Reproduce

bazel build //labs/fundamentals/01_dependency_model/broken:app

Expected: the build fails.

## Task

Fix BUILD.bazel so the target builds successfully.

Rules:
- Do not modify source files.
- Only fix BUILD.bazel.
