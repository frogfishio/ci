# Frogfish CI

Use this instead of standard Bitbucket pipelines container as this one contains:

* NodeJS 12
* aws tools
* kubectl

And all you need to build and deploy NodeJS microservices (and other K8S apps)

https://github.com/frogfishio/ci

Dockerfile:

~~~~
FROM node:lts
RUN apt-get update
RUN apt-get install -y python3-pip 
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v1.17.4/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
RUN chmod 777 /usr/local/bin/kubectl
RUN pip3 install awscli
RUN npm install -g gulp typescript mocha @angular/cli npm@latest
CMD sh
~~~~