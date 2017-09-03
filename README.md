# docker-jenkins
My Jenkins docker container

This container runs a Jenkins which is capable of creating its own Docker images for use as build environments.
It accomplishes this by mapping the host docker to the container, so new containers are owned by the host docker daemon.

Anyone who can access this server will essentially have root privilege to your machine, so consider running this in a VM to protect your data!
