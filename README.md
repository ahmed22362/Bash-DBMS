# Bash Shell Script Database Management System (DBMS)

This project is a basic database management system implemented using Bash shell scripting. It simulates the behavior of a DBMS using directories and files to store and manage data.

## Overview

The system allows users to create and manage multiple databases from the command line. Each database is represented as a directory, and each table within a database is stored as a file. Metadata (like column names and data types) is stored in a separate `.meta` file for each table, and actual data is stored in a corresponding `.data` file.

The application is entirely menu-driven and runs in the terminal.

## Main Menu Features

When you start the application, you will see a main menu with the following options:

* Create Database
* List Databases
* Connect to Database
* Drop Database

## Database Menu Features

After connecting to a specific database, a new menu appears with the following options:

* Create Table
* List Tables
* Drop Table
* Insert into Table
* Select from Table
* Delete from Table
* Update Table

## How It Works

* Each database is a directory.
* Each table is represented by two files:

  * `table_name.meta` for structure (columns and types).
  * `table_name.data` for rows (data).
* When inserting data, the script reads the metadata and validates input against the defined data types.

## Why This Exists

This project was built as a way to simulate a database system without using an actual DBMS. It helps understand how databases work behind the scenes and offers a practical exercise in shell scripting and file manipulation.

## Running the Project

1. Make sure you have a Bash environment (Linux, macOS, or WSL).
2. Clone the project repository.
3. Run the main script:

   ```bash
   ./main.sh
   ```
4. Use the menu to create databases and tables, and insert or query data.

## Requirements

* Bash (no external dependencies)
* Basic familiarity with command-line usage


