#!/bin/bash

# get name of DB to import as
# get path of DB dump
# create DB with provided name
# pg_restore to newly created DB

if [ $# -eq 0 ]; then
    echo "Usage: $(basename $0) [-d <DATABASE NAME>] [-b <BACKUP FILE>]"
    echo "  -d specifies the name of the database to be created"
    echo "  -b specifies the backup that will be restored into the new database"
    exit 0
else
    while getopts "d:b:" opt; do
        case $opt in
        d) dbname="$OPTARG" ;;
        b) bakdir="$OPTARG" ;;
        esac
    done
    shift $((OPTIND - 1))
    BACKUPSHORTNAME=$(echo $bakdir | rev | cut -d\/ -f1 | rev)
    echo "Restoring $BACKUPSHORTNAME to $dbname"
    psql -c "CREATE DATABASE \"$dbname\""
    pg_restore -d $dbname $bakdir
fi
