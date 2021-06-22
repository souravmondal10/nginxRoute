FROM ubuntu

MAINTAINER Sourav Mondal "souravmondal10@gmail.com"

RUN apt-get update
RUN apt-get install -y nginx vim curl

COPY ./default.conf /etc/nginx/sites-available/default

CMD nginx -g 'daemon off;' && bash
