#!/bin/bash

mysql -h poi-mysql -D${MYSQL_POI_DATABASE} -u${MYSQL_POI_USER} -p${MYSQL_POI_PASSWORD} < /opt/poiServer/dev/init.sql

cd /opt/poiServer && npm start -- --config=/opt/poiServer/config/poi.json