#!/bin/bash
registry=registry.rancher.metrica.se
repo=${PWD##*/}
tag=latest
docker login $registry &&
docker build -t $repo . &&
docker tag $repo $registry/$repo:$tag &&
docker push $registry/$repo:$tag
