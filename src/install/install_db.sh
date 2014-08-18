#!/bin/bash
for f in *.sql;
 do
  echo $f;
  mysql -u root appertain < $f;
done
