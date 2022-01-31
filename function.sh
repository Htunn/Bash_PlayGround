#!/bin/env bash

# the function die assigns a default value if $1 argument is missing:

die(){
    local error=${1:-Undefined error}
    echo "$0: $LINE $error"
}
#call die() with an argument
die "File not found"

#call die() without argumenb
die