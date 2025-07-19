#! /usr/bin/bash

PS3="Select a database operation by number: "
SCRIPT_DIR="$(cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")" && pwd)"

echo ${BASH_SOURCE[0]} script directory: $SCRIPT_DIR
select option in "Create Database" "List Databases" "Connect to Database" "Drop Database" "Exit"
do
case $option in
    "Create Database")
        . "$SCRIPT_DIR/db_operations/create_database"
        ;;
    "List Databases")
        . "$SCRIPT_DIR/db_operations/list_databases"
        ;;
    "Connect to Database")
        . "$SCRIPT_DIR/db_operations/connect_database"
        ;;
    "Drop Database") 
        . "$SCRIPT_DIR/db_operations/drop_database" $SCRIPT_DIR
        ;;  
    Exit)
        echo "Exiting..."
        break
        ;;
    *)
        echo "Enter a valid option"
        ;;
esac
done
