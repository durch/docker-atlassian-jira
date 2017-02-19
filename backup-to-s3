#!/bin/bash

set -e

DOW=$(date +%A | tr '[:upper:]' '[:lower:]')
FN=jira_${DOW}
FNEXT=${FN}.tar.gz
LATEST=jira_latest.tar.gz

tar -czvf /tmp/${FNEXT} ${JIRA_HOME}
cp /tmp/${FNEXT} /tmp/${LATEST}
aws s3 cp /tmp/${FNEXT} s3://${S3_BUCKET}/ --region eu-central-1
aws s3 cp /tmp/${LATEST} s3://${S3_BUCKET}/ --region eu-central-1
