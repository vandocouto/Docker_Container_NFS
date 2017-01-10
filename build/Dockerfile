# imagem default
FROM ubuntu:16.04

# Responsável 
MAINTAINER Evandro Couto "vandocouto@gmail.com"

# update e instalação dos pacotes
RUN apt-get update && \
    apt-get install -y vim htop ifstat iftop net-tools nfs-kernel-server runit inotify-tools && \
    rm -rf /var/lib/apt/lists/*

# Localtime
RUN rm /etc/localtime && \
    ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Storage 
RUN mkdir -p /storage

# Expose ports
EXPOSE 111 2049
EXPOSE 111/udp 2049/tcp 

# Script de inicialização
ADD build/run.sh /run.sh
