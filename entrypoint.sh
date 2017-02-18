#!/bin/bash

cd /tmp
aws s3 cp s3://${S3_BUCKET}/jira_latest.tar.gz . --region eu-central-1
tar -zxvf jira_latest.tar.gz
cp -r var/atlassian/jira /var/atlassian/ 
/opt/atlassian/jira/bin/catalina.sh run