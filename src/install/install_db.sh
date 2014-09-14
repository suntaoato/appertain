#!/bin/bash
## This is just a simple helper script to set up db while in development
## Replace this with proper setups
echo "Recreating Schema";
mysql -u root -ppassword appertain < ./appertain_schema.sql
echo "Done";
for t in tables/*.sql;
 do
  echo "${t}";
  mysql -u root -ppassword appertain < "${t}";
done
for r in routines/*.sql;
 do
  echo "${r}";
  mysql -u root -ppassword appertain < "${r}";
done
