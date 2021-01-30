# scrapyd-docker

```
docker run -d --name scrapyd \
--restart always \
-v $PWD:/data/ \
-p 127.0.0.1:6800:6800 \
scrapyd
```
