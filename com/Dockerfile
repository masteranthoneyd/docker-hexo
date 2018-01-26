FROM ubuntu:18.04

MAINTAINER yangbingdong <yangbingdong1994@gmail.com>

RUN \
    cd /root && \
    apt-get update && \
    apt-get upgrade && \
    apt-get install -y wget git && \
    wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh && \
    export NVM_DIR="$HOME/.nvm" && \
    \. "$NVM_DIR/nvm.sh" && \
    nvm install --lts && \
    echo "nodejs version is: $(node -v) and npm version is $(npm -v)" && \
    npm install -g hexo-cli && \
    hexo init hexo && \
    cd hexo && \
    npm install && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /root/hexo

VOLUME ["/root/hexo/source/_posts"]

EXPOSE 4000

CMD ['hexo','-s']
