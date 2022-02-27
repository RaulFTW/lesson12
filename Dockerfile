FROM ubuntu:20.04

ENV TZ=Asia/Tashkent
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y tzdata git curl default-jdk maven


RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git /usr/local/
RUN cd /usr/local/App42PaaS-Java-MySQL-Sample && mvn package
