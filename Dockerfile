FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y ansible nano git iproute2 curl
WORKDIR /ansible
COPY . /ansible
