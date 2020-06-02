#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb update-item \
    --table-name Project_Yaxin \
    --key '{ "projectName": {"S": "testName6"}, "projectType": {"S": "testType6"}}' \
    --update-expression "SET memberName = :newMN, startDate = :newSD" \
    --expression-attribute-values '{":newMN":{"S":"New!!!~~Member"}, ":newSD":{"S":"2030-06-01"}}' \
    --return-values ALL_NEW