FROM ubuntu:19.04

WORKDIR /root/jupyter-lab/

RUN apt update && apt install -y curl python3-pip
RUN pip3 install jupyterlab

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt install -y nodejs

RUN npm install -g --unsafe-perm ijavascript
RUN ijsinstall --install=global

CMD jupyter lab --port=8888 --ip=0.0.0.0 --allow-root 

EXPOSE 8888
