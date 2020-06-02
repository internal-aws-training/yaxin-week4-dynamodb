#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb get-item --consistent-read \
    --table-name Project_Yaxin \
    --key '{ "projectName": {"S": "testName"}, "projectType": {"S": "testType"}}'