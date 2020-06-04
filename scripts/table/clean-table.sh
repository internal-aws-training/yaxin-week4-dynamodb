#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb delete-table --table-name Project_Yaxin
