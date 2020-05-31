#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb put-item \
    --table-name Project_Yaxin  \
    --item '{
        "projectName": {"S": "testName"}, 
        "projectType": {"S": "testType"},
        "memberName": {"S": "testMemterName"},
        "startDate": {"S": "2020-5-31"},
        "integer": {"N": "10"},
        "blob": {"B": "blob"},
        "stringArray": {"SS": ["a", "b", "c", "3"]},
        "integerArray": {"NS": ["0", "2"]},
        "blobArray": {"BS": ["a", "b", "c", "3"]},
        "null": {"NULL": true},
        "boolean": {"BOOL": false},
        "tuple": {"L": [{"S":"aa"}, {"N":"22"}]},
        "map": {"M": {"key": {"S": "aaa"}}}
        }'