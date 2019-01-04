#!/bin/bash

set -e

BACKUP="backup1.local"
MYSQL="mysql1.local"

start_vagrant() {
    echo "Starting servers ..."
    echo ""
    cd $BACKUP && vagrant up && cd ../$MYSQL && vagrant up
}

stop_vagrant() {
    echo "Halting servers ..."
    cd $BACKUP && vagrant halt && cd ../$MYSQL && vagrant halt
}

status_vagrant() {
    echo "Getting status of servers ..."
    echo ""
    cd $BACKUP && vagrant status && cd ../$MYSQL && vagrant status
}

reload_vagrant() {
    echo "Restarting servers and reloading Vagrantfiles ..."
    cd $BACKUP && vagrant reload && cd ../$MYSQL && vagrant reload
}

destroy_vagrant() {
    echo "Destroy servers ..."
    cd $BACKUP && vagrant destroy && cd ../$MYSQL && vagrant destroy
}

case "$1" in
    start)
        start_vagrant
        ;;

    stop)
        stop_vagrant
        ;;

    status)
        status_vagrant
        ;;

    reload)
        reload_vagrant
        ;;

    destroy)
        destroy_vagrant
        ;;

    *)
        echo "Usage: $0 {start|stop|status|reload|destroy}"
        exit 1
        ;;

esac

exit 0
