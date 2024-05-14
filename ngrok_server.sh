#!/bin/bash

echo "Expondo endereço ipv4..."
echo "Rodando instância do ngrok via docker..."
ipv4_addr=`ifconfig | grep 'inet' | awk '{print $2}' | grep '192.168'`

docker stop ngrok
docker rm ngrok
docker run --name ngrok -it -e NGROK_AUTHTOKEN=token ngrok/ngrok tcp $ipv4_addr:25565
