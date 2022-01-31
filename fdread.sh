
#!/usr/bin/env bash
# Let us assign the file descriptor to file for input
# fd # 3 is Input file
exec 3< /etc/resolv.conf

# Execute cat commands and read input from
# the file descriptor (fd) # 3 i.e read input from /etc/resolv.conf
cat <&3     # Duplicating File Descriptor

# Close fd # 3
exec 3<&-   # Closing File Descriptor