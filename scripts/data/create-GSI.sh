#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb update-table \
    --table-name Project_Yaxin \
    --attribute-definitions \
        AttributeName=memberName,AttributeType=S \
    --global-secondary-index-updates \
    "[{\"Create\":{\"IndexName\": \"memberName-index\",\"KeySchema\":[{\"AttributeName\":\"memberName\",\"KeyType\":\"HASH\"}], \
    \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5},\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"