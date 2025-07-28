#! /usr/bin/bash

PS3="Select a database operation by number: "
MAIN_DIR="$(cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")" && pwd)"
if ! [[ -d "$HOME/dbs" ]] ; then
	mkdir "$HOME/dbs"
	echo "We created you the databases directory "dbs" located in your home directory"
fi
DB_DIR="$(echo ~/dbs)"
. "$MAIN_DIR/helper"
select option in "Create Database" "List Databases" "Connect to Database" "Drop Database" "Exit"
do
case $option in
    "Create Database")
        . "$MAIN_DIR/db_operations/create_database"
        listMainMenu
        ;;
    "List Databases")
        . "$MAIN_DIR/db_operations/list_databases"
        listMainMenu
        ;;
    "Connect to Database")
        . "$MAIN_DIR/db_operations/connect_database"
        listMainMenu
        ;;
    "Drop Database") 
        . "$MAIN_DIR/db_operations/drop_database" $MAIN_DIR
        listMainMenu
        ;;  
    Exit)
        echo "Exiting..."
        break
        ;;
    *)
        echo "Enter a valid option"
        listMainMenu
        ;;
esac
done
