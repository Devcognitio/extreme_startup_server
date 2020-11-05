#!/bin/sh

#Instalacion JAVA en EC2 Linux, si usas otra AMI, ver: https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/generic-linux-install.html
sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
sudo yum install -y java-11-amazon-corretto-devel

./gradlew build
docker build -t extreme_startup_server .