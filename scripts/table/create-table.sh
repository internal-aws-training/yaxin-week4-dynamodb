#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb create-table \
    --table-name Project_Yaxin \
    --attribute-definitions \
        AttributeName=projectName,AttributeType=S \
        AttributeName=projectType,AttributeType=S \
    --key-schema AttributeName=projectName,KeyType=HASH AttributeName=projectType,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1