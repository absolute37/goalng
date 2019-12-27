FROM mongo:4.0.10

COPY ["entrypoint.sh", "/root/"]
COPY ["data_json/*", "/data/db_import/"]

RUN chmod +x /root/entrypoint.sh

CMD ["mongod"]