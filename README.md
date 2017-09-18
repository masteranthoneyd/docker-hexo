# How to use?
```
docker run -itd --name ubuntu-hexo -p 4000:4000 \
-e GIT_USER_NAME=your_git_username \
-e GIT_USER_MAIL=your_git_mail \ 
-v /home/ybd/git-repo/blog:/root/blog \
-v /home/ybd/.ssh:/root/.ssh \ 
yangbingdong/ubuntu-hexo:latest \
/bin/bash
```
##### Then you can use hexo command in this container
```
docker exec -it $container /bin/bash

# insite container
hexo server
```

# Environment variables

- GIT_USER_NAME: your git user name
- GIT_USER_MAIL: your git user mail