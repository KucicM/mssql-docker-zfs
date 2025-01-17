#You can use this directly as your mssql-container, or just use it to create the nodirect_open.so file
#for using with an existing container like shown in docker-compose.yml
FROM mcr.microsoft.com/mssql/server:2019-latest
USER root
ADD nodirect_open.c /
RUN apt-get update && apt-get install -y gcc && \
gcc -shared -fpic -o /nodirect_open.so nodirect_open.c -ldl && \
apt-get purge -y gcc && \
echo "/nodirect_open.so" >> /etc/ld.so.preload
