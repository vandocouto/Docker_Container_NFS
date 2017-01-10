# NFS 

# Construíndo a imagem (nfs-server).
<pre>
$ sudo docker build -f build/Dockerfile -t nfs-server:1.0.0 .
</pre>

<hr>

- Ponto de montagem do NFS na instância.
<pre>
# mkdir /storage
</pre>

</pre>

- Para incluir um novo diretório / ip basta alterar o arquivo /etc/exports e em seguida executar o comando abaixo:
<pre>
# exportfs -a
</pre>

<hr>

- Para montar o NFS basta seguir o exemplo abaixo:
<pre>
# mount -t nfs IP:/storage /mnt
</pre>
