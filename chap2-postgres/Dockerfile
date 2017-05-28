FROM postgres

RUN apt-get update
RUN apt-get install postgresql-contrib

COPY createdb.sh /
COPY test-query.sh /
COPY create-datamodel.sql /