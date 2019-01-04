#!/bin/bash

PB="/etc/ansible/backup_mysql.yml"

/usr/bin/ansible-playbook $PB

if [ "$?" -eq 0 ]; then
	echo "Mysqldump successful!"
else
	echo "Mysqldump didn't perform successfully."
fi
