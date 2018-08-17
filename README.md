## Requirements
- [Docker Community Edition](https://docs.docker.com/install/) (17.09+)
- [Docker Compose](https://docs.docker.com/compose/install/) (1.19+)
- [Git](https://git-scm.com/downloads)

## Install
- Clone poi-env repository
```
git clone https://github.com/mikhalenia/poi-env.git && cd poi-env
```
- Copy "**local.env**" into "**.env**".
```
cp {local,}.env
```
	Open this file and correct necessary parameters.

	Here is a sample how it can look:
```
PATH_TO_MYSQL_DATA=./var/lib/mysql
PATH_TO_REDIS_DATA=./var/lib/redis
MYSQL_ROOT_PASSWORD=root
MYSQL_POI_USER=poi
MYSQL_POI_PASSWORD=poi
MYSQL_POI_DATABASE=poi
LOCAL_POI_SERVER_HTTP_PORT=8080
LOCAL_GRAPHITE_PORT=8081
LOCAL_GRAFANA_PORT=3000
GF_SERVER_ROOT_URL=http://localhost
GF_SECURITY_ADMIN_PASSWORD=grafana
```
- Start Docker Compose
```
docker-compose up
```
REST API will be awailable on http://localhost:8080
Grafana will be awailable on http://localhost:3000
Please login into grafana and add new graphite source which is awailable on http://localhost:8081
Then you can import a [dasboard by REST actions](https://github.com/mikhalenia/poi-env/grafana-dashboard.json)