#!/bin/bash

sudo docker build -t grepherd/jenkins .
sudo docker run -d -p 49001:8080 -v $PWD/serverDir:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -t grepherd/jenkins
