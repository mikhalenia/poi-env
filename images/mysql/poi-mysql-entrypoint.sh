#!/bin/bash

mount -o rw,remount /sys
chmod a+w /sys/kernel/mm/transparent_hugepage/enabled

sudo -u mysql \
	MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
	MYSQL_USER=$MYSQL_USER \
	MYSQL_PASSWORD=$MYSQL_PASSWORD \
	MYSQL_DATABASE=$MYSQL_DATABASE \
	INIT_TOKUDB=1 \
	/entrypoint.sh \
		--character-set-server=utf8 \
		--collation-server=utf8_general_ci \
		--default-time-zone=UTC