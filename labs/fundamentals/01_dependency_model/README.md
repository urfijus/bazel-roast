# 01 – Dependency Model (Explicit Inputs)

## Context

Bazel only knows about files and targets you explicitly declare.
If a rule uses a file but does not list it as an input, Bazel fails during analysis.

This lab demonstrates the idea behind "explicit dependencies" in the simplest possible way.

## Reproduce

Run:

bazel build //labs/fundamentals/01_dependency_model/broken:app

It should fail with an error explaining that `util.txt` is referenced but not declared as an input.

## Task

Fix the `broken/BUILD.bazel` file so the build succeeds.

Do not change the command or the text files.
Only fix the declared inputs.

## Verify

After fixing it, this should succeed:

bazel build //labs/fundamentals/01_dependency_model/broken:app

For reference, a working solution exists in `fixed/`.
