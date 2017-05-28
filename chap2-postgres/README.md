# Scripts

 * `build.sh`: build docker image seven/ch2-psql off of postgres
 * `run.sh`: start docker image seven/ch2-psql, which uses /docker-entrypoint-initdb.d/create-datamodel.sql to provision the image
 * `clean.sh`: remove image seven/ch2-psql
 * `connect.sh`, and `psql.sh`: open bash prompt, or psql prompt

# Commands

 * `./build.sh && ./run.sh`

# Files

 * `create-datamodel.sql`
 * `queries.sql`