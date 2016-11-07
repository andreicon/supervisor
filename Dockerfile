FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu xenial main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install supervisor
RUN mkdir -p /var/log/supervisor
RUN mkdir -p /etc/supervisor/conf.d

ADD supervisor.conf /etc/supervisor.conf

CMD supervisord -c /etc/supervisor.conf
