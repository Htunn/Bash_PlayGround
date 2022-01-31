#!/usr/bin/env bash
# Let us assign the file descriptor to file for output
# fd # 3 is output file
exec 3> /tmp/output.txt     # user define file descriptors

# Execute echo command and # Send output to
# The file descriptor (fd) # 3 i.e write output to /tmp/output.txt
echo "This is a test" >&3       # Duplication File Descriptor

# Write data command output to fd $ 3
date >&3

# close fd # 3 
exec 3<&-       # Closing File Descriptor