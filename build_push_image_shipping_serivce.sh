#!/bin/bash

# Perintah untuk membuat Docker image dengan nama shipping-service:latest
sudo docker build -t andyemwe2/shipping-service:latest .

# Melihat daftar image di lokal
sudo docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
sudo docker tag andyemwe2/shipping-service:latest ghcr.io/andyemwe2/shipping-service:latest

# Login ke GitHub Packages
echo "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" | sudo docker login ghcr.io -u andyemwe2 --password-stdin

# Mengunggah image ke GitHub Packages/
sudo docker push ghcr.io/andyemwe2/shipping-service:latest