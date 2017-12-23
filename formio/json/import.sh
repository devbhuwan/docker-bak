#!/bin/sh
cd /tmp/json
for i in *.json; do
  mongoimport --db formioapp --collection forms --type json --file ${i/.json/}
done
