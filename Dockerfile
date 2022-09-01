FROM postgres:14.3 as postgres-parquet-fdw
LABEL org.opencontainers.image.source="https://github.com/majoomoondoor/postgres-parquet-fdw"
LABEL org.opencontainers.image.description "PostgreSQL with Parquet FDW extension Docker Image"

COPY /docker /usr/local/bin

RUN install-arrow.sh
RUN install-parquet-fdw.sh
RUN remove-unused-packages.sh
