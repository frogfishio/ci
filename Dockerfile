FROM node:lts
RUN apt-get update
RUN apt-get install -y python3-pip jq
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v1.15.4/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
RUN chmod 777 /usr/local/bin/kubectl
RUN pip3 install awscli
RUN npm install -g gulp typescript mocha @angular/cli npm@latest
CMD sh
