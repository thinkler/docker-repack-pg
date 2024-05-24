FROM postgres:16

RUN apt-get update --fix-missing && \
    apt-get install -y postgresql-server-dev-$PG_MAJOR wget openssh-server

COPY entry.sh .
RUN chmod +x ./*.sh && bash ./entry.sh
