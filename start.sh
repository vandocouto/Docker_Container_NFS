#!/bin/bash

# Carregando os módulos 
modprobe nfs
modprobe nfsd

# Variaveis.
HOSTNAME="nfs-server"
IMAGE="docker.icasei.com.br/nfs-server:1.0.0"

# Removendo o Container morto.
docker rm -f $(docker ps -aq --filter "name=$HOSTNAME") >> /dev/null 2>&1

# Iniciando o Container novo.
docker run -itd \
--privileged \
--volume=/storage:/storage \
--volume=`pwd`/exports:/etc/exports \
--publish=2049:2049 \
--publish=2049:2049/udp \
--restart=always \
--name=$HOSTNAME \
$IMAGE /bin/bash

# Recebendo o ID do novo container.
id=$(docker ps -q --filter "name=$HOSTNAME")
echo $id

# Iniciando o NFS
docker exec -it $id ./run.sh
