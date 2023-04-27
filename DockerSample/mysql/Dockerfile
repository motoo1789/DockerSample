FROM ubuntu/mysql:latest

RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

ENV LC_ALL ja_JP.UTF-8

COPY ./mysql/my.cnf /etc/mysql/conf.d/charset.cnf
COPY ./mysql/sqlfiles ./sqlfiles





