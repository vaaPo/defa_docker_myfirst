# Filename: Dockerfile
FROM ubuntu:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
WORKDIR /mydir 
# Install necessary dependencies
RUN apt-get update && apt-get install -y wget 
RUN apt-get install -y curl python 
# Using Ubuntu curl the application
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl 

# Install app dependencies
RUN touch hello.txt 
COPY local.txt . 
RUN wget http://example.com/index.html

# Building application
RUN chmod a+x /usr/local/bin/youtube-dl 
ENV LC_ALL=C.UTF-8 

# for docker run
# CMD ["/usr/local/bin/youtube-dl"] 
## CMD wont work but ENTRYPOINT defines main executable and joins parms with it
ENTRYPOINT ["/usr/local/bin/youtube-dl"] 



