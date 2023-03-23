#!/usr/bin/env bash

# Capture an interrupt # 0
trap "echo 'Exit 0 Signal detected...'" 0

#display something
echo "This is a test"

#exist shell script with 0 signal
exit 0