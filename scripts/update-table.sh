#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb update-table \
    --table-name Project_Yaxin \
    --attribute-definitions \
        AttributeName=memberName,AttributeType=S \
        AttributeName=startDate,AttributeType=S \
    --provisioned-throughput ReadCapacityUnits=3,WriteCapacityUnits=3