#!/bin/bash

cd $(dirname "${0}")

[ -f init.d/* ] && {
  echo "launching docker init.d scripts"
  for FILE in init.d/*; do
    echo "  * ${FILE}"
    "${FILE}" 
  done
}

# launch our process manager 
supervisord -n -c /etc/supervisor/supervisord.conf
