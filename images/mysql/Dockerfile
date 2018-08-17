FROM percona/percona-server:5.7

USER root

COPY config/my.cnf /etc/mysql/

COPY poi-mysql-entrypoint.sh /

RUN apt-get update && \
	apt-get install sudo && \
	chmod +x /poi-mysql-entrypoint.sh

ENTRYPOINT ["/poi-mysql-entrypoint.sh"]

EXPOSE 3306