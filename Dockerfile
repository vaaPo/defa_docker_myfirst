# Filename: Dockerfile
FROM ubuntu:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
WORKDIR /mydir 
# Install necessary dependencies
RUN apt-get update && apt-get install -y wget 

# Using Ubuntu

# Install app dependencies
RUN touch hello.txt 

# Building application


COPY local.txt . 
RUN wget http://example.com/index.html
