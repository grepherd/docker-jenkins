FROM jenkins/jenkins

USER root
RUN apt-get update && apt-get install sudo 
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# RUN curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
RUN groupadd -g 131 docker && usermod -a -G docker jenkins 

USER jenkins
RUN newgrp docker