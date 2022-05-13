#!bash

# $1 = sk theme number

docker run --rm --network host \
-v CADDY_WWW:/www \
-e P_TZ=America/New_York \
-e MY_GIT_URL=https://github.com/J-Siu/hugo-theme-sk${1}.git \
-e MY_GIT_SUB=true \
-e MY_GIT_DIR=/www/repo/sk${1} \
-e MY_PUB_DIR=/www/site/sk${1}.jsiu.dev \
-e MY_HUG_DIR=exampleSite \
jsiu/hugo --cleanDestinationDir --minify \
--theme sk${1} \
--themesDir ../../ \
--config config.toml,../config.demo.toml
