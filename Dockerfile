FROM postgres:12-alpine

# ADD scripts/1_init.sql /docker-entrypoint-initdb.d
# RUN chmod a+r /docker-entrypoint-initdb.d/*
# Variables needed at runtime to configure postgres and run the initdb scripts
# ENV POSTGRES_DB ''
# ENV POSTGRES_USER ''
# ENV POSTGRES_PASSWORD ''

# Copy in the load-extensions script
COPY ./zombodb_alpine-3.12_pg12-3000.0.3.x86_64.apk .
RUN apk add --allow-untrusted zombodb_alpine-3.12_pg12-3000.0.3.x86_64.apk
