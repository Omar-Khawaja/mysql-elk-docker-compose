FROM mysql:8.0

COPY ./mysql.cnf /etc/mysql/conf.d/

COPY ./setup.sql /docker-entrypoint-initdb.d/
