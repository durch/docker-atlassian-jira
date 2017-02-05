#!/bin/bash

set -e

DOW=$(date +%A | tr '[:upper:]' '[:lower:]')
FN=jira_${DOW}
FNEXT=${FN}.tar.gz

tar -czvf /tmp/${FNEXT} ${JIRA_HOME}
aws s3 cp /tmp/${FNEXT} s3://${S3_BUCKET}/ --region eu-central-1
