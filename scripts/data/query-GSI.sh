#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

 aws dynamodb query \
    --table-name Project_Yaxin \
    --index-name memberName-index \
    --key-condition-expression "memberName = :name" \
    --expression-attribute-values  '{":name":{"S":"testMemterName5"}}'

            