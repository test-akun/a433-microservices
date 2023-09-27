#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 ghcr.io/test-akun/item-app:v1

# Login ke Docker Hub
echo $CR_PAT | docker login ghcr.io -u test-akun --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/test-akun/item-app:v1
