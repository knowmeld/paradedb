ARG UPSTREAM_IMAGE=paradedb/paradedb:latest-pg18
FROM ${UPSTREAM_IMAGE}

ARG UPSTREAM_IMAGE
ARG PG_MAJOR=18
ARG PARADEDB_VERSION=unknown

USER root
RUN usermod -u 26 postgres && \
    chown -R postgres:postgres /var/lib/postgresql /var/run/postgresql

USER 26

LABEL org.opencontainers.image.version="${PG_MAJOR}" \
      org.opencontainers.image.base.name="${UPSTREAM_IMAGE}" \
      io.paradedb.upstream.version="${PARADEDB_VERSION}" \
      io.paradedb.upstream.postgres.major="${PG_MAJOR}"
