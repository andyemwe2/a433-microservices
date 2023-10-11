#!/bin/bash

# Perintah untuk membuat Docker image dengan nama karsajobs:latest
sudo docker build -t andyemwe2/karsajobs:latest .

# Melihat daftar image di lokal
sudo docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
sudo docker tag andyemwe2/karsajobs:latest ghcr.io/andyemwe2/karsajobs:latest

# Login ke GitHub Packages
echo $CR_PAT | sudo docker login ghcr.io -u andyemwe2 --password-stdin

# Mengunggah image ke GitHub Packages
sudo docker push ghcr.io/andyemwe2/karsajobs:latest
