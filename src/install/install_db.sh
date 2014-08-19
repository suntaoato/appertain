#!/bin/bash
for f in *.sql;
 do
  echo "${f}";
  mysql -u root -ppassword appertain < "${f}";
done
