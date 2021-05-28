#!/bin/sh

echo "deleting existing Docker Containers\n"
rm -rf ~/.docker ~/Library/Containers ~/goinfre/DOCKER/.docker ~/goinfre/DOCKER/Containers
echo "Creating Docker Folder in the goinfre\n"
mkdir -p ~/goinfre/DOCKER/.docker
echo "Creating Containers folder in the goinfre\n"
mkdir -p ~/goinfre/DOCKER/Containers
echo "Creating shortcut for Docker folder in the home\n"
ln -s ~/goinfre/DOCKER/.docker ~/.docker
echo "Creating shortcut for containers folder\n"
ln -s ~/goinfre/DOCKER/Containers ~/Library/Containers
echo "install docker && docker-machine from Brew\n"
brew install docker docker-machine
echo "creating a Docker machine named default\n"
docker-machine create -d virtualbox default
echo "switch to the docker machine"
eval $(docker-machine env default)
echo "Creating the websites folder in the Desktop"
mkdir /Users/ybenbrai/Desktop/Web
echo "run the container and link it with the folder in desktop"
docker run -it -v /Users/ybenbrai/Desktop/Web:/var/www/html -p 80:80 benaddayoussef/lampdocker:v2
echo "your container of webserver is ready to go"


