#! /usr/bin/bash

PS3="Select a database operation by number: "

select option in "Create Database" "List Databases" "Connect to Database" "Drop Database" "Exit"
do
case $option in
    "Create Database")
        . ./db_operations/create_database
        ;;
    "List Databases")
        . ./db_operations/list_databases
        ;;
    "Connect to Database")
        . ./db_operations/connect_database
        ;;
    "Drop Database") 
        . ./db_operations/drop_database
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
