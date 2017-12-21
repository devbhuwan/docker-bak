#!/bin/sh
FORM_IO_HOME=/formio
#copy the original files
#cp ${FORM_IO_HOME}/config/default.json ${FORM_IO_HOME}/config/default.json.bak
#old_db_host='mongodb:\/\/.*:'
#new_db_host='mongodb://172.17.0.1:'
#sed -i "s|${old_db_host}|${new_db_host}|" ${FORM_IO_HOME}/config/default.json
yes | node main
