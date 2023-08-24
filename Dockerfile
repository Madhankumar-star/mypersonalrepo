FROM ubuntu
LABEL name="Maddy"
RUN apt update
RUN apt install default-jdk -y
RUN mkdir maddy
WORKDIR /maddy
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.12/bin/apache-tomcat-10.1.12.tar.gz /maddy
RUN tar -xzvf /maddy/apache-tomcat-10.1.12.tar.gz
WORKDIR /maddy/apache-tomcat-10.1.12/bin
RUN sh shutdown.sh
RUN sh startup.sh

