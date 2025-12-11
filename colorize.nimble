# Package

version       = "0.2.0"
author        = "Mark Molnar"
description   = "Simple lightweight package to colorize your terminal output"
license       = "MIT"

# Dependencies

requires "nim >= 0.16.0"

# Tasks

task test, "Run the test suite":
  exec "nim c -r tests/test_colorize.nim"

