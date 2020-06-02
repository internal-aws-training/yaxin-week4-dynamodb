#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb query \
    --table-name Project_Yaxin \
    --key-condition-expression "projectName = :name" \
    --expression-attribute-values  '{":name":{"S":"testName2"}}'