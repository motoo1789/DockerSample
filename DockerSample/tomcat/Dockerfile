FROM tomcat:9.0.65-jre8

RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

COPY ./tomcat/KIfU4.war /usr/local/tomcat/webapps