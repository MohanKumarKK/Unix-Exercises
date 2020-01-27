#!/bin/bash
echo please enter the path of the file
read file_paths
grep 'FAILED' $file_paths > failed.txt
grep -o "http.*s3" < failed.txt
rm failed.txt
