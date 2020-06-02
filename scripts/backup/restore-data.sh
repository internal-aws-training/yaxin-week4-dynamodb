#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb describe-backup \
  --backup-arn arn:aws:dynamodb:ap-southeast-1:494526681395:table/Project_Yaxin/backup/01591104065033-7c5dd04b

aws dynamodb restore-table-from-backup \
  --target-table-name Project_Restore_Yaxin \
  --backup-arn arn:aws:dynamodb:ap-southeast-1:494526681395:table/Project_Yaxin/backup/01591104065033-7c5dd04b
