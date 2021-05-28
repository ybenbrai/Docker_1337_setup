#!/bin/sh

echo "$(tput setaf 1)deleting existing Docker Containers!"
rm -rf ~/.docker ~/Library/Containers ~/goinfre/DOCKER/.docker ~/goinfre/DOCKER/Containers
echo "$(tput setaf 1)Creating Docker Folder in the goinfre!"
mkdir -p ~/goinfre/DOCKER/.docker
echo "$(tput setaf 1)Creating Containers folder in the goinfre!"
mkdir -p ~/goinfre/DOCKER/Containers
echo "$(tput setaf 1)Creating shortcut for Docker folder in the home!"
ln -s ~/goinfre/DOCKER/.docker ~/.docker
echo "$(tput setaf 1)Creating shortcut for containers folder!"
ln -s ~/goinfre/DOCKER/Containers ~/Library/Containers
echo "$(tput setaf 1)install docker && docker-machine from Brew..."
brew install docker docker-machine
echo "$(tput setaf 1)creating a Docker machine named default..."
docker-machine create -d virtualbox default
echo "$(tput setaf 1)switch to the docker machine!"
eval $(docker-machine env default)
echo "$(tput setaf 1)Creating the websites folder in the Desktop!"
mkdir /Users/ybenbrai/Desktop/Web
echo "$(tput setaf 1)run the container and link it with the folder in desktop!"
docker run -it -v /Users/ybenbrai/Desktop/Web:/var/www/html -p 80:80 benaddayoussef/lampdocker:v2
echo "$(tput setaf 1)your container of webserver is ready to go !! :]"


