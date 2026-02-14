# Production Case 01 - CI Breaks on Platform

## Incident

Yesterday everything was green.

Today CI reports that the macOS build fails, while Linux builds successfully.

This case comes in two "doneness levels":
- welldone - common and straightforward failure
- rare - subtle configuration mismatch that requires deeper analysis

Pick one and start from its README.

Platforms:
- //platforms:linux_platform
- //platforms:mac_platform
