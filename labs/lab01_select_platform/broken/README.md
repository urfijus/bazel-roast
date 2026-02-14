Lab 01: select() + platforms (broken)

Goal: make the target build for both platforms using select() based on --platforms.

Commands (run from repo root):

Linux (should succeed):
  bazel build //labs/lab01_select_platform/broken:report --platforms=//platforms:linux

Mac (should fail):
  bazel build //labs/lab01_select_platform/broken:report --platforms=//platforms:mac

Your task:
- Fix the broken lab so BOTH commands succeed.
- Try to keep the fix small and appropriate for Bazel.

Tip:
- Use cquery to see what srcs are selected:
  bazel cquery //labs/lab01_select_platform/broken:report --platforms=//platforms:mac
