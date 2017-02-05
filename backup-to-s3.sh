#!/bin/bash

set -e

DOW=$(date +%A | tr '[:upper:]' '[:lower:]')
FN=jira_${DOW}
FNEXT=${FN}.tar.gz

tar -czvf ${JIRA_HOME}/${FNEXT} ${JIRA_HOME}/data
aws s3 cp ${JIRA_HOME}/${FNEXT} s3://${S3_BUCKET}/ --region eu-central-1
