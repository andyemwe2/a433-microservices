#!/bin/bash

# Perintah untuk membuat Docker image dengan nama item-app dan tag v1
sudo docker build -t item-app:v1 .

# Melihat daftar image di lokal
sudo docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
sudo docker tag item-app:v1 ghcr.io/andyemwe2/item-app:v1

# Login ke GitHub Packages
echo $CR_PAT | sudo docker login ghcr.io -u andyemwe2 --password-stdin

# Mengunggah image ke GitHub Packages
sudo docker push ghcr.io/andyemwe2/item-app:v1
