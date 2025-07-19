#! /usr/bin/bash

PS3="Select a Table operation by number: "
echo $1
select option in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Update Table" "Exit"
do
case $option in

    Exit)
        echo "Exiting..."
        break
        ;;
    *)
        echo "Enter a valid option"
        ;;
esac
done