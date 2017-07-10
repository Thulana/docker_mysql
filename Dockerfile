FROM mysql:5.5

# Environment variables
ENV MYSQL_ROOT_PASSWORD admin

ADD ["sql/dump.sql", "/docker-entrypoint-initdb.d/"]
EXPOSE 3305
#RUN mysql /bin/bash -c "/usr/bin/mysqld_safe &" && \
#  sleep 5 && \ mysql -u root orangehrm_mysql   < /usr/sql/dump.sql


# mysql -h 127.0.0.1 -P 3305 -u root --password=admin < dump.sql
