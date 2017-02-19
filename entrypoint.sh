#!/bin/bash

cd /tmp
# Get latest backup from S3 and replace whatever is in /var/atlassian/jira
aws s3 cp s3://${S3_BUCKET}/jira_latest.tar.gz . --region eu-central-1
tar -zxvf jira_latest.tar.gz
cp -r var/atlassian/jira /var/atlassian/ 
# Start cron
/etc/init.d/cron start
# Run catalina in foreground
/opt/atlassian/jira/bin/catalina.sh run
