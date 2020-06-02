#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb create-backup --table-name Project_Yaxin \
  --backup-name Project_Backup_Yaxin
