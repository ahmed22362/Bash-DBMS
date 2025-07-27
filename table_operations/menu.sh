#! /usr/bin/bash

PS3="Select a Table operation by number: "
FILE_DIR="$(cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")" && pwd)"
DB_NAME=$1

if [[ -z $DB_NAME ]]
then
    echo "No database selected. Please connect to a database first."
    . $FILE_DIR/../main.sh
fi
echo "---------------------------------------------"
select option in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Update From Table" "Exit"
do
case $option in
    "Create Table")
        echo "Creating a new table in database $DB_NAME..."
        . "$FILE_DIR/create_table" 
        ;;
    "Insert into Table")
        echo "Inserting into a table in database $DB_NAME..."
        . "$FILE_DIR/insert_into_table"
        ;;
    "Update From Table")
        echo "Updating a table in database $DB_NAME..."
        . "$FILE_DIR/update_from_table"
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
