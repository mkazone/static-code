#!/bin/bash

# Define the S3 bucket name
S3_BUCKET="mkazone"   #variable

# Copy files with prefix 'test' to the specified S3 bucket
aws s3 cp . s3://$S3_BUCKET/ --recursive --exclude "*" --include "test*"

# Count the number of files with prefix 'test' in the current directory
FILE_COUNT=$(ls -1 test* 2>/dev/null | wc -l)

echo "Number of files copied: $FILE_COUNT"

echo "Files with prefix 'test' have been copied to s3://$S3_BUCKET/"