#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb scan \
    --table-name Project_Yaxin \
    --filter-expression "memberName = :filter" \
    --expression-attribute-values '{":filter":{"S":"testMemterName3"}}'