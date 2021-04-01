# Docker_1337_setup

link to goinfre:

    rm -rf ~/.docker ~/Library/Containers ~/goinfre/DOCKER/.docker ~/goinfre/DOCKER/Containers
    mkdir -p ~/goinfre/DOCKER/.docker
    mkdir -p ~/goinfre/DOCKER/Containers

    ln -s ~/goinfre/DOCKER/.docker ~/.docker
    ln -s ~/goinfre/DOCKER/Containers ~/Library/Containers

install docker && docker-machine:
    brew install docker docker-machine

create the docker-machine:
    docker-machine create -d virtualbox default

use the docker-machine:
    eval $(docker-machine env default)

run apache :
docker run -it -v $PATH:/var/www/html -p 80:80 benaddayoussef/lampdocker:v2

ready...
