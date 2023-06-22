FROM --platform=linux/amd64 ubuntu:18.04

ADD https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.0.01.zip /tmp

RUN apt update && apt install -y unzip libcurl4
RUN unzip /tmp/bedrock-server-1.20.0.01.zip -d /bedrock-server-1
RUN chmod +x /bedrock-server-1/bedrock_server

WORKDIR /bedrock-server-1

ENV LD_LIBRARY_PATH=.

CMD ./bedrock_server