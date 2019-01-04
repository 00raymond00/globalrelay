#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PB="/etc/ansible/import_mysql.yml"

/usr/bin/ansible-playbook $PB

if [ "$?" -eq 0 ]; then
        echo "MySQL import successful!"
else
        echo "MySQL import didn't perform successfully."
fi
