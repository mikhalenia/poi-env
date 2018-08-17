FROM node:8.11

COPY ./src /opt/poiServer/

COPY ./entrypoint.sh /

RUN apt-get update && \
    apt-get install -y \
        curl \
        git \
        libmysqlclient18 \
        mysql-client && \
    git clone https://github.com/vishnubob/wait-for-it.git /opt/wait-for-it && \
    ln -s /opt/wait-for-it/wait-for-it.sh /usr/local/bin/wait-for-it && \
    cd /opt/poiServer && npm install && \
    chmod +x \
        /opt/poiServer/server.js \
        /entrypoint.sh

EXPOSE 80