FROM monetas/golang-base:1

MAINTAINER Filip Gospodinov "filip@monetas.net"

ADD install.sh ./
RUN sh install.sh

CMD uid=$(ls -ldn $GOPATH/src/github.com/monetas/ | awk '{print $3}') && \
    useradd -d /home/dev -M -u $uid -s /bin/bash dev && \
    install /home/dev/.bashrc /opt/bashrc && \
    echo "export GOPATH=$GOPATH GOROOT=$GOROOT PATH=$PATH" >> /opt/bashrc && \
    sudo -i -u dev bash --rcfile /opt/bashrc
