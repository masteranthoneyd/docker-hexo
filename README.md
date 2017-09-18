# How to use?
```
docker run -itd --name ubuntu-hexo -p 4000:4000 \ 
 -v /home/ybd/git-repo/blog:/root/blog -v /home/ybd/.ssh:/root/.ssh \ 
yangbingdong/ubuntu-hexo:1.0.2 /bin/bash
```
##### Then you can use hexo command in this container
```
docker exec -it $container /bin/bash

# insite container
hexo server
```
