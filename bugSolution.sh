#!/bin/bash

# This script demonstrates a solution to the race condition bug using flock.

# Create two files
touch file1.txt
touch file2.txt

# Use flock to acquire a lock before writing to the files
flock -x <(echo "Process 1" > file1.txt) 

flock -x <(echo "Process 2" > file2.txt)

# Print the content of file1.txt and file2.txt.
echo "File 1 content:"
cat file1.txt
echo "File 2 content:"
cat file2.txt