
  # Bazel Roast

This repository contains hands-on labs and production-style incident scenarios designed to help engineers understand how Bazel behaves in real systems. Codespaces-friendly.

The goal is not just to fix builds.
The goal is to understand how Bazel models dependencies, configuration, platforms, and build behavior.

---

## Repository Structure

```
labs/
  fundamentals/
  production_cases/
```

---

## Fundamentals

The `fundamentals` folder contains structured learning labs.

These are designed for engineers who are new to Bazel or want to strengthen their understanding of core concepts such as:

* Explicit dependencies
* Visibility boundaries
* Dependency graph analysis
* Configuration and select
* Build actions and incrementality

Each lab typically contains:

* A short description
* A `broken` version
* A `fixed` version

Start here if you want to build a solid mental model of how Bazel works.

---

## Production Cases

The `production_cases` folder contains realistic incident scenarios inspired by real-world build issues in large monorepos.

Each case represents a production-style problem you might encounter in CI or during development.

Some cases include two variants:

* `welldone` – a common and straightforward issue
* `rare` – subtle, unexpected, and slightly uncomfortable

The scenario stays the same.
The reasoning required to solve it does not.

---

## How to Run

This repository is designed to run in GitHub Codespaces or any environment with Bazel installed.

To run a lab:

```
bazel build //labs/fundamentals/01_dependency_model/broken:app
```

To run a production case:

```
bazel build //labs/production_cases/01_ci_breaks_on_platform/welldone/broken:report --platforms=//platforms:linux_platform
```

Each lab or case contains its own README with reproduction steps and instructions.

