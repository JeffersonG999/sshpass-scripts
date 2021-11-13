#!/bin/bash

for filename in /home/source/file_[0-9]*_*.pdf; do
if [ -f $filename ]; then
export SSHPASS='PASSWORD'
sshpass -e sftp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -oBatchMode=no login@host << EOF
cd /home/destination
put $filename
bye
EOF
rm $filename
fi
done
exit
