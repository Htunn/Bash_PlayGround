#!/bin/env bash

set -n #only read command but do not execute them
set -o noexec
echo "This is a test"
#no file is created as bash will only read commands but do not execute them
>tmp/debug.txt

