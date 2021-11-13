#!/bin/bash

FILENAME='filename'

export SSHPASS='PASSWORD'
sshpass -e ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -oBatchMode=no -p PORT -T LOGIN@HOST << EOF
cd /home/source/
(ls $FILENAME && echo 1) || echo 0
EOF
exit
