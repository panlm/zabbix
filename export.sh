#!/bin/bash
export ZABBIX_USERNAME=Admin
export ZABBIX_PASSWORD=zabbix

outputdir=/root/git/zabbix/conf

if [ -d $outputdir ] ; then
    /usr/bin/zabbix-cli -c /etc/zabbix-cli.conf  -C "export_configuration $outputdir templates '#all#'"
else
    echo "directory does not existe."
fi

