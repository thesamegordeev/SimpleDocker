FROM nginx
USER root
WORKDIR /home/

COPY ./nginx/nginx.conf /etc/nginx/
COPY ./hello_world_server.c /home/
COPY ./start.sh /home/

RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev

CMD ["sh", "./start.sh"]