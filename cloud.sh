#!/bin/bash
cd .circleci/files
aws cloudformation deploy --template-file cloudfront.yml --stack-name InitialStack --parameter-overrides WorkflowID=udapeople-877104777342 --profile="jen"
# aws ec2 describe-instances  --query 'Reservations[*].Instances[*].PublicIpAddress' --filters "Name=tag:Project,Values=udapeople" --profile="udacity" --output text >> inventory.txt