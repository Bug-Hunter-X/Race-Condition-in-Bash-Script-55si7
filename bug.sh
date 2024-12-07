#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes simultaneously that try to write to the files
(echo "Process 1" > file1.txt &) 
(echo "Process 2" > file2.txt &) 

# Wait for both processes to finish
wait

# Print the content of file1.txt and file2.txt. 
echo "File 1 content:"
cat file1.txt
echo "File 2 content:"
cat file2.txt