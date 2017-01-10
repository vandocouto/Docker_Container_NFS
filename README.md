# NFS 

- Construíndo a imagem (nfs-server).
<pre>
$ sudo docker build -f build/Dockerfile -t nfs-server:1.0.0 .
</pre>

<hr>

- Ponto de montagem do NFS na instância.
<pre>
# mkdir /storage
</pre>

</pre>

- Ajuste o arquivo /etc/exports conforme seu ambiente. Em seguida execute o comando abaixo:
<pre>
# exportfs -a
</pre>
OU

<pre>
# docker exec -it ID exportfs -a
</pre>

<hr>

- Para montar o NFS basta seguir o exemplo abaixo:
<pre>
# mount -t nfs IP:/storage /mnt
</pre>

<hr>

- Para iniciar o container execute o comando abaixo:
<pre>
# ./start.sh
</pre>
