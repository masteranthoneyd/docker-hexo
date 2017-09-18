FROM ubuntu:latest

ENV BLOG_PATH /root/blog
ENV NODE_VERSION 6

MAINTAINER yangbingdong , yangbingdong1994@gmail.com

RUN \
    apt-get update -y && \
    apt-get install -y git curl libpng-dev && \
    curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
	apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    npm install -g hexo-cli

WORKDIR $BLOG_PATH

VOLUME ["$BLOG_PATH", "/root/.ssh"]

EXPOSE 4000

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ['/bin/bash']
