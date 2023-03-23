#!/usr/bin/env bash
# quick script to test exfil ports
# using mubix letmeoutofyour.net website
# omar santos @santosomor

for i in $(eval echo {$1..$2})
do
    echo "Is port $i open for potential exfil?"
    curl http://letmeoutofyour.net:$in
    sleep .5
done
