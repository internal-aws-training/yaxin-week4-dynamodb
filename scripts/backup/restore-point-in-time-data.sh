#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb restore-table-to-point-in-time \
  --source-table-name Project_Yaxin \
  --target-table-name Project_MinutesAgo_Yaxin \
  --use-latest-restorable-time
