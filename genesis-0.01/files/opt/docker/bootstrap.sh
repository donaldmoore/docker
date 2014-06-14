#!/bin/bash

cd $(dirname "${0}")

for FILE in conf.d/*; do
  echo "executing: ${FILE}"
  "${FILE}" 
done

# launch our process manager 
supervisord -n -c /etc/supervisor/supervisord.conf
