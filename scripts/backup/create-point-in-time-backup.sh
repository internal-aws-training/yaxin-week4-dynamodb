#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})/..

aws dynamodb update-continuous-backups \
  --table-name Project_Yaxin \
  --point-in-time-recovery-specification PointInTimeRecoveryEnabled=True


#{
#    "ContinuousBackupsDescription": {
#        "PointInTimeRecoveryDescription": {
#            "PointInTimeRecoveryStatus": "ENABLED",
#            "EarliestRestorableDateTime": 1591105422.0,
#            "LatestRestorableDateTime": 1591105422.0
#        },
#        "ContinuousBackupsStatus": "ENABLED"
#    }
#}