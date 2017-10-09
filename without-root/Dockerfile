FROM ubuntu:latest

MAINTAINER yangbingdong <yangbingdong1994@gmail.com>

ENV \
    USER_NAME=hexo \
    NODE_VERSION=8.5.0 \
    NODE_DIR=/home/${USER_NAME}/nodejs

RUN \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y libpng-dev && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    useradd -m -U ${USER_NAME} && \
    mkdir ${NODE_DIR} && \
    curl -L https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xvzf - -C ${NODE_DIR} --strip-components=1 && \
    chown -R ${USER_NAME}.${USER_NAME} ${NODE_DIR} && \
    ln -s ${NODE_DIR}/bin/node /usr/local/bin/node && \
    ln -s ${NODE_DIR}/bin/npm /usr/local/bin/npm && \
    su - ${USER_NAME} -c "npm install -g hexo-cli" && \
    ln -s ${NODE_DIR}/bin/hexo /usr/local/bin/hexo && \
    npm config set registry https://registry.npm.taobao.org/

WORKDIR /home/${USER_NAME}/blog

VOLUME ["/home/${USER_NAME}/blog", "/home/${USER_NAME}/.ssh"]

EXPOSE 4000

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ['/bin/bash']

