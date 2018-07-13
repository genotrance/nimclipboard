# Package

version       = "0.1.0"
author        = "genotrance"
description   = "Nim wrapper for libclipboard"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.3.0"

import distros

var cmd = ""
if detectOs(Windows):
    cmd = "cmd /c "

task setup, "Download and generate":
    exec cmd & "nimgen nimclipboard.cfg"

before install:
    setupTask()

task test, "Test nimclipboard":
    exec "nim c -r tests/tclip.nim"
