FROM monetas/golang-base:2

MAINTAINER Marko Bencun "marko@monetas.net"

ADD install.sh ./
RUN sh install.sh

CMD uid=$(ls -ldn $GOPATH/src/github.com/monetas/ | awk '{print $3}') && \
    useradd -d /home/dev -M -u $uid -s /bin/bash dev && \
    echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/dev && \
    install /home/dev/.bashrc /opt/bashrc && \
    echo "export GOPATH=$GOPATH GOROOT=$GOROOT PATH=$PATH" >> /opt/bashrc && \
    sh /opt/run_services.sh && \
    sudo -i -u dev bash --rcfile /opt/bashrc
