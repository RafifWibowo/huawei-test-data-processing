#!/bin/bash

read -p "Enter MySQL username: " username

read -sp "Enter MySQL password: " password 
echo ""

sql_files=("sql_files/init_database.sql" "sql_files/add_albert.sql" "sql_files/update_engineer_salary.sql" "sql_files/show_total_salary_2021.sql" "sql_files/show_most_three_exp.sql" "sql_files/show_engineer_less_three_exp.sql"
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