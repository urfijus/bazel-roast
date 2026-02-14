Lab 01 solution (one possible fix)

This version includes the missing mac input file.

Try:
  bazel build //:report --platforms=//platforms:linux
  bazel build //:report --platforms=//platforms:mac
