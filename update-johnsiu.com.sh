#!bash

docker run --rm --network host \
-v CADDY_WWW:/www \
-e P_TZ=America/New_York \
-e MY_GIT_URL=https://github.com/J-Siu/johnsiu.com.git \
-e MY_GIT_SUB=true \
-e MY_GIT_DIR=/www/repo/johnsiu.com \
-e MY_PUB_DIR=/www/site/johnsiu.com \
jsiu/hugo --cleanDestinationDir --minify
