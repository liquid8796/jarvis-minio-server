FROM heroku/heroku:20

ADD entrypoint.sh /entrypoint.sh

RUN mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio

CMD /entrypoint.sh
