FROM ubuntu:latest

MAINTAINER yangbingdong , yangbingdong1994@gmail.com

USER root

ENV USER_NAME ybd
ENV NODE_VERSION 8.5.0
ENV NODE_DIR /home/${USER_NAME}/nodejs

RUN \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y libpng-dev && \
    groupadd $USER_NAME && \
    useradd -m -g $USER_NAME ${USER_NAME} && \
    apt-get clean && \
	apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER ${USER_NAME}
RUN \
    mkdir ${NODE_DIR} && \
    curl -L https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xvzf - -C ${NODE_DIR} --strip-components=1

USER root
RUN \
    ln -s ${NODE_DIR}/bin/node /usr/local/bin/node && \
    ln -s ${NODE_DIR}/bin/npm /usr/local/bin/npm

USER ${USER_NAME}
RUN npm install -g hexo-cli

USER root

WORKDIR /home/${USER_NAME}/blog

RUN ln -s ${NODE_DIR}/bin/hexo /usr/local/bin/hexo && chmod -R 777 /home/${USER_NAME}/blog

VOLUME ["/home/${USER_NAME}/blog", "/home/${USER_NAME}/.ssh"]

USER ${USER_NAME}

RUN npm config set registry https://registry.npm.taobao.org/

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ['/bin/bash']

