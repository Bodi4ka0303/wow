#!/bin/bash
sudo apt update
sudo apt install --no-install-recommends zabbix-server-pgsql postgresql-client-common postgresql-client12 php-pgsql
wget --content-disposition
https://packagecloud.io/timescale/timescaledb/packages/ubuntu/focal/timescaledb-2-loader-postgresql12_2.3.1~ubuntu20.04_amd64.deb/download.deb
sudo apt install ./timescaledb-2-loader-postgresql-12_2.3.1~ubuntu20.04_amd64.deb
sudo apt install zabbix-apache-conf zabbix-frontend-php postgresql-12 timescaledb-2-2.3.1-postgresql-12
