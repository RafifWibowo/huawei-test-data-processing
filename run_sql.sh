#!/bin/bash

read -p "Enter MySQL username: " username

read -sp "Enter MySQL password: " password 
echo ""

# Define the order of SQL files in an array
sql_files=("init_database.sql" "add_albert.sql" "update_engineer_salary.sql" "show_total_salary_2021.sql" "show_most_three_exp.sql" "show_engineer_less_three_exp.sql"
)

for file in "${sql_files[@]}"; do
  if [[ -f "$file" ]]; then
    echo "Executing: $file"
    mysql -u "$username" -p"$password" < "$file"
    echo ""
  else
    echo "Warning: File '$file' not found."
    echo ""
  fi
done