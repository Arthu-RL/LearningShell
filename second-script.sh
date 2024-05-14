#! /bin/bash

originalFileName="main-10_11_2023-09:33:373rd (copy)[]$@#.sql"

# Use double quotes around the filename to handle special characters
modifiedFileName=$(echo "$originalFileName" | tr -d '()\\[\\]{}\\ #@$%?&*!')

# Print both the original and modified filenames
echo "Original File Name: $originalFileName"
echo "Modified File Name: $modifiedFileName"

