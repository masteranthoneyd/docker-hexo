FROM ubuntu:16.04

ENV GIT_USER_NAME=yangbingdong GIT_USER_MAIL=yangbingdong1994@gmail.com BLOG_PATH=/root/blog

MAINTAINER $GIT_USER_NAME , $GIT_USER_MAIL

RUN \
    apt-get update -y && \
    apt-get install -y git curl libpng-dev && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    git config --global user.name $GIT_USER_NAME && \
    git config --global user.email $GIT_USER_MAIL && \
    npm install -g hexo-cli

WORKDIR $BLOG_PATH

VOLUME ["$BLOG_PATH", "/root/.ssh"]

EXPOSE 4000

CMD ['/bin/bash']
