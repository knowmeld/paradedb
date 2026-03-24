FROM paradedb/paradedb:latest-pg18

USER root
RUN usermod -u 26 postgres && \
    chown -R postgres:postgres /var/lib/postgresql /var/run/postgresql

USER 26

LABEL org.opencontainers.image.version="18"
