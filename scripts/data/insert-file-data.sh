#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb batch-write-item \
    --request-items file://json/insertData.json