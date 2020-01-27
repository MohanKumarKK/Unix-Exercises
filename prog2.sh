#!/bin/sh
echo please ente the file path
read file_path
grep 'RuntimeError: Media' $file_path > runtime.txt
grep -Eo "Media *[0-9]*" < runtime.txt | sort -u > media_error.txt
