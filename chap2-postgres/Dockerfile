FROM postgres

RUN apt-get update
RUN apt-get install postgresql-contrib

ENV POSTGRES_USER book
COPY guest/create-datamodel.sql /docker-entrypoint-initdb.d/

COPY guest /