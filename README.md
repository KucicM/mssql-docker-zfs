# mssql-docker-zfs (MSSQL 2019)
Hack to run the mssql-docker containers with a zfs filesystem mounted as data dir.

Allows mounting volumes and tmpfs to a docker container.

Since the MSSQL version from 2019 runs with non-root user, this hack is still necessary.

Original [source](https://github.com/t-oster/mssql-docker-zfs).