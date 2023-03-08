#!/bin/bash
apt install timescaledb-2-postgresql-12
timescaledb-tune --quiet --yes
