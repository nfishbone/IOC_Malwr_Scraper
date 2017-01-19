#!/bin/bash

curl --silent https://malwr.com/analysis/ | tr $'\n' '@' | sed 's/<tr>/\n<tr>/g; s/<\/tr>/<\/tr>\n/g; s/[ \t]*@[ \t]*/ /g' | sed -r -n 's/^.*([0-9a-fA-F]{32}).*(([0-9]{2,10}|[1-9])\/[0-9]{1,10}).*$/\1/gp' | tee -a /scripts/md5.txt && sort -u -o /scripts/md5.txt /scripts/md5.txt
unix2dos /scripts/md5.txt && mv /scripts/md5.txt /scripts/Archive/Malwr_md5_`date +\%F`_am.txt
unix2dos /scripts/md5.txt && mv /scripts/md5.txt /scripts/Archive/Malwr_md5_`date +\%F`_pm.txt