FROM ubuntu:latest

#Author: Anil
MAINTAINER Anil

#Install Apache
RUN apt-get update && \
    apt-get install -y apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#Adding CMD command
CMD ["echo","Docker CMD command demo"]

#Adding ENTRYPOINT command
ENTRYPOINT ["echo","Docker ENTRYPOINT demo"]
