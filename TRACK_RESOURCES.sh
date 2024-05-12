#!/bin/bash

###################################
# what we doing ?
# making a script to check or track the health report for AWS rescource.
# Author: Deepak 
# version: v1
####################################
# jq : jason parcel used to list specific option
# AWS S3
# AWS LAMBDA
# AWS EC2
# AWS IAM USER

set -x  #DEBUG MODE
set -e  # EXIT SCRIPT WHEN FIND ERROR
set -o pipelinefail 

# LIST AWS S3 
echo "Print the list of S3"
aws s3 ls 

# LIST AWS EC2
echo "Print the list of EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

# LIST AWS LAMBDA
echo "Print the list of LAMBDA"
aws lambda list-functions

# LIST IAM USERS
echo "Print the list of IAM USER"
aws iam list-users




