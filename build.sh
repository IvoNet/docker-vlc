#!/usr/bin/env bash
image=vlc
version=0.2

deploy="false"
#deploy="true"
versioning=false
#versioning=true

#OPTIONS="--no-cache --force-rm"
#OPTIONS="--no-cache"
#OPTIONS="--force-rm"
#OPTIONS="-$OPTIONS --build-arg VERSION=18.04"

docker build ${OPTIONS} -t ivonet/${image}:latest .
if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
    docker push ivonet/${image}:latest
fi

if [ "$versioning" == "true" ]; then
    docker tag ivonet/${image}:latest ivonet/${image}:${version}
    if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
        docker push ivonet/${image}:${version}
    fi
fi



