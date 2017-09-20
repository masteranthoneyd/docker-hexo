# How to use?
## Tag latest
```
docker run -itd --name hexo -p 4000:4000 \
-e GIT_USER_NAME=your_git_username \
-e GIT_USER_MAIL=your_git_mail \ 
-v <hexo dir>:/root/blog \
-v <your .ssh dir>:/root/.ssh \ 
yangbingdong/docker-hexo:latest \
/bin/bash
```

## Tag without-root
```
docker run -itd --name hexo -p 4000:4000 \
-e NEW_USER_NAME=your_user_name \
-e GIT_USER_NAME=your_git_username \
-e GIT_USER_MAIL=your_git_mail \ 
-v <hexo dir>:/home/hexo/blog \
-v <your .ssh dir>:/home/hexo/.ssh \ 
yangbingdong/docker-hexo:without-root
```

##### Then you can use hexo command in this container
```
docker exec -it $container /bin/bash

## insite container
hexo server
```

## Environment variables

- GIT_USER_NAME: your git user name

- GIT_USER_MAIL: your git user mail

- NEW_USER_NAME: your user name

## Node version

- tag latest: node 6
- tag without-root: node 8.x









